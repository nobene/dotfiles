#alias:new lw firejail --apparmor /usr/bin/librewolf
edit:add-var lw~ {|@_args|  firejail --apparmor /usr/bin/librewolf $@_args }
