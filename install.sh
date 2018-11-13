#!/bin/bash

set -e 

function setup_git() {
    echo 'Setting up git config...'
    read -p 'Enter Github username: ' GIT_USER
    git config --global user.name "$GIT_USER"
    read -p 'Enter email: ' GIT_EMAIL
    git config --global user.email $GIT_EMAIL
    git config --global core.editor vim
    echo 'Add GitHub access token ?:'
    echo '(1) Yes'
    echo '(2) No'
    read -p 'Enter a number: ' SHELL_CHOICE
    if [[ $SHELL_CHOICE == '1' ]] ; then
        read -p 'Enter GitHub access token ' GIT_ACCESS_TOKEN
        echo "machine github.com login $GIT_USER password $GIT_ACCESS_TOKEN" > ~/.netrc
    fi
}


function setup_vim() {
    sudo apt-get install vim
    sudo git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    sudo cp vimrc ~/.vimrc
    sudo touch ~/.vimrc
    sudo vim +PluginInstall +qall
}

echo "apt-get update..."
sudo apt-get update

echo "setup git.."
setup_git

echo "setup vim.."
setup_vim

echo "Done !"
