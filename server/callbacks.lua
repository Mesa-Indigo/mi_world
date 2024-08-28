
-- create object
lib.callback.register('mi:create:object', function(model, crds)
    CreateObject(model, crds.x, crds.y, crds.z-1, true, false, false)
end)

-- add checks for weight / getting items
lib.callback.register('mi:item:check', function(source, item, amount)
    Inventory:AddItem(source, item, amount)
end)

-- callback to add item to player's inventory
lib.callback.register('mi:item:add', function(source, item, amount)
    Inventory:AddItem(source, item, amount)
end)

-- callback to remove item to player's inventory
lib.callback.register('mi:item:rem', function(source, item, count)
    Inventory:RemoveItem(source, item, count)
end)