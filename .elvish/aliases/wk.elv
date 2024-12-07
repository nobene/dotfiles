#alias:new wk /home/az/mycorrhiza/myco -listen-addr 127.0.0.1:9999 /home/az/wiki
edit:add-var wk~ {|@_args|  /home/az/mycorrhiza/myco -listen-addr 127.0.0.1:9999 /home/az/wiki $@_args }
