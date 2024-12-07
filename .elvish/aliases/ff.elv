#alias:new ff firejail --apparmor /usr/bin/firefox
edit:add-var ff~ {|@_args|  firejail --apparmor /usr/bin/firefox $@_args }
