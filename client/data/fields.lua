
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

local collect_diving = function(data)
    local result = math.random(data.amount.min, data.amount.max)
    local choice = data.item[math.random(1, #data.item)]
    lib.callback.await('mi:item:add', cache.ped, choice, result)
end

local getz = function(x, y, lvl)
    local ground = { lvl-5, lvl-4, lvl-3, lvl-2, lvl-1, lvl, lvl+1, lvl+2, lvl+3, lvl+4, lvl+5 }
    for i, height in ipairs(ground) do
        local setground, z = GetGroundZFor_3dCoord(x, y, height, true)
        if setground then
            return z
        end
    end
end

-- thread
Citizen.CreateThread(function()
    while Shared.Fields do
        local cooldown = 500
        for k, v in ipairs(Data.Fields) do
            if lib.getNearbyPlayers(v.spawn, 50, true) == 0 then
                Cnt.Delete(v.data.obj)
                v.data.obj = v.data.obj - 1
                return
            else
                if v.data.obj < v.count then
                    lib.requestModel(v.model, cooldown)
                    local loc = v.spawn
                    local model = lib.requestModel(v.model, 500)
                    v.data.set = Cnt.Create_Prop(v.data.set, model, vec3(loc.x+math.random(-v.size, v.size),
                    loc.y+math.random(-v.size, v.size), loc.z-0.1), math.random(1, 359), true)
                    table.insert(v.data.list, v.data.set)
                    v.data.obj = v.data.obj + 1
                    local options = {
                        {
                            label = locale('collect')..locale(v.label),
                            icon = v.sprite, iconColor = v.spcolor,
                            canInteract = function(_, distance)
                                return distance < 2.0
                            end,
                            onSelect = function(data)
                                if v.type == 'normal' then
                                    collect_normal(v)
                                elseif v.type == 'mining' then
                                    collect_mining(v)
                                elseif v.type == 'diving' then
                                    collect_diving(v)
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
