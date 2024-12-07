#alias:new itoff sudo wg-quick down it2
edit:add-var itoff~ {|@_args|  sudo wg-quick down it2 $@_args }
