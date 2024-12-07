# This file contains examples of some of the things you may want to
# include in a user startup file.

# handle bash/zsh SHLVL variable
(( SHLVL++ ))

# skip this setup for non-interactive shells
[[ -o interactive && -t 0 ]] || return

# disable core dumps
ulimit -c 0

# Environment variables. These could go in .profile if you prefer
export VISUAL=nano
export EDITOR=$VISUAL
export PAGER=less
export GZIP=-9
#export GREP_OPTIONS='-d skip'

# set some shell options
#set -o emacs -o trackall -o globstar

# specify search path for autoloadable functions
#FPATH=/usr/share/ksh/functions:~/.func

# avoid certain file types in completion
FIGNORE='@(*.o|~*)'

# save more commands in history
HISTSIZE=5000
HISTEDIT=$EDITOR

# aliases for various command shortcuts

alias cp='cp -i'                                               # Confirm before overwriting something
alias df='df -h'                                                # Human-readable sizes
alias free='free -m'                                            # Show sizes in MB
#alias gitu='git add . && git commit && git push'
alias sx='startxfce4'
alias ae='sudo ae'
alias ff='firejail --apparmor /usr/bin/firefox'
alias b9='sudo xbacklight -set 9 amdgpu_bl0'
alias b20='sudo xbacklight -set 20 amdgpu_bl0'
alias b5='sudo xbacklight -set 5 amdgpu_bl0'
alias b15='sudo xbacklight -set 15 amdgpu_bl0'

# avoid problems with long argument lists for some commands (like xargs)
#alias cp='command -x cp'  mv='command -x mv'  grep='command -x grep'

# some short functions
empty() { echo $'\e[3J'; }
mere() { nroff -man -Tman $1 | ${MANPAGER:-less}; }
setenv() { export "${1}${2:+=$2}"; }

# Use keyboard trap to map keys to other keys
# note that escape sequences vary for different terminals so these
# may not work for you
#trap '.sh.edchar=${keymap[${.sh.edchar}]:-${.sh.edchar}}' KEYBD
#keymap=(
#  [$'\eOD']=$'\eb'   # Ctrl-Left  -> move word left
#  [$'\eOC']=$'\ef'   # Ctrl-Right -> move word right
#  [$'\e[3~']=$'\cd'  # Delete     -> delete to right
#  [$'\e[1~']=$'\ca'  # Home       -> move to beginning of line
#  [$'\e[4~']=$'\ce'  # End        -> move to end of line
#)

# keep a shortened version of the current directory for the prompt

# put the current directory and history number in the prompt

#PS1=' \u@\h:$_pwd \e[34m*>\e[00m '

export PS1=' \u@\h:${PWD} *>>\e[00m 'export GTK_THEME=Adwaita-dark
