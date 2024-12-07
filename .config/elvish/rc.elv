use github.com/zzamboni/elvish-modules/alias
use github.com/zzamboni/elvish-modules/terminal-title

set edit:abbr['=g'] = ' | grep '
set edit:abbr['=l'] = ' | less '
set edit:abbr['=dn'] = ' > /dev/null 2>&1'
#set edit:abbr['=g'] = ' | grep '

set terminal-title:title-during-prompt = { tilde-abbr $pwd }
#set terminal-title:title-during-command = (edit:wordify $cmd | take 1)

set edit:prompt = { tilde-abbr $pwd ; put ' ==|> ' }
set edit:rprompt = (constantly (styled (whoami)@(hostname) bright-black ))

alias:new &save df df -h
alias:new &save free free -m
alias:new &save sx startxfce4
alias:new &save aa sudo aa-enforce firejail-default
alias:new &save ff firejail --apparmor /usr/bin/firefox
alias:new &save b5 sudo xbacklight -set 5 amdgpu_bl0
alias:new &save b9 sudo xbacklight -set 9 amdgpu_bl0
alias:new &save b15 sudo xbacklight -set 15 amdgpu_bl0
alias:new &save wk /home/az/mycorrhiza/myco -listen-addr 127.0.0.1:9999 /home/az/wiki
alias:new &save powe sudo poweroff
alias:new &save rebo sudo reboot 
alias:new &save iton sudo wg-quick up it2
alias:new &save itoff sudo wg-quick down it2
alias:new &save ison sudo wg-quick up is1
alias:new &save isoff sudo wg-quick down is1
alias:new &save lw firejail --apparmor /usr/bin/librewolf
alias:new &save vn source ven/bin/activate