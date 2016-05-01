#Lists my Todo list whenever I login

TODO_FILE="/home/markus/CloudStation/Notes/notes.org"

if [ ! -a $TODO_FILE ]; then
    echo -e "        \033[0;34mTasks\033[0m"
    grep --color "** TODO" $TODO_FILE
    echo ""
fi
