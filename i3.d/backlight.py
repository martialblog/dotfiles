#!/usr/bin/env python3


from argparse import ArgumentParser
from subprocess import check_output
from sys import argv, exit
from os import system


def commandline():

    parser = ArgumentParser(description='Script to adjust backlight from console')

    parser.add_argument("-i", "--inc",
                        help="Increase backlight level 0.1",
                        action="store_true")

    parser.add_argument("-d", "--dec",
                        help="Decrease backlight level 0.1",
                        action="store_true")

    parser.add_argument("-p", "--pri",
                        help="Print current backlight level",
                        action="store_true")

    return parser.parse_args()


def set_brightness(n):

    system("xrandr --output eDP-1 --brightness {:0.2f}".format(n))


def get_brightness():

    cmd = "xrandr --verbose | grep -m 1 -i brightness | cut -f2 -d ' '",
    xrandr_get = check_output(cmd, shell=True)

    return float(xrandr_get.decode("utf-8").strip())


def main(args):

    increase = args.inc
    decrease = args.dec
    print_it = args.pri

    backlight = get_brightness()

    if print_it:
        print("BRI {0}%".format(int(backlight*100)))
        exit(0)

    if increase and backlight < 1:
        backlight = backlight + 0.1
        set_brightness(backlight)
        exit(0)

    if decrease and backlight > 0.1:
        backlight = backlight - 0.1
        set_brightness(backlight)
        exit(0)

if __name__ == "__main__":

    args = commandline()
    main(args)
