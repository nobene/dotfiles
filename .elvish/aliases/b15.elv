#alias:new b15 sudo xbacklight -set 15 amdgpu_bl0
edit:add-var b15~ {|@_args|  sudo xbacklight -set 15 amdgpu_bl0 $@_args }
