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

        cell.active = InteractiveBehavior(InteractiveType.GESTURE)
                :targetView(cell.iv)
        cell.active:followEnable(true)
              :enable(true)
    end)

    adapter:fillCellDataByReuseId("cell", function(cell, section, row)
        cell.iv:image("jolin")
    end)

    adapter:selectedRowByReuseId("cell", function(cell, section, row)
        print("点击了：" .. tostring(row))
    end)

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










