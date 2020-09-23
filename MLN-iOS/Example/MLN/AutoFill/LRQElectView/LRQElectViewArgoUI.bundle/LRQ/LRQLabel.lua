
require("Film.LRQFileLabel")
local kvar2=titleModel.title
local vwj2 = Label()
ui_views.vwj2 = vwj2
vwj2:text(kvar2.__get)
kvar2.__watch=function(new)
vwj2:text(new)
end
vwj2:bgColor(Color(0, 255, 0, 0.7))
vwj2:textColor(Color(255, 0, 0, 0.7))
vwj2:fontSize(25)
window:addView(vwj2)
local kvar3=subtitleModel.title
local vwj3 = Label()
ui_views.vwj3 = vwj3
vwj3:text(kvar3.__get)
kvar3.__watch=function(new)
vwj3:text(new)
end
vwj3:bgColor(Color(0, 255, 0, 0.7))
vwj3:textColor(Color(255, 0, 0, 0.7))
vwj3:fontSize(25)
window:addView(vwj3)
local kvar4=subtitleModel.title
local vwj4 = Label()
ui_views.vwj4 = vwj4
vwj4:text(kvar4.__get)
kvar4.__watch=function(new)
vwj4:text(new)
end
vwj4:bgColor(Color(0, 255, 0, 0.7))
vwj4:textColor(Color(255, 0, 0, 0.7))
vwj4:fontSize(25)
window:addView(vwj4)
local kvar5=subtitleModel.title
local vwj5 = Label()
ui_views.vwj5 = vwj5
vwj5:text(kvar5.__get)
kvar5.__watch=function(new)
vwj5:text(new)
end
vwj5:bgColor(Color(0, 255, 0, 0.7))
vwj5:textColor(Color(255, 0, 0, 0.7))
vwj5:fontSize(25)
window:addView(vwj5)
local kvar6=headlineModel.headline
local vwj6 = Label()
ui_views.vwj6 = vwj6
vwj6:text(kvar6.__get)
kvar6.__watch=function(new)
vwj6:text(new)
end
vwj6:bgColor(Color(0, 255, 0, 0.7))
vwj6:textColor(Color(255, 0, 0, 0.7))
vwj6:fontSize(25)
window:addView(vwj6)
