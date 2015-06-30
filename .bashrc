# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

export LANG=C
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=C

#User specific aliases and functions
export PYCURL_SSL_LIBRARY=nss
export SVN_EDITOR=vim
export EDITOR=vim

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# pro
os=$(uname)
if [ "Darwin" == $os ]
then
    alias ls='ls -G'
else
    alias ls='ls --color'
fi
alias ll='ls -l'
alias la='ls -Aalth'
alias l='ls -CF'
alias lt='ls -lth'
alias tf='tail -f'
alias grep='grep --color=always'
alias tree='tree -C'
alias rscp='rsync -v -P -e ssh'
alias wget='wget -c'


## Parses out the branch name from .git/HEAD:
find_git_branch () {
    local dir=. head
    until [ "$dir" -ef / ]; do
        if [ -f "$dir/.git/HEAD" ]; then
            head=$(< "$dir/.git/HEAD")
            if [[ $head = ref:\ refs/heads/* ]]; then
                git_branch="->${head#*/*/}"
            elif [[ $head != '' ]]; then
                git_branch="->(detached)"
            else
                git_branch="->(unknow)"
            fi
            return
        fi
        dir="../$dir"
    done
    git_branch=''
}
PROMPT_COMMAND="find_git_branch; $PROMPT_COMMAND"
# Here is bash color codes you can use
  black=$'\[\e[1;30m\]'
    red=$'\[\e[1;31m\]'
  green=$'\[\e[1;32m\]'
 yellow=$'\[\e[1;33m\]'
   blue=$'\[\e[1;34m\]'
magenta=$'\[\e[1;35m\]'
   cyan=$'\[\e[1;36m\]'
  white=$'\[\e[1;37m\]'
 normal=$'\[\e[m\]'


function straceall {
    strace $(pidof "${1}" | sed 's/\([0-9]*\)/-p \1/g')
}

# 加入 git  自动补齐
if [[ -f "$HOME/work-profile/git-completion.bash" ]]; then
    source $HOME/work-profile/git-completion.bash
fi

# 设置文件系统掩码
umask 0022

PS1="[\[\033[01;32m\]\u\[\033[00m\]\[\033[31;40m\]@\[\033[00m\]\[\033[36;40m\]\h\[\033[00m\]:\[\033[35;40m\]\w\[\033[00m\]]$yellow\$git_branch$white\$ $normal"
# User specific aliases and functions
