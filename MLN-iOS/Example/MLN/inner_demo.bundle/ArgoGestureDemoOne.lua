--设置overBoundary(false),手势向下滑动让动画位移到结束位置，继续手势向下滑动一段距离，然后手势向上滑动恢复到动画前的状态，此时需抵消到动画结束后的距离之后才开始动画回复，看是否需要修改（demo2复现）


--demo2
--label = Label():width(150)
--               :height(150)
--               :text("哈哈哈hhh")
--               :bgColor(Color(200, 100, 10, 1))
--               :marginTop(100)
--window:addView(label)
--
----positionYAnim = ObjectAnimation(AnimProperty.Color, label)
----positionYAnim:duration(3)
----positionYAnim:from( Color(200,200,0,1)):to(Color(0,200,200,1))
--
----positionYAnim = ObjectAnimation(AnimProperty.Scale, label)
----positionYAnim:duration(3)
----positionYAnim:from(1, 1):to(0.5, 0.5)
--
--positionYAnim = ObjectAnimation(AnimProperty.PositionX, label)
--positionYAnim:duration(3)
--positionYAnim:from(0):to(100)
----positionYAnim:start()
--
----设置y是 x方向移动。y方向动的时候anim执行。
--active = InteractiveBehavior(InteractiveType.GESTURE)
--        :targetView(label)
--active:direction(InteractiveDirection.Y)
--      :endDistance(150)
--      --:overBoundary(true)
--      :enable(true)
--      :followEnable(true)
--
--positionYAnim:addInteractiveBehavior(active)
--
--print("type-->", TouchType.BEGIN, TouchType.MOVE, TouchType.END)
--active:touchBlock(function(type, distance, velocity)
--    print("touchBlock-->", type, distance, velocity)
--end)
--


-- 设置overBoundary(true)后，超出距离后的动画效果2端不一致。如scale缩小动画，超出距离后，android继续缩小，ios开始放大。

--demo1
--label = Label():width(150)
--               :height(150)
--               :text("哈哈哈hhh")
--               :bgColor(Color(200, 100, 10, 1))
--window:addView(label)
--
--positionYAnim = ObjectAnimation(AnimProperty.Scale, label)
--positionYAnim:duration(3)
--positionYAnim:from( 0.5, 0.5):to(1, 1)--:repeatCount(3)--:repeatForever(true)
--
----positionYAnim:start()
--
----设置y是 x方向移动。y方向动的时候anim执行。
--active = InteractiveBehavior(InteractiveType.GESTURE)
--        :targetView(label)
--active:direction(InteractiveDirection.Y)
--      :endDistance(100)
--      :overBoundary(true)
--      :enable(true)
--      :followEnable(true)
--
--positionYAnim:addInteractiveBehavior(active)
--
--print("type-->", TouchType.BEGIN, TouchType.MOVE, TouchType.END)
--active:touchBlock(function(type, distance, velocity)
--    print("touchBlock-->", type, distance, velocity)
--end)






-- ios：Position动画，需限制手势位移。
-- 如下demo：设置y为驱动轴，手势滑动y方向，走position动画，手势不跟y方向。
-- 设置x为驱动轴，手势滑动x方向，走position动画，手势不跟x方向。
--label = Label():width(200)
--               :height(200)
--               :bgColor(Color(120, 120, 120, 1))
--               :text("哈哈哈")
----
--positionYAnim = ObjectAnimation(AnimProperty.PositionX, label)
--positionYAnim:duration(1):delay(3):from(0)
--positionYAnim:to(250):repeatCount(3)--:repeatForever(true)
--
----positionYAnim = ObjectAnimation(AnimProperty.Color, label)
----positionYAnim:duration(1):delay(3):from(Color(255, 0, 0, 1))
----positionYAnim:to(Color(255, 255, 0, 1)):repeatCount(3)--:repeatForever(true)
--
----设置y是 x方向移动。y方向动的时候anim执行。
--active = InteractiveBehavior(InteractiveType.GESTURE)
--        :targetView(label)
--active:direction(InteractiveDirection.Y)
--      :endDistance(200)
----:overBoundary(true)
--      :enable(true)
--      :followEnable(true)
--
--positionYAnim:addInteractiveBehavior(active)
--
--print("type-->", TouchType.BEGIN, TouchType.MOVE, TouchType.END)
--active:touchBlock(function(type, distance, velocity)
--    print("touchBlock-->", type, distance, velocity)
--end)
--
--window:addView(label)


-- 手势松开后，ios 反方向手势无法回到动画初始状态，android可以。
-- https://git.wemomo.com/sun_109/LuaParser_JavaCode/-/issues/465
--demo1
label = Label():width(150)
               :height(150)
               :text("哈哈哈hhh")
               :bgColor(Color(200, 100, 10, 1))
window:addView(label)

positionYAnim = ObjectAnimation(AnimProperty.Scale, label)
positionYAnim:duration(3)
positionYAnim:from(0.5, 0.5):to(1, 1)--:repeatCount(3)--:repeatForever(true)

positionYAnim:start()

--设置y是 x方向移动。y方向动的时候anim执行。
active = InteractiveBehavior(InteractiveType.GESTURE)
        :targetView(label)
--active:direction(InteractiveDirection.Y)
--      :endDistance(100)
--      :overBoundary(true)
--      :enable(true)
--      :followEnable(true)

active:followEnable(true)
      :enable(true)
--positionYAnim:addInteractiveBehavior(active)

label2 = Label():width(200)
                :height(200)
                :text("呼呼呼hhh")
                :bgColor(Color(200, 100, 10, 1))
                :positionType(PositionType.ABSOLUTE)
                :positionTop(170)
                :positionLeft(100)
window:addView(label2)

-- active2 = InteractiveBehavior(InteractiveType.GESTURE)
--         :targetView(label2)

-- active2:followEnable(true)
--        :enable(true)


-- --animation1 = Animation():setTranslateX(0, 300)
-- --animation1:start(label2)

-- System:setTimeOut(function()
--     --2秒后结束刷新
--     --print("结束刷新了")
--     label2:scale(2, 1, false)
-- end, 2)

-- print("type-->", TouchType.BEGIN, TouchType.MOVE, TouchType.END)
-- active:touchBlock(function(type, distance, velocity)
--     print("touchBlock-->", type, distance, velocity)
-- end)

--local t = Animation()
local pinch = PinchGestureRecognizer()
pinch:attachView(label2)
pinch:setPinchCallback(function( scale )
  -- body
  print("------------- scale = ", scale)
end)

