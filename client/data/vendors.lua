
-- variables


-- functions
local checkinv = function(item, data)
    local count = Inventory:Search('count', item)
    if count == 0 then
        return
    else
        lib.callback.await('mi:vend:payout', cache.ped, item, count, data.value)
    end
end

local loadvendor = function(data)
    local pedops = {
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
                            checkinv(k, v)
                            lib.print.info(k..' '..v.label)
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
    local ped = { obj = nil, spawned = false}
    local model, crd = lib.requestModel(data.model), data.spawn
    ped.obj = CreatePed(1, model, crd.x, crd.y, crd.z-1, crd.w, true, false)
    TaskStartScenarioInPlace(ped.obj, data.scen, 0, true)
    FreezeEntityPosition(ped.obj, true)
    SetBlockingOfNonTemporaryEvents(ped.obj, true)
    SetEntityInvincible(ped.obj, true)

    lib.print.info(model)

    Target:addLocalEntity(ped.obj, pedops)

    if data.blip then
        local blip = AddBlipForCoord(data.spawn.x, data.spawn.y, data.spawn.z)
        SetBlipSprite(blip, data.sprite) SetBlipDisplay(blip, 4)
        SetBlipScale(blip, data.scale) SetBlipColour(blip, data.color)
        SetBlipAsShortRange(blip, true) BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(data.bname) EndTextCommandSetBlipName(blip)
    end
end

-- event
RegisterNetEvent('miwd:c:load:vendors')
AddEventHandler('miwd:c:load:vendors', function()
    if Shared.Vend then
        for k, v in pairs(Data.Vend) do
            loadvendor(v)
        end
    end
end)

TriggerEvent('miwd:c:load:vendors')