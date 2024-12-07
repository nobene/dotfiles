#alias:new b9 sudo xbacklight -set 9 amdgpu_bl0
edit:add-var b9~ {|@_args|  sudo xbacklight -set 9 amdgpu_bl0 $@_args }
