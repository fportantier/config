#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias l='ls --color=auto -lh'
alias ..='cd ..'
alias ~='cd ~'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias gdb='gdb -q'
alias treepy='tree -I "*cache*|*egg-info*|*dist*|*.pyc"'
alias push='git add --all .; git commit; git push'

PS1='[\u@\h \W]\$ '
export PS1="[\[$(tput sgr0)\]\[\033[38;5;31m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;2m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]]\\$\[$(tput sgr0)\] "

export WORKON_HOME=~/.python-envs
source /usr/bin/virtualenvwrapper.sh

export TERM=xterm-256color
export PATH=$PATH:~/bin

eval `dircolors ~/config/dircolors`

# Make vim the default editor
export EDITOR="vim"

# Ignore duplicate commands in the history
export HISTCONTROL=ignoredups

# Increase the maximum number of lines contained in the history file
export HISTFILESIZE=10000

# Increase the maximum number of commands to remember
export HISTSIZE=1000

# Don't clear the screen after quitting a manual page
export MANPAGER="less -X"

# Make new shells get the history lines from all previous
# shells instead of the default "last window closed" history
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Check the window size after each command and, if necessary, update the values
# of LINES and COLUMNS.
shopt -s checkwinsize

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# For bash/vim solarized colors
xrdb -merge ~/config/Xresources

for f in $(ls -1 ~/.python-envs/habu/bin/habu.* 2> /dev/null)
do
    alias $(basename $f)="~/.python-envs/habu/bin/$f"
done

export VIRTUALENVWRAPPER_WORKON_CD=0

export QT_QPA_PLATFORMTHEME=qt5ct

# Enable incremental history search with up/down arrows (also Readline goodness)
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'

# Prepend cd to directory names automatically
shopt -s autocd 2> /dev/null
# Correct spelling errors during tab-completion
shopt -s dirspell 2> /dev/null
# Correct spelling errors in arguments supplied to cd
shopt -s cdspell 2> /dev/null

