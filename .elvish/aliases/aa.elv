#alias:new aa sudo aa-enforce firejail-default
edit:add-var aa~ {|@_args|  sudo aa-enforce firejail-default $@_args }
