# Theming section  
autoload -Uz compinit colors zcalc promptinit
compinit -d
colors

promptinit
prompt uni
preexec () { echo -ne "\e[0m" }


## Options section
#setopt correct                                                  # Auto correct mistakes
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing
setopt rcexpandparam                                            # Array expension with parameters
setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt nobeep                                                   # No beep
setopt appendhistory                                            # Immediately append history instead of overwriting
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt autocd                                                   # if only directory path is entered, cd there.

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' rehash true                              # automatically find new executables in path 
# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
HISTFILE=~/.zhistory
HISTSIZE=5000
SAVEHIST=3000
#export EDITOR=/usr/bin/nano
#export VISUAL=/usr/bin/nano
WORDCHARS=${WORDCHARS//\/[&.;]}                                 # Don't consider certain characters part of the word


## Keybindings section
bindkey -e
bindkey '^[[7~' beginning-of-line                               # Home key
bindkey '^[[H' beginning-of-line                                # Home key
if [[ "${terminfo[khome]}" != "" ]]; then
  bindkey "${terminfo[khome]}" beginning-of-line                # [Home] - Go to beginning of line
fi
bindkey '^[[8~' end-of-line                                     # End key
bindkey '^[[F' end-of-line                                     # End key
if [[ "${terminfo[kend]}" != "" ]]; then
  bindkey "${terminfo[kend]}" end-of-line                       # [End] - Go to end of line
fi
bindkey '^[[2~' overwrite-mode                                  # Insert key
bindkey '^[[3~' delete-char                                     # Delete key
bindkey '^[[C'  forward-char                                    # Right key
bindkey '^[[D'  backward-char                                   # Left key
bindkey '^[[5~' history-beginning-search-backward               # Page up key
bindkey '^[[6~' history-beginning-search-forward                # Page down key

# Navigate words with ctrl+arrow keys
bindkey '^[Oc' forward-word                                     #
bindkey '^[Od' backward-word                                    #
bindkey '^[[1;5D' backward-word                                 #
bindkey '^[[1;5C' forward-word                                  #
bindkey '^H' backward-kill-word                                 # delete previous word with ctrl+backspace
bindkey '^[[Z' undo                                             # Shift+tab undo last action

## Alias section 
alias cp="cp -i"                                                # Confirm before overwriting something
alias df='df -h'                                                # Human-readable sizes
alias free='free -m'                                            # Show sizes in MB
alias gitu='git add . && git commit && git push'
alias sx='startxfce4'
alias aa='sudo aa-enforce firejail-default'
alias ff='firejail --apparmor /usr/bin/firefox'
alias b9='sudo xbacklight -set 9 amdgpu_bl0'
alias b20='sudo xbacklight -set 20 amdgpu_bl0'
alias b5='sudo xbacklight -set 5 amdgpu_bl0'
alias b15='sudo xbacklight -set 15 amdgpu_bl0'
alias wk='/home/az/mycorrhiza/myco -listen-addr 127.0.0.1:9999 /home/az/wiki'
alias vn='source ven/bin/activate'
alias dsvpn='sudo dsvpn client /home/az/dsvpn.key 82.221.141.175 444 auto 10.8.0.2 10.8.0.254'
alias lw='firejail --apparmor /usr/bin/librewolf'
alias powe='sudo poweroff'
alias iton='sudo wg-quick up it2'
alias itoff='sudo wg-quick down it2'
alias ison='sudo wg-quick up is1'
alias isoff='sudo wg-quick down is1'
alias tt='sensors | grep crit | tail -n 1'
#alias tt="paste <(cat /sys/class/thermal/thermal_zone*/type) <(cat /sys/class/thermal/thermal_zone*/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/'"


# enable substitution for prompt
#setopt prompt_subst

# Prompt (on left side) similar to default bash prompt, or redhat zsh prompt with colors
#PROMPT="%F{023}%n@%m %/ $ %{$reset_color%} "
#preexec () { print -P %F{023} ' ; echo -ne "\e[0m" }
#preexec () { echo -ne "\e[0m" }

#PROMPT="%(!.%{$fg[yellow]%}[%n@%m %1~]%{$reset_color%}# .%{$fg[blue]%}[%n@%m %1~]%{$reset_color%}$ "
# Maia prompt
##PROMPT="%B%{$fg[cyan]%}%(4~|%-1~/.../%2~|%~)%u%b >%{$fg[cyan]%}>%B%(?.%{$fg[cyan]%}.%{$fg[darkred]%})>%{$reset_color%}%b " # Print some system information when the shell is first started
# Print a greeting message when shell is started
#echo $USER@$HOST  $(uname -srm) $(lsb_release -rcs)
## Prompt on right side:
#  - shows status of git when in git repository (code adapted from https://techanic.net/2012/12/30/my_git_prompt_for_zsh.html)
#  - shows exit status of previous command (if previous command finished with an error)
#  - is invisible, if neither is the case

