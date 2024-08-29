
-- function by collection type
local collect_normal = function(data)
    if lib.progressBar({
        duration = data.duration,
        label = locale('collecting')..locale(data.label),
        useWhileDead = false, canCancel = true,
        disable = {
            car = true, move = true
        },
        anim = { scenario = 'CODE_HUMAN_MEDIC_TEND_TO_DEAD' },
    }) then
        local result = math.random(data.amount.min, data.amount.max)
        local choice = data.item[math.random(1, #data.item)]
        lib.callback.await('mi:item:add', cache.ped, choice, result)
    end
end

local collect_mining = function(data)
    if lib.progressBar({
        duration = data.duration,
        label = locale('collecting')..locale(data.label),
        useWhileDead = false, canCancel = true,
        disable = {
            car = true, move = true
        },
        anim = {
            blendIn = 3.0, dict = 'melee@large_wpn@streamed_core',
            clip = 'ground_attack_on_spot', blendOut = 3.0,
        },
        prop = {
            bone = 57005,
            model = `prop_tool_pickaxe`,
            pos = vec3(0.05, -0.25, -0.04),
            rot = vec3(80.0, -20.0, 175.0)
        },
    }) then
        local result = math.random(data.amount.min, data.amount.max)
        local choice = data.item[math.random(1, #data.item)]
        lib.callback.await('mi:item:add', cache.ped, choice, result)
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
                    PlaceObjectOnGroundProperly(v.data.set)
                    table.insert(v.data.list, v.data.set)
                    v.data.obj = v.data.obj + 1
                    local options = {
                        {
                            label = locale('collect')..locale(v.label),
                            icon = v.sprite, iconColor = v.spcolor,
                            canInteract = function(_, distance)
                                return distance < 1.5
                            end,
                            onSelect = function(data)
                                if v.type == 'normal' then
                                    collect_normal(v)
                                elseif v.type == 'mining' then
                                    collect_mining(v)
                                end
                                Cnt.Delete(data.entity)
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
        for k, v in ipairs(Data.Fields) do
            Cnt.Delete(v.data.obj)
        end
    end
end)