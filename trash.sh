#!/bin/bash

echo "Select your project type."
echo "r, rust -> rust lang"
echo "c, C    -> c    lang"

echo -n ">"

today=$(date +%Y-%m-%d-%H-%M)

while read line; do
    if [ "$line" = "r" ] || [ "$line" = "rust" ]; then
        echo "Create Rust Project"
        echo "Type your project name. If input is None, project name will Today date."
        echo -n ">"
        read name
        if [ "$name" = "" ]; then
            echo $today
            cargo new rust-$today
        else
            echo $name
            cargo new $name
        fi
        break
    fi
    if [ "$line" = "c" ] || [ "$line" = "C" ]; then
        echo "Create C Lang Project"
        echo "Type your project name. If input is None, project name will Today date."
        echo -n ">"
        read name
        if [ "$name" = "" ]; then
            echo $today
            mkdir c-$today
            touch c-$today/main.c
        else
            echo $name
            echo $name
            mkdir $name
            touch $name/main.c
        fi
        break
    fi
done
