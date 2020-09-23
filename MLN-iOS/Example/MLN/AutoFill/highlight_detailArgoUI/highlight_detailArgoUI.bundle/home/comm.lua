
WHITE=Color():hex(16777215)
BLACK=Color():hex(0)
GRAY=Color():hex(10855845)
YELLOW=Color():hex(16771128)
RED=Color():hex(16728655)
DEEP_GRAY=Color():hex(7172728)
BLUE=Color():hex(1356210)
cameraIcon="https://s.momocdn.com/w/u/others/custom/MLNUI/camera.png"
logoIcon="https://s.momocdn.com/w/u/others/custom/MLNUI/logo.png"
kingIcon="https://s.momocdn.com/w/u/others/custom/MLNUI/king.png"
groupIcon="https://s.momocdn.com/w/u/others/custom/MLNUI/group-icon.png"
topicIcon="https://s.momocdn.com/w/u/others/custom/MLNUI/topic.png"
highlightIcon="https://s.momocdn.com/w/u/others/custom/MLNUI/highlight1.png"
kuaLowIcon="https://s.momocdn.com/w/u/others/custom/MLNUI/kua_lowrate.png"
kuaHighIcon="https://s.momocdn.com/w/u/others/custom/MLNUI/kua_highrate.png"
cellBg="https://hbimg.huabanimg.com/7c41bc5871d74c9036932ca9bba76de363727be113b6fd-NApej6_fw658"
Style={
CornerBorderImgStyle={
{contentMode = ContentMode.SCALE_ASPECT_FILL},
{borderColor = BLACK},
{borderWidth = 2},
{cornerRadius = 12}
},
ContentLabelStyle={
{fontSize = 14},
{textColor = BLACK},
{lines = 2},
{setLineSpacing = 2}
},
NameLabelStyle={
{fontSize = 12},
{textColor = DEEP_GRAY}
},
ExtraLabelStyle={
{fontSize = 10},
{textColor = GRAY}
},
avatarImgStyle={
{width = 20},
{height = 20},
{contentMode = ContentMode.SCALE_ASPECT_FILL},
{cornerRadius = 20}
},
CornerBorderStyle={
{borderColor = BLACK},
{borderWidth = 2},
{cornerRadius = 12}
}
}
function dateFormat(timeStamp)
return  os.date("%m月%d日", timeStamp)
end
