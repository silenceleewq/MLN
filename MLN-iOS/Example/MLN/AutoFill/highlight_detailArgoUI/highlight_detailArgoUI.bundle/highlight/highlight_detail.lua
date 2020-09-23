--1

require("packet/ViewPagerAdapter")
require("packet/ViewPager")
require("packet/BindMeta")
if highlightModel== nil then 
highlightModel= BindMeta("highlightModel")
end
require("packet/style")
if ui_views == nil then 
ui_views=setmetatable({}, { __mode = 'v'})
BindMetaCreateFindGID(ui_views)
end
require("highlight/cell_detail")
local vwj1 = TableView()
ui_views.vwj1 = vwj1
vwj1:setScrollWillEndDraggingCallback(function(velocityY)
index=vwj1:visibleCellsRows()[1]
print("index=", index)
if velocityY>0 then 
vwj1:scrollToCell(index+1, 1, true)
elseif velocityY<0 then 
vwj1:scrollToCell(index, 1, true)
end 
end)
vwj1:disallowFling(true)
local vwj1_adapter = TableViewAutoFitAdapter()
vwj1:adapter(vwj1_adapter)
vwj1_adapter:initCellByReuseId("mHighlightDetailCell", function(_l_c1)
--@&$local kvar3=_l_i1$--&@
local vwj2 = VStack()
_l_c1.vwj2 = vwj2
_l_c1.vwj2:widthPercent(100)
_l_c1.vwj2:bgColor(WHITE)
_l_c1.vwj2:padding(12, 12, 20, 12)
--@&$local kvar6=kvar3.userHits$--&@
--@&$local kvar7=kvar3.user$--&@
--@&$local kvar8=kvar3.createTime$--&@
local vwj3 = HStack()
_l_c1.vwj3 = vwj3
_l_c1.vwj3:widthPercent(100)
_l_c1.vwj3:crossAxis(CrossAxis.CENTER)
local vwj4 = ImageView()
_l_c1.vwj4 = vwj4
_l_c1.vwj4:width(48)
_l_c1.vwj4:height(48)
_l_c1.vwj4:contentMode(ContentMode.SCALE_ASPECT_FILL)
_l_c1.vwj4:cornerRadius(30)
local vwj5 = VStack()
_l_c1.vwj5 = vwj5
_l_c1.vwj5:marginLeft(10)
local vwj6 = HStack()
_l_c1.vwj6 = vwj6
local vwj7 = Label()
_l_c1.vwj7 = vwj7
_l_c1.vwj7:fontSize(14)
_l_c1.vwj7:textColor(BLACK)
local kvar9=Color():hex(10214598)
local kvar10=Color():hex(12449761)
local kvar11=Color():hex(5083265)
local vwj8 = Label()
_l_c1.vwj8 = vwj8
_l_c1.vwj8:bgColor(kvar10)
_l_c1.vwj8:textColor(kvar11)
_l_c1.vwj8:borderColor(kvar9)
_l_c1.vwj8:borderWidth(1)
_l_c1.vwj8:cornerRadius(3)
_l_c1.vwj8:padding(2, 8, 2, 8)
_l_c1.vwj8:setTextFontStyle(FontStyle.BOLD_ITALIC)
_l_c1.vwj8:fontSize(12)
_l_c1.vwj8:marginLeft(8)
_l_c1.vwj6:children({_l_c1.vwj7, _l_c1.vwj8})
local vwj9 = Label()
_l_c1.vwj9 = vwj9
_l_c1.vwj9:textColor(GRAY)
_l_c1.vwj9:marginTop(6)
_l_c1.vwj9:fontNameSize("PingFangSC-Regular", 12)
_l_c1.vwj9:setLineSpacing(5)
_l_c1.vwj5:children({_l_c1.vwj6, _l_c1.vwj9})
_l_c1.vwj3:children({_l_c1.vwj4, _l_c1.vwj5})
local vwj10 = HStack()
_l_c1.vwj10 = vwj10
_view_set_style_with_filter(_l_c1.vwj10,Style.CornerBorderStyle,{widthPercent=true,height=true,marginTop=true})
_l_c1.vwj10:widthPercent(100)
_l_c1.vwj10:height(150)
_l_c1.vwj10:marginTop(12)
local vwj11 = ViewPager()
_l_c1.vwj11 = vwj11
_l_c1.vwj11:widthPercent(100)
_l_c1.vwj11:heightPercent(100)
_l_c1.vwj11_adapter = ViewPagerAdapter()
_l_c1.vwj11:adapter(_l_c1.vwj11_adapter)
_l_c1.vwj11_adapter:initCellByReuseId("ImageView", function(_l_c2)
local vwj12 = ImageView()
_l_c2.vwj12 = vwj12
_l_c2.vwj12:widthPercent(100)
_l_c2.vwj12:heightPercent(100)
_l_c2.vwj12:contentMode(ContentMode.SCALE_ASPECT_FILL)
_l_c2.contentView:addView(_l_c2.vwj12)
end)
_l_c1.vwj10:children({_l_c1.vwj11.contentView})
local vwj13 = Label()
_l_c1.vwj13 = vwj13
_l_c1.vwj13:fontSize(16)
_l_c1.vwj13:lines(0)
_l_c1.vwj13:marginTop(10)
_l_c1.vwj13:textColor(BLACK)
_l_c1.vwj13:alpha(0.85)
local vwj14 = HStack()
_l_c1.vwj14 = vwj14
_l_c1.vwj14:marginTop(6)
_l_c1.vwj14:bgColor(Color():hex(16250871))
_l_c1.vwj14:borderColor(Color():hex(15132390))
_l_c1.vwj14:borderWidth(1)
_l_c1.vwj14:cornerRadius(30)
_l_c1.vwj14:crossAxis(CrossAxis.CENTER)
_l_c1.vwj14:padding(4, 12, 4, 12)
local vwj15 = ImageView()
_l_c1.vwj15 = vwj15
_l_c1.vwj15:image(locationIcon)
_l_c1.vwj15:width(12)
_l_c1.vwj15:height(12)
_l_c1.vwj15:marginRight(2)
local vwj16 = Label()
_l_c1.vwj16 = vwj16
_l_c1.vwj16:textColor(DEEP_GRAY)
_l_c1.vwj16:fontSize(13)
_l_c1.vwj14:children({_l_c1.vwj15, _l_c1.vwj16})
local vwj17 = Label()
_l_c1.vwj17 = vwj17
_l_c1.vwj17:textColor(GRAY)
_l_c1.vwj17:fontSize(13)
_l_c1.vwj17:marginTop(10)
local vwj18 = HStack()
_l_c1.vwj18 = vwj18
_l_c1.vwj18:widthPercent(100)
_l_c1.vwj18:crossAxis(CrossAxis.CENTER)
local vwj19 = ImageView()
_l_c1.vwj19 = vwj19
_l_c1.vwj19:width(24)
_l_c1.vwj19:height(24)
_l_c1.vwj19:cornerRadius(20)
_l_c1.vwj19:contentMode(ContentMode.SCALE_ASPECT_FILL)
local vwj20 = VStack()
_l_c1.vwj20 = vwj20
_l_c1.vwj20:basis(1)
local vwj21 = Label()
_l_c1.vwj21 = vwj21
_l_c1.vwj21:text("夸夸ta...")
_l_c1.vwj21:textColor(DEEP_GRAY)
_l_c1.vwj21:fontSize(16)
_l_c1.vwj21:padding(15, 12, 15, 12)
local vwj22 = ImageView()
_l_c1.vwj22 = vwj22
_l_c1.vwj22:bgColor(GRAY)
_l_c1.vwj22:widthPercent(100)
_l_c1.vwj22:height(0.5)
_l_c1.vwj20:children({_l_c1.vwj21, _l_c1.vwj22})
_l_c1.vwj18:children({_l_c1.vwj19, _l_c1.vwj20})
local vwj23 = HStack()
_l_c1.vwj23 = vwj23
_l_c1.vwj23:widthPercent(100)
_l_c1.vwj23:marginTop(14)
_l_c1.vwj23:crossAxis(CrossAxis.CENTER)
local kvar12="推荐"
local kvar13=submitDingIcon
local vwj24 = HStack()
_l_c1.vwj24 = vwj24
_l_c1.vwj24:crossAxis(CrossAxis.CENTER)
local vwj25 = ImageView()
_l_c1.vwj25 = vwj25
_l_c1.vwj25:image(kvar13)
_l_c1.vwj25:width(26)
_l_c1.vwj25:height(26)
local vwj26 = Label()
_l_c1.vwj26 = vwj26
_l_c1.vwj26:text(kvar12)
_l_c1.vwj26:textColor(GRAY)
_l_c1.vwj26:fontSize(14)
_l_c1.vwj26:marginLeft(6)
_l_c1.vwj24:children({_l_c1.vwj25, _l_c1.vwj26})
local kvar14="夸"
local kvar15=submitKuaIcon
local vwj27 = HStack()
_l_c1.vwj27 = vwj27
_l_c1.vwj27:crossAxis(CrossAxis.CENTER)
local vwj28 = ImageView()
_l_c1.vwj28 = vwj28
_l_c1.vwj28:image(kvar15)
_l_c1.vwj28:width(26)
_l_c1.vwj28:height(26)
local vwj29 = Label()
_l_c1.vwj29 = vwj29
_l_c1.vwj29:text(kvar14)
_l_c1.vwj29:textColor(GRAY)
_l_c1.vwj29:fontSize(14)
_l_c1.vwj29:marginLeft(6)
_l_c1.vwj27:children({_l_c1.vwj28, _l_c1.vwj29})
_l_c1.vwj27:marginLeft(18)
local kvar16="分享"
local kvar17=submitShareIcon
local vwj30 = HStack()
_l_c1.vwj30 = vwj30
_l_c1.vwj30:crossAxis(CrossAxis.CENTER)
local vwj31 = ImageView()
_l_c1.vwj31 = vwj31
_l_c1.vwj31:image(kvar17)
_l_c1.vwj31:width(26)
_l_c1.vwj31:height(26)
local vwj32 = Label()
_l_c1.vwj32 = vwj32
_l_c1.vwj32:text(kvar16)
_l_c1.vwj32:textColor(GRAY)
_l_c1.vwj32:fontSize(14)
_l_c1.vwj32:marginLeft(6)
_l_c1.vwj30:children({_l_c1.vwj31, _l_c1.vwj32})
_l_c1.vwj30:marginLeft(18)
local vwj33 = Spacer()
_l_c1.vwj33 = vwj33
local kvar18="特权操作"
local kvar19=submitTequanIcon
local vwj34 = HStack()
_l_c1.vwj34 = vwj34
_l_c1.vwj34:crossAxis(CrossAxis.CENTER)
local vwj35 = ImageView()
_l_c1.vwj35 = vwj35
_l_c1.vwj35:image(kvar19)
_l_c1.vwj35:width(26)
_l_c1.vwj35:height(26)
local vwj36 = Label()
_l_c1.vwj36 = vwj36
_l_c1.vwj36:text(kvar18)
_l_c1.vwj36:textColor(GRAY)
_l_c1.vwj36:fontSize(14)
_l_c1.vwj36:marginLeft(6)
_l_c1.vwj34:children({_l_c1.vwj35, _l_c1.vwj36})
_l_c1.vwj23:children({_l_c1.vwj24, _l_c1.vwj27, _l_c1.vwj30, _l_c1.vwj33, _l_c1.vwj34})
_l_c1.vwj2:children({_l_c1.vwj3, _l_c1.vwj10, _l_c1.vwj13, _l_c1.vwj14, _l_c1.vwj17, _l_c1.vwj18, _l_c1.vwj23})
_l_c1.contentView:addView(_l_c1.vwj2)
end)
DataBinding:bindListView(highlightModel.data.feeds.__path,vwj1)
vwj1_adapter:sectionCount(function()
return DataBinding:getSectionCount(highlightModel.data.feeds.__path)
end)
vwj1_adapter:rowCount(function(section1)
return  DataBinding:getRowCount(highlightModel.data.feeds.__path,section1)
end)
vwj1_adapter:fillCellDataByReuseId("mHighlightDetailCell", function(_l_c1,section1,row1)
local _l_i1=highlightModel.data.feeds[section1][row1].__ci
local kvar3=_l_i1
local kvar20 = function()
local kvar2 = {}
for index=1, (kvar3.kkDm.__asize) do 
local kvar5=index
local kvar2_=(function()
return  
(function()
local kvar22=kvar3.kkDm[kvar5].kuake.nickname
local kvar23=kvar3.kkDm[kvar5].content
local vwj37 = Label()
ui_views.vwj37 = vwj37
vwj37 = vwj37
vwj37:text(kvar22.__get .. "：" .. kvar23.__get)
vwj37:fontSize(15)
vwj37:marginTop(6)
return vwj37
end)()
end)()
if kvar2_ then table.insert(kvar2,kvar2_) end
end 
BindMetaPopForach()
return kvar2
end







local kvar25 = function()
local kvar24 = {}
local add = function(_v_)
if type(_v_) == "table" then
for _, _v in ipairs(_v_) do
table.insert(kvar24, _v)
end
elseif _v_ then
table.insert(kvar24, _v_)
end
end
add(_l_c1.vwj3)
add(_l_c1.vwj10)
add(_l_c1.vwj13)
add(_l_c1.vwj14)
add(_l_c1.vwj17)
add(kvar20())
add(_l_c1.vwj18)
add(_l_c1.vwj23)
_l_c1.vwj2:children(kvar24)
end
_l_c1.vwj2:removeAllSubviews()
kvar25()
local kvar6=kvar3.userHits
local kvar7=kvar3.user
local kvar8=kvar3.createTime
_l_c1.vwj4:image(kvar7.avatar.__get)
_l_c1.vwj7:text(kvar7.nickname.__get)
local kvar9=Color():hex(10214598)
local kvar10=Color():hex(12449761)
local kvar11=Color():hex(5083265)
_l_c1.vwj8:text("LV." .. kvar7.kuaLevelIdx.__get)
_l_c1.vwj9:text((kvar8.__get ~= nil  and dateFormat(kvar8.__get) or "") .. "·" .. tostring(kvar6.__get))
local kvar26 = function()
local kvar1 = {}
for index=1, (kvar3.kkDm.__asize) do 
local kvar4=index
local kvar1_=(function()
return  
(function()
local kvar28=kvar3.kkDm[kvar4].kuake.nickname.__get .. "(Lv." .. kvar3.kkDm[kvar4].kuake.level.__get .. ")：" .. kvar3.kkDm[kvar4].content.__get
local kvar29=200
local kvar30=kvar3.kkDm[kvar4].kuake.avatar
local kvar31=YELLOW
local vwj38 = HStack()
ui_views.vwj38 = vwj38
vwj38 = vwj38
local kvar32=kvar31
local kvar33=kvar28
local kvar34=BLACK
local vwj39 = Label()
ui_views.vwj39 = vwj39
vwj39 = vwj39
vwj39:text(kvar33)
vwj39:lines(1)
vwj39:bgColor(kvar32)
vwj39:textColor(kvar34)
vwj39:borderColor(BLACK)
vwj39:borderWidth(1)
vwj39:cornerRadius(30)
vwj39:fontSize(12)
vwj39:padding(3, 8, 3, 8)
vwj39:maxWidth(kvar29)
vwj39:fontSize(14)
local vwj40 = ImageView()
ui_views.vwj40 = vwj40
vwj40 = vwj40
vwj40:image(kvar30.__get)
_view_set_style_with_filter(vwj40,Style.avatarImgStyle,{width=true,height=true,borderColor=true,borderWidth=true,positionType=true,positionLeft=true,positionTop=true})
vwj40:width(18)
vwj40:height(18)
vwj40:borderColor(BLACK)
vwj40:borderWidth(1)
vwj40:positionType(PositionType.ABSOLUTE)
vwj40:positionLeft(-8)
vwj40:positionTop(-8)
vwj38:children({vwj39, vwj40})
vwj38:positionType(PositionType.ABSOLUTE)
vwj38:positionTop(index*40)
vwj38:positionLeft(index*10)
return vwj38
end)()
end)()
if kvar1_ then table.insert(kvar1,kvar1_) end
end 
BindMetaPopForach()
return kvar1
end
DataBinding:bindListView(kvar3.pics.__path,_l_c1.vwj11.contentView)
_l_c1.vwj11_adapter:getCount(function()
 return DataBinding:getRowCount(kvar3.pics.__path, 1)
end)
_l_c1.vwj11_adapter:fillCellDataByReuseId("ImageView", function(_l_c2, row2)
local _l_i2=kvar3.pics[row2].__ci
_l_c2.vwj12:image(_l_i2.url.__get)
BindMetaWatchListCell(kvar3.pics,-1,row2)
end)
_l_c1.vwj11_adapter:reuseId(function(row2)
return  "ImageView"
end)
_l_c1.vwj11.contentView:reloadData()

local kvar36 = function()
local kvar35 = {}
local add = function(_v_)
if type(_v_) == "table" then
for _, _v in ipairs(_v_) do
table.insert(kvar35, _v)
end
elseif _v_ then
table.insert(kvar35, _v_)
end
end
add(_l_c1.vwj11.contentView)
add(kvar26())
_l_c1.vwj10:children(kvar35)
end
_l_c1.vwj10:removeAllSubviews()
kvar36()
DataBinding:bindListView(kvar3.pics.__path,_l_c1.vwj11.contentView)
_l_c1.vwj11_adapter:getCount(function()
 return DataBinding:getRowCount(kvar3.pics.__path, 1)
end)
_l_c1.vwj11_adapter:fillCellDataByReuseId("ImageView", function(_l_c2, row2)
local _l_i2=kvar3.pics[row2].__ci
_l_c2.vwj12:image(_l_i2.url.__get)
BindMetaWatchListCell(kvar3.pics,-1,row2)
end)
_l_c1.vwj11_adapter:reuseId(function(row2)
return  "ImageView"
end)
_l_c1.vwj11.contentView:reloadData()
_l_c1.vwj13:text((kvar3.style.__get == 3 and("#" .. kvar3.attributes.tag.__get) or "") .. "  " .. kvar3.content.__get)
_l_c1.vwj14:display(kvar3.location.__get ~= nil)
_l_c1.vwj16:text(kvar3.location.__get ~= nil  and kvar3.location.bizName.__get or "")
_l_c1.vwj17:text(kvar3.likeNum.__get .. "用户夸赞 · " .. kvar3.kuaNum.__get .. "夸夸回复")
_l_c1.vwj19:image(kvar3.user.avatar.__get)
local kvar12="推荐"
local kvar13=submitDingIcon
local kvar14="夸"
local kvar15=submitKuaIcon
local kvar16="分享"
local kvar17=submitShareIcon
local kvar18="特权操作"
local kvar19=submitTequanIcon
BindMetaWatchListCell(highlightModel.data.feeds,section1,row1)
end)
vwj1_adapter:reuseId(function(section1, row1)
return  "mHighlightDetailCell"
end)
vwj1:reloadData()
window:addView(vwj1)
