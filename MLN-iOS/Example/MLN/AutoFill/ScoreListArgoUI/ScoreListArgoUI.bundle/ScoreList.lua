--1

require("packet/BindMeta")
if MDVChatMovieSearchPageModel== nil then 
MDVChatMovieSearchPageModel= BindMeta("MDVChatMovieSearchPageModel")
end
if ui_views == nil then 
ui_views=setmetatable({}, { __mode = 'v'})
BindMetaCreateFindGID(ui_views)
end
local vwj1 = Label()
ui_views.vwj1 = vwj1
vwj1:text(MDVChatMovieSearchPageModel.title.__get)
MDVChatMovieSearchPageModel.title.__watch=function(new)
vwj1:text(new)
end
vwj1:fontSize(30)
window:addView(vwj1)
local vwj2 = Label()
ui_views.vwj2 = vwj2
vwj2:text("hahah")
window:addView(vwj2)
local vwj3 = Label()
ui_views.vwj3 = vwj3
vwj3:text(tostring(MDVChatMovieSearchPageModel.weight.__get))
vwj3:fontSize(30)
window:addView(vwj3)
local vwj4 = Label()
ui_views.vwj4 = vwj4
vwj4:text(MDVChatMovieSearchPageModel.history[1].__get)
MDVChatMovieSearchPageModel.history.__watch=function(new)
vwj4:text(new[1])
end
vwj4:fontSize(30)
window:addView(vwj4)
local vwj5 = Label()
ui_views.vwj5 = vwj5
vwj5:text("我爱看" .. MDVChatMovieSearchPageModel.history[2].__get)
MDVChatMovieSearchPageModel.history.__watch=function(new)
vwj5:text("我爱看" .. new[2])
end
vwj5:fontSize(30)
window:addView(vwj5)
local vwj6 = Label()
ui_views.vwj6 = vwj6
vwj6:text(MDVChatMovieSearchPageModel.info[1].info1.__get)
MDVChatMovieSearchPageModel.info[1].info1.__watch=function(new)
vwj6:text(new)
end
vwj6:fontSize(30)
window:addView(vwj6)
local vwj7 = Label()
ui_views.vwj7 = vwj7
vwj7:text(tostring(MDVChatMovieSearchPageModel.age.__get))
vwj7:fontSize(30)
window:addView(vwj7)
local vwj8 = HStack()
ui_views.vwj8 = vwj8
local vwj9 = Label()
ui_views.vwj9 = vwj9
vwj9:text("1")
vwj9:width(50)
vwj9:height(50)
vwj9:bgColor(Color(125, 125, 233, 0.7))
local vwj10 = Label()
ui_views.vwj10 = vwj10
vwj10:text("2")
vwj10:width(50)
vwj10:height(50)
vwj10:bgColor(Color(125, 125, 233, 0.7))
local vwj11 = Label()
ui_views.vwj11 = vwj11
vwj11:text("3")
vwj11:width(50)
vwj11:height(50)
vwj11:bgColor(Color(125, 125, 233, 0.7))
vwj8:children({vwj9, vwj10, vwj11})
vwj8:crossContent(CrossAxis.SPACE_BETWEEN)
vwj8:mainAxis(MainAxis.SPACE_EVENLY)
vwj8:widthPercent(100)
vwj8:height(200)
window:addView(vwj8)
local vwj12 = VStack()
ui_views.vwj12 = vwj12
local kvar3 = function()
local kvar1 = {}
for index=1, (MDVChatMovieSearchPageModel.history.__asize) do 
local kvar2=index
local kvar1_=(function()
return  (function()
local vwj13 = Label()
ui_views.vwj13 = vwj13
vwj13:text(MDVChatMovieSearchPageModel.history[kvar2].__get)

return vwj13
end)()
end)()
if kvar1_ then table.insert(kvar1,kvar1_) end
end 
BindMetaPopForach()
return kvar1
end
local kvar6 = function()
local kvar5 = {}
local add = function(_v_)
if type(_v_) == "table" then
for _, _v in ipairs(_v_) do
table.insert(kvar5, _v)
end
elseif _v_ then
table.insert(kvar5, _v_)
end
end
add(kvar3())
vwj12:children(kvar5)
end
kvar7="kvar7"
local function watch_f_1()
BindMetaWatchRemove(kvar7)
vwj12:removeAllSubviews()
BindMetaWatchPush(kvar7)
kvar6()
BindMetaWatchPop(kvar7)
end
local kvar8=MDVChatMovieSearchPageModel.history.__watch(watch_f_1)
watch_f_1()
window:addView(vwj12)
