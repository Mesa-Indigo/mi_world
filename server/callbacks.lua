
-- add checks for weight / getting items

-- callback to add item to player's inventory
lib.callback.register('mi:item:add', function(source, item, amount)
    Inventory:AddItem(source, item, amount)
end)

-- callback to remove item to player's inventory
lib.callback.register('mi:item:rem', function(source, item, count)
    Inventory:RemoveItem(source, item, count)
end)