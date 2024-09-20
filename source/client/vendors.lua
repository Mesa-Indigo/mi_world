
-- variables
local vendors = require 'data.vendors'
local vlist = {}

-- functions
VendorInvCheck = function(item, data)
    local count = Inventory:Search('count', item)
    if count == 0 then
        return
    else
        lib.callback.await('mi:vend:payout', cache.ped, item, count, data.value)
    end
end

VendorLoad = function(data)
    local ped = nil
    local model = lib.requestModel(data.model, 1000)

    local options = {
        {
            name = 'vendor',
            label = locale('vendor'),
            icon = 'fa-solid fa-comments-dollar',
            canInteract = function(_, distance)
                return distance < 1.5
            end,
            onSelect = function()
                local options = {}
                for k, v in pairs(data.items) do
                    options[#options+1] = {
                        title = v.label,
                        description = 'Item Value: '..v.value,
                        onSelect = function()
                            VendorInvCheck(k, v)
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
        }
    }

    ped = CreatePed(1, model, data.spawn.x, data.spawn.y,
    data.spawn.z-1, data.spawn.w, true, false)
    TaskStartScenarioInPlace(ped, data.scen, 0, true)
    FreezeEntityPosition(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    Target:addLocalEntity(ped, options)

    table.insert(vlist, ped)

    if data.blip then
        local blip = AddBlipForCoord(data.spawn.x, data.spawn.y, data.spawn.z)
        SetBlipSprite(blip, data.sprite) SetBlipDisplay(blip, 4)
        SetBlipScale(blip, data.scale) SetBlipColour(blip, data.color)
        SetBlipAsShortRange(blip, true) BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(data.name) EndTextCommandSetBlipName(blip)
    end
end

if Shared.vendor then
    for k, v in pairs(vendors) do
        VendorLoad(v)
    end
end