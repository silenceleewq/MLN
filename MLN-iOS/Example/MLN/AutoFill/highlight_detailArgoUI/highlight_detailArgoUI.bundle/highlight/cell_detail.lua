
require("home/comm")
locationIcon="https://s.momocdn.com/w/u/others/custom/MLNUI/location.png"
submitDingIcon="https://s.momocdn.com/w/u/others/custom/MLNUI/submit-ding.png"
submitKuaIcon="https://s.momocdn.com/w/u/others/custom/MLNUI/submit-kua.png"
submitShareIcon="https://s.momocdn.com/w/u/others/custom/MLNUI/submit-share.png"
submitTequanIcon="https://s.momocdn.com/w/u/others/custom/MLNUI/submit-tequan.png"
function utf8len(input)
local len=string.len(input)
local left=len
local cnt=0
local arr={0,
192,
224,
240,
248,
252}
while left ~= 0 do 
local tmp=string.byte(input, -left)
local i=#arr
while arr[i]do 
if tmp >= arr[i]then 
left=left-i
break 
end 
i=i-1
end 
cnt=cnt+1
end 
return  cnt
end
