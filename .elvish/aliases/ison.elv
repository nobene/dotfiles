#alias:new ison sudo wg-quick up is1
edit:add-var ison~ {|@_args|  sudo wg-quick up is1 $@_args }
