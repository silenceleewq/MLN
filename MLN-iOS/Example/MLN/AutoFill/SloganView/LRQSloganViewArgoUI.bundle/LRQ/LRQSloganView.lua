--1

require("packet/BindMeta")
if titleModel== nil then 
titleModel= BindMeta("titleModel")
end
if subtitleModel== nil then 
subtitleModel= BindMeta("subtitleModel")
end
if headlineModel== nil then 
headlineModel= BindMeta("headlineModel")
end
if SloganModel== nil then 
SloganModel= BindMeta("SloganModel")
end
if SloganHotModel== nil then 
SloganHotModel= BindMeta("SloganHotModel")
end
if SloganColdModel== nil then 
SloganColdModel= BindMeta("SloganColdModel")
end
if ui_views == nil then 
ui_views=setmetatable({}, { __mode = 'v'})
BindMetaCreateFindGID(ui_views)
end
local kvar2=SloganModel.slogan
local vwj1 = Label()
ui_views.vwj1 = vwj1
vwj1:text(kvar2.__get)
kvar2.__watch=function(new)
vwj1:text(new)
end
vwj1:bgColor(Color(0, 255, 0, 0.7))
vwj1:textColor(Color(255, 0, 0, 0.7))
vwj1:fontSize(25)
window:addView(vwj1)
local kvar3="固定对"
local vwj2 = Label()
ui_views.vwj2 = vwj2
vwj2:text(kvar3)
vwj2:bgColor(Color(0, 255, 0, 0.7))
vwj2:textColor(Color(255, 0, 0, 0.7))
vwj2:fontSize(25)
window:addView(vwj2)
local kvar4=SloganHotModel.slogan
local vwj3 = Label()
ui_views.vwj3 = vwj3
vwj3:text(kvar4.__get)
kvar4.__watch=function(new)
vwj3:text(new)
end
vwj3:bgColor(Color(0, 255, 0, 0.7))
vwj3:textColor(Color(255, 0, 0, 0.7))
vwj3:fontSize(25)
window:addView(vwj3)
local kvar5=SloganColdModel.coldSlogan
local vwj4 = Label()
ui_views.vwj4 = vwj4
vwj4:text(kvar5.__get)
kvar5.__watch=function(new)
vwj4:text(new)
end
vwj4:bgColor(Color(0, 255, 0, 0.7))
vwj4:textColor(Color(255, 0, 0, 0.7))
vwj4:fontSize(25)
window:addView(vwj4)
