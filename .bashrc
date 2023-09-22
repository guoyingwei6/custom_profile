# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#    . /etc/bash_completion
#fi



#edit by gyw

# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
export PS1="\[\e[31;1m\]Aliyun \[\e[35;1m\]\h \[\e[34;1m\]\u \[\e[36;1m\]\d \t \[\e[32;1m\]\$PWD/ (\$(ls -A|wc -l))\[\e[0m\] \n\[\e[0m\]\[\e[33;1m\]\$\[\e[0m\]"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# alias set by gyw
alias ch="chmod +x"
alias les="less -S"             # 不换行显示
alias kes="less -S"
alias la='ls -Al'               # 显示隐藏文件
alias ls='ls -hF --color'   # 为识别的文件类型添加颜色
alias lk='ls -lSr'              # 按尺寸排序
alias lr='ls -lR'               # 递归ls
alias lt='ls -ltr'              # 按日期排序
alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'
alias h="history | less"
alias wl="wc -l"
alias vb="vi ~/.bashrc"
alias sb="source ~/.bashrc"
alias vv="vi ~/.vimrc"
alias untar="tar -zxf"
alias l='ls -lthr --color=auto'
alias lll='ls -althr'
alias lss='ls -s --color'
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"
alias rm="rm -I"
alias ct="cleartrash"
alias CAT="cat -A"
alias mv="mv -i"
alias cp="cp -i"
alias cdl='function __cdl(){ if [ $# == 1 ]; then cd $1; ls -al; unset -f __cdl; fi }; __cdl'
alias cdls='function __cdls(){ if [ $# == 1 ]; then cd $1; ls; unset -f __cdls; fi }; __cdls'
alias cdlss='function __cdlss(){ if [ $# == 1 ]; then cd $1; ls -s; unset -f __cdlss; fi }; __cdlss'
alias mkcd='function __mkcd(){ if [ $# == 1 ]; then mkdir $1; cd $1; unset -f __mkcd; elif [ $# == 2 ]; then mkdir $1 $2; cd $2; unset -f __mkcd; fi }; __mkcd'
alias sc="screen"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/guoyingwei/software/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/guoyingwei/software/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/guoyingwei/software/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/guoyingwei/software/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

