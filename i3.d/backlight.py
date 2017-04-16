#!/usr/bin/env python3


from argparse import ArgumentParser
from subprocess import check_output
from sys import argv
from os import system


def commandline(args):

    parser = ArgumentParser(description='Changeing backlight')

    parser.add_argument("-i", "--inc",
                        help="Increase",
                        action="store_true")

    parser.add_argument("-d", "--dec",
                        help="Decrease",
                        action="store_true")

    parser.set_defaults(verbose=False)

    return parser.parse_args(args)


def set_brightness(n):

    system("xrandr --output LVDS --brightness {:0.2f}".format(n))


def get_brightness():

    cmd = "xrandr --verbose | grep -m 1 -i brightness | cut -f2 -d ' '",
    xrandr_get = check_output(cmd, shell=True)

    return float(xrandr_get.decode("utf-8").strip())


def main(args):

    increase = args.inc
    decrease = args.dec

    backlight = get_brightness()

    if increase and backlight < 1:
        backlight = backlight + 0.1
        set_brightness(backlight)

    if decrease and backlight > 0.1:
        backlight = backlight - 0.1
        set_brightness(backlight)

if __name__ == "__main__":

    args = commandline(argv[1:])
    main(args)
