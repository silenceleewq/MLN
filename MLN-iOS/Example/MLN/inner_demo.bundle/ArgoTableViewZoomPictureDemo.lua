height = { 300, 350, 400, 500 }
rowHeight = {}
--for i, v in pairs(screenSize) do
--    print(i, v)
--end
for i = 1, 100 do
    table.insert(rowHeight, 375 + 20)
end
tableView = TableView(false, false)

local function initAdapter()
    local adapter = TableViewAdapter()
    adapter:heightForCell(function(section, row)
        return rowHeight[row]
    end)

    adapter:sectionCount(function()
        return 1
    end)

    adapter:rowCount(function(section)
        print(#rowHeight)
        return #rowHeight
    end)

    adapter:reuseId(function(section, position)
        return "cell"
    end)

    adapter:initCellByReuseId("cell", function(cell)
        cell.rowContainer = HStack():widthPercent(100)
                                    :heightPercent(100)
                                    :mainAxis(MainAxis.CENTER)
        cell.iv = ImageView():width(375):height(375)
                             :contentMode(ContentMode.SCALE_TO_FILL)
                             :crossSelf(CrossAxis.CENTER)
        cell.rowContainer:addView(cell.iv)

        cell.contentView:addView(cell.rowContainer)


        cell.contentView:touchBegin(function(x, y)
                print("contentView:touchBegin = ", x, y)
        end)
        cell.rowContainer:enabled(true)
        cell.rowContainer:touchBegin(function(x, y)
            print("rowContainer:touchBegin = ", x, y)
        end)

        cell.iv:enabled(true)
        cell.iv:touchBegin(function(x, y)
                print("iv:touchBegin = ", x, y)
        end)

        --cell.active = InteractiveBehavior(InteractiveType.GESTURE)
        --        :targetView(cell.iv)q
        --cell.active:followEnable(true)
        --    :enable(true)
        --cell.pinch = PinchGestureRecognizer()
        --print("cell.iv = ", cell.iv)
        --cell.pinch:attachView(cell.iv)
        --cell.pinch:setPinchCallback(function(scale)
        --    -- body
        --    print("------------- scale = ", scale)
        --end)
        --≤
        --cell.iv:onTouch(function(x, y)
        --    print("-------------- onTouch = ", x, y)
        --end)
        --cell.iv:onClick(function()
        --    print("-------------- onclick")
        --end)
    end)

    adapter:fillCellDataByReuseId("cell", function(cell, section, row)
        cell.iv:image("jolin")
    end)

    adapter:selectedRowByReuseId("cell", function(cell, section, row)
        print("点击了：" .. tostring(row))
    end)

    --local pinch = PinchGestureRecognizer()
    --pinch:attachView(label2)
    --pinch:setPinchCallback(function(scale)
    --    -- body
    --    print("------------- scale = ", scale)
    --end)

    return adapter
end

local topHeight = 0
if System:iOS() then
    topHeight = window:statusBarHeight() + window:navBarHeight()
end

tableView:widthPercent(100):heightPercent(100)

local adapter = initAdapter(tableView)
tableView:adapter(adapter)
window:addView(tableView)










