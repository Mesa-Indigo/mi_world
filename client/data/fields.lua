
-- function
local collect = function(data)
    if lib.progressBar({
        duration = data.duration,
        label = locale('collecting')..locale(data.locale),
        useWhileDead = false, canCancel = true,
        disable = {
            car = true, move = true
        },
        anim = { scenario = 'CODE_HUMAN_MEDIC_TEND_TO_DEAD' },
    }) then
        local result = math.random(data.amount.min, data.amount.max)
        local choice = data.item[math.random(1, #data.item)]
        lib.callback.await('mi:item:add', cache.ped, choice, result)
        Wait(250) Cnt.Delete(data.data.set)
    end
end

-- thread
Citizen.CreateThread(function()
    while Shared.Fields do
        local cooldown = 2000
        for k, v in ipairs(Data.Fields) do
            if lib.getNearbyPlayers(v.spawn, 50, true) then
                if v.data.obj < v.count then
                    cooldown = 5000
                    lib.requestModel(v.model, cooldown)
                    local loc = v.spawn
                    v.data.set = Cnt.Create_Prop(v.data.set, v.model,
                    vec3(loc.x+math.random(-v.size, v.size),
                    loc.y+math.random(-v.size, v.size), loc.z),
                    math.random(1, 359), true)
                    table.insert(v.data.list, v.data.set)
                    v.data.obj = v.data.obj + 1
                    local options = {
                        {
                            label = locale('collect')..v.label,
                            icon = v.sprite, iconColor = v.spcolor,
                            canInteract = function(_, distance)
                                return distance < 1.5
                            end,
                            onSelect = function(data)
                                collect(v) Cnt.Delete(data.entity)
                                v.data.obj = v.data.obj - 1
                                if Debug then
                                    lib.print.info(v.data.obj)
                                end
                            end
                        }
                    }
                    Target:addLocalEntity(v.data.set, options)
                end
            end
        end
        Citizen.Wait(cooldown)
    end
end)

-- event handlers
AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        -- delete fields
    end
end)