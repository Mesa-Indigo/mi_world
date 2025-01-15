
-- variables
local field = require 'data.fields'

Collect_Normal = function(data)
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
        local choice = data.items[math.random(1, #data.items)]
        lib.callback.await('mi:item:add', cache.ped, choice, result)
    end
end

Collect_Mining = function(data)
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
        local choice = data.items[math.random(1, #data.items)]
        lib.callback.await('mi:item:add', cache.ped, choice, result)
    end
end

Collect_Diving = function(data)
    local result = math.random(data.amount.min, data.amount.max)
    local choice = data.items[math.random(1, #data.items)]
    lib.callback.await('mi:item:add', cache.ped, choice, result)
end

Citizen.CreateThread(function()
    while true do
        if Shared.fields then
            Wait(350)
            for k, v in ipairs(field) do
                if #(GetEntityCoords(cache.ped) - v.spawn) < 100 then
                    if v.data.obj < v.count then
                        local model = lib.requestModel(v.model, 300)
                        v.data.set = CreateObject(model,
                        v.spawn.x+math.random(-v.radius.sx, v.radius.sx),
                        v.spawn.y+math.random(-v.radius.sy, v.radius.sy),
                        v.spawn.z, true, false, false)
                        Util.SetObject(v.data.set, math.random(1, 359))

                        table.insert(v.data.list, v.data.set)
                        v.data.obj = v.data.obj + 1

                        local options = {
                            {
                                label = locale('collect')..locale(v.label),
                                icon = v.sprite, iconColor = v.color,
                                canInteract = function(_, distance)
                                    return distance < 2.0
                                end,
                                onSelect = function(data)
                                    if v.collect == 'normal' then
                                        Collect_Normal(v)
                                    elseif v.collect == 'mining' then
                                        Collect_Mining(v)
                                    elseif v.collect == 'diving' then
                                        Collect_Diving(v)
                                    end
                                    Util.Delete(data.entity)
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
        end
    end
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		for k, v in pairs(field) do
			DeleteObject(v.data.set)
		end
	end
end)