#!/bin/bash

# Define the custom text
custom_text="Jenkins-rpm"

# Define the line to add to /etc/bashrc
line_to_add="PS1=\"\${PS1}\\[\\033[0;31m\\]${custom_text} > \\[\\033[0m\\]\""

# Check if the line already exists in /etc/bashrc
if grep -Fq "${line_to_add}" /etc/bashrc; then
    echo "The PS1 modification is already present in /etc/bashrc."
else
    # If the line is not present, append it to /etc/bashrc
    echo "Appending PS1 modification to /etc/bashrc."
    echo "${line_to_add}" |tee -a /etc/bashrc > /dev/null
fi
