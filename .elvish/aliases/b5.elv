#alias:new b5 sudo xbacklight -set 5 amdgpu_bl0
edit:add-var b5~ {|@_args|  sudo xbacklight -set 5 amdgpu_bl0 $@_args }
