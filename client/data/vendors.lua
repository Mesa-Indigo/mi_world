
-- variables


-- functions
local loadped = function()

end

local checkinv = function(item, data)
    local count = Inventory:Search('count', item)
    if count == 0 then
        return
    else
        lib.callback.await('mi:vend:payout', cache.ped, item, count, data)
    end
end

local loadmenu = function(data)
    local options = {}
    for k, v in pairs(data.items) do
        options[#options+1] = {
            title = v.label,
            description = 'Item Value: '..v.value,
            onSelect = function()
                checkinv('pc_sativa', v)
            end,
        }
    end
    lib.registerContext({
        id = data.icon,
        title = data.label,
        options = options
    })
    lib.showContext(data.icon)
end

RegisterCommand('vend', function()
    loadmenu(Data.Vend.recycle)
end, false)

local options = {
    {

    }
}

-- event
RegisterNetEvent('miwd:c:load:vendors')
AddEventHandler('miwd:c:load:vendors', function()
    if Shared.Vend then

    end
end)