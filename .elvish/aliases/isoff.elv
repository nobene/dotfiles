#alias:new isoff sudo wg-quick down is1
edit:add-var isoff~ {|@_args|  sudo wg-quick down is1 $@_args }
