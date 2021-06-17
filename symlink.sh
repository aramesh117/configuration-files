#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

ln -fs "$SCRIPT_DIR/.aliases" ~/.aliases
ln -fs "$SCRIPT_DIR/.zshrc" ~/.zshrc
ln -fs "$SCRIPT_DIR/.vars" ~/.vars
ln -fs "$SCRIPT_DIR/.zshrc_settings" ~/.zshrc_settings
ln -fs "$SCRIPT_DIR/.tmux.conf" ~/.tmux.conf
ln -fs "$SCRIPT_DIR/.gitconfig" ~/.gitconfig
ln -fs "$SCRIPT_DIR/.gitmessage" ~/.gitmessage
ln -fs "$SCRIPT_DIR/.vimrc" ~/.vimrc
