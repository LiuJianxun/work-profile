#!/bin/bash
# @describe:
# @author:   Jerry Yang(hy0kle@gmail.com)

#set -x

cp .gitconfig ~/ && cp .bash_profile ~/ && cp .bashrc ~/ && cp .inputrc ~/ && cp .vimrc ~/ && . ~/.bashrc

if [[ 0 == $? ]]
then
    echo "Good job. 请执行以下命令开启装逼模式"
    echo ". ~/.bashrc"
else
    echo "装逼失败,再等等吧"
fi
