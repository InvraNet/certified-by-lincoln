#!/bin/bash

if [ -f ./certified-by-lincoln ]; then
    echo "Moving compiled app to /usr/bin (sudo is required)."
    sudo mv ./certified-by-lincoln /usr/bin/
else
    read -p "File is not compiled. Do you want to compile it now? (y/n): " answer
    if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
        g++ -o certified-by-lincoln main.cpp
        if [ $? -eq 0 ]; then
            echo "Compilation successful. Moving compiled app to /usr/bin (sudo is required)."
            sudo mv ./certified-by-lincoln /usr/bin/
        else
            echo "Compilation failed. Exiting."
            exit 1
        fi
    else
        echo "Exiting without compilation."
        exit 1
    fi
fi

echo "Installation completed successfully."
