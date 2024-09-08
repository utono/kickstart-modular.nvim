#!/bin/bash

# Declare an associative array for storing Neovim commands and their comments
declare -A nvim_commands

# Add commands to the array with their associated comments
nvim_commands[":w"]="Write the current buffer to disk"
nvim_commands[":q"]="Quit Neovim"
nvim_commands[":wq"]="Write the current buffer and quit Neovim"
nvim_commands[":e ~/.config/nvim/init.lua"]="Edit the Neovim init.lua configuration file"
nvim_commands[":so %"]="Source the current file in Neovim"
nvim_commands[":@:"]="Repeat the last :Ex command"
nvim_commands[":echo @:"]="Show the last :Ex command"
