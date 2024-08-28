
-- get time
-- returns in world time details
Cnt.GetWorldTime = function()
    local tm = {
        hour = GetClockHours(),
        mint = GetClockMinutes(),
        secd = GetClockSeconds()
    } return tm
end

-- get date
-- returns in world date details
Cnt.GetWorldDate = function()
    local dt = {
        days = GetClockDayOfMonth(),
        week = GetClockDayOfWeek(),
        mnth = GetClockMonth()
    } return dt
end

-- get vehicle data
-- returns vehicle model name (i.e. jester4 = Jester RR)
Cnt.GetVehInfo = function(vehicle)
    local model = GetEntityModel(vehicle)
    local display = GetDisplayNameFromVehicleModel(model)
    local name = GetLabelText(display)
    return name
end

-- teleport function
-- fades screen to ease player transport
Cnt.Teleport = function(ped, x, y, z, w)
    DoScreenFadeOut(100)
    Citizen.Wait(1000)
    SetEntityCoords(ped, x, y, z, false, false, false, false)
    SetEntityHeading(ped, w)
    DoScreenFadeIn(750)
end

-- create object function for props
-- mission entity sets to belong to this script
-- bool is to determine if it will be a grounded prop
Cnt.Create_Prop = function(obj, model, coord, head, bool)
    obj = CreateObject(model, coord.x,
    coord.y, coord.z, true, false, false)
    SetEntityAsMissionEntity(obj, true, false)
    SetEntityHeading(obj, head)
    if bool then
        PlaceObjectOnGroundProperly(obj)
        FreezeEntityPosition(obj, true)
        SetEntityCollision(obj, true, true)
    end
    return obj
end

-- create object function for shells
-- mission entity sets to belong to this script
Cnt.Create_Shell = function(shell, model, coord, head)
    shell = CreateObject(model, coord.x,
    coord.y, coord.z, true, false, false)
    SetEntityAsMissionEntity(shell, true, false)
    SetEntityHeading(shell, head)
    FreezeEntityPosition(shell, true)
    SetEntityCollision(shell, true, true)
    return shell
end

-- delete object function
-- returns error if object not found
Cnt.Delete = function(obj)
    if not obj then
        lib.print.error(locale('debug')..'No presented entity to delete')
    return end
    DeleteEntity(obj)
    obj = nil
end

-- convert current value and max value to percentage
Cnt.GetPercentage = function(percent, maxvalue)
    if tonumber(percent) and tonumber(maxvalue) then
        return (maxvalue*percent)/100
    end
end

-- set color for progress bar in context menu
Cnt.GetProgressColor = function(percent)
    if percent >= 80 and percent <= 100 then
        return '#40C057' -- green
    elseif percent <= 80 and percent >= 50 then
        return '#FFD43B' -- yellow
    elseif percent <= 50 and percent >= 25 then
        return '#F76707' -- orange
    elseif percent <= 25 and percent >= 0 then
        return '#E03131' -- red
    end
end

--[[

WIP Functions

Cnt.

]]--