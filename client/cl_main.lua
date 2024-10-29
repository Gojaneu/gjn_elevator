lib.locale()

ESX = exports['es_extended']:getSharedObject()

local function useElevator(elevator, targetFloor)
    local playerPed = PlayerPedId()
    local targetCoords = elevator.locations[targetFloor].teleportCoords or elevator.locations[targetFloor].coords

    if Config.Debug then
        print((locale("elevator_arrived")):format(targetFloor, targetCoords))
    end

    DoScreenFadeOut(500)
    Wait(500)

    lib.progressBar({
        duration = 3000,
        label = locale("progress_in_elevator"),
        useWhileDead = false,
        canCancel = false,
        disable = {
            car = true,
            move = true,
            combat = true,
        },
    })

    SetEntityCoords(playerPed, targetCoords.x, targetCoords.y, targetCoords.z)

    Wait(500)
    DoScreenFadeIn(500)

    lib.notify({
        title = locale("elevator_title"),
        description = (locale("elevator_arrived")):format(elevator.locations[targetFloor].label)
    })
end

CreateThread(function()
    for elevatorName, elevator in pairs(Config.Elevators) do
        for _, location in pairs(elevator.locations) do
            if Config.Interactions == "ox_target" then
                exports.ox_target:addBoxZone({
                    coords = location.coords,
                    size = location.size or vec3(2, 2, 2), -- Use configuration size or default value
                    rotation = location.rotation or 0, -- Use configuration rotation or default value
                    debug = Config.Debug,
                    options = {
                        {
                            name = elevatorName,
                            icon = 'fa-solid fa-elevator',
                            label = locale("elevator_title"),
                            canInteract = function(entity, distance, coords, name)
                                local playerData = ESX.GetPlayerData()
                                if elevator.jobRequired then
                                    for _, job in ipairs(elevator.jobRequired) do
                                        if playerData.job and playerData.job.name == job and playerData.job.grade >= elevator.minGrade then
                                            return true
                                        end
                                    end
                                    return false
                                end
                                return true
                            end,
                            onSelect = function(data)
                                local context = {}
                                for index, floor in ipairs(elevator.locations) do
                                    context[#context + 1] = {
                                        title = floor.label,
                                        event = 'gjn_elevator:useFloor',
                                        args = {
                                            elevator = elevator,
                                            targetFloor = index
                                        }
                                    }
                                end
    
                                lib.registerContext({
                                    id = ('elevator_floor_menu_%s'):format(elevatorName),
                                    title = elevator.label,
                                    options = context
                                })
                                lib.showContext(('elevator_floor_menu_%s'):format(elevatorName))
                            end,
                        },
                    }
                })
            elseif Config.Interactions == "lunar_bridge" then
                exports.lunar_bridge:addPoint({
                    coords = location.coords, -- vector3
                    distance = 1.0, -- the distance at which the becomes interactable
                    options = {
                        {
                            name = elevatorName,
                            icon = 'fa-solid fa-elevator',
                            label = locale("elevator_title"),
                            canInteract = function(entity, distance, coords, name)
                                local playerData = ESX.GetPlayerData()
                                if elevator.jobRequired then
                                    for _, job in ipairs(elevator.jobRequired) do
                                        if playerData.job and playerData.job.name == job and playerData.job.grade >= elevator.minGrade then
                                            return true
                                        end
                                    end
                                    return false
                                end
                                return true
                            end,
                            onSelect = function(data)
                                local context = {}
                                for index, floor in ipairs(elevator.locations) do
                                    context[#context + 1] = {
                                        title = floor.label,
                                        event = 'gjn_elevator:useFloor',
                                        args = {
                                            elevator = elevator,
                                            targetFloor = index
                                        }
                                    }
                                end
    
                                lib.registerContext({
                                    id = ('elevator_floor_menu_%s'):format(elevatorName),
                                    title = elevator.label,
                                    options = context
                                })
                                lib.showContext(('elevator_floor_menu_%s'):format(elevatorName))
                            end,
                        },
                    }
                })
            end
        end
    end
end)

RegisterNetEvent('gjn_elevator:useFloor', function(data)
    useElevator(data.elevator, data.targetFloor)
end)