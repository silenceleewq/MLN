--1

require("packet/BindMeta")
if electLabelModel== nil then 
electLabelModel= BindMeta("electLabelModel")
end
if titleModel== nil then 
titleModel= BindMeta("titleModel")
end
if subtitleModel== nil then 
subtitleModel= BindMeta("subtitleModel")
end
if headlineModel== nil then 
headlineModel= BindMeta("headlineModel")
end
if electModel== nil then 
electModel= BindMeta("electModel")
end
if ui_views == nil then 
ui_views=setmetatable({}, { __mode = 'v'})
BindMetaCreateFindGID(ui_views)
end
require("LRQ.LRQElectLabel")
local kvar7=electModel.title
local vwj7 = Label()
ui_views.vwj7 = vwj7
vwj7:text(kvar7.__get)
kvar7.__watch=function(new)
vwj7:text(new)
end
vwj7:textColor(Color(125, 76, 211, 0.7))
vwj7:fontSize(30)
window:addView(vwj7)
local kvar8=electModel.title
local vwj8 = Label()
ui_views.vwj8 = vwj8
vwj8:text(kvar8.__get)
kvar8.__watch=function(new)
vwj8:text(new)
end
vwj8:bgColor(Color(0, 255, 0, 0.7))
vwj8:textColor(Color(255, 0, 0, 0.7))
vwj8:fontSize(25)
window:addView(vwj8)
local kvar9=electModel.title
local vwj9 = Label()
ui_views.vwj9 = vwj9
vwj9:text(kvar9.__get)
kvar9.__watch=function(new)
vwj9:text(new)
end
vwj9:textColor(Color(27, 88, 211, 0.7))
vwj9:fontSize(30)
window:addView(vwj9)
