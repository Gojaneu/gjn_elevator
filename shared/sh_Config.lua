Config = {}

-- Debug mode
Config.Debug = false -- If set to true, debug information will be displayed

-- Interaction type
Config.Interactions = "lunar_bridge" -- Interaction method: ox_target, lunar_bridge

-- Elevator configuration
Config.Elevators = {
    ["realhub"] = {
        label = "RealHub Elevator",
        locations = {
            {
                floor = 1,
                label = "Ground Floor",
                coords = vector3(-85.7702, -818.7269, 36.0280),
                size = vec3(3, 1, 3), -- Size of the interaction zone
                rotation = 0, -- Rotation of the interaction zone
                teleportCoords = vector3(-83.6949, -819.2820, 36.0280) -- Coordinates for teleportation after using the elevator
            },
            {
                floor = 2,
                label = "Office",
                coords = vector3(-75.3711, -827.2158, 243.3857),
                size = vec3(3, 1, 3), -- Size of the interaction zone
                rotation = 0, -- Rotation of the interaction zone
                teleportCoords = vector3(-76.0406, -825.4285, 243.3857) -- Coordinates for teleportation after using the elevator
            },
        },
        jobRequired = "realhub", -- Specific job required to use the elevator, or nil for everyone
        minGrade = 0, -- Minimum job grade required to use the elevator
    },
    ["EMS"] = {
        label = "PillBox Elevator",
        locations = {
            {
                floor = -3,
                label = "Garages",
                coords = vector3(330.6962, -591.4665, 28.9011),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 0, -- Rotation of the interaction zone
                teleportCoords = vector3(330.9868, -593.1831, 28.9011) -- Coordinates for teleportation after using the elevator
            },
            {
                floor = 1,
                label = "Ground Floor",
                coords = vector3(330.6962, -591.4665, 43.2821),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 0, -- Rotation of the interaction zone
                teleportCoords = vector3(330.9868, -593.1831, 43.2821) -- Coordinates for teleportation after using the elevator
            },
        },
        jobRequired = "ambulance", -- Specific job required to use the elevator, or nil for everyone
        minGrade = 0, -- Minimum job grade required to use the elevator
    },
    ["EMS2"] = {
        label = "PillBox Elevator",
        locations = {
            {
                floor = -3,
                label = "Garages",
                coords = vector3(336.3410, -581.5956, 28.9011),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 0, -- Rotation of the interaction zone
                teleportCoords = vector3(335.8364, -579.7203, 28.9011) -- Coordinates for teleportation after using the elevator
            },
            {
                floor = 1,
                label = "Ground Floor",
                coords = vector3(336.3410, -581.5956, 43.2910),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 0, -- Rotation of the interaction zone
                teleportCoords = vector3(335.8364, -579.7203, 43.2910) -- Coordinates for teleportation after using the elevator
            },
            {
                floor = 1,
                label = "Laboratory",
                coords = vector3(336.3410, -581.5956, 48.2409),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 0, -- Rotation of the interaction zone
                teleportCoords = vector3(335.8364, -579.7203, 48.2409) -- Coordinates for teleportation after using the elevator
            },
            {
                floor = 10,
                label = "Helipad",
                coords = vector3(336.3039, -581.4811, 74.0705),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 0, -- Rotation of the interaction zone
                teleportCoords = vector3(335.8364, -579.7203, 74.0705) -- Coordinates for teleportation after using the elevator
            },
        },
        jobRequired = "ambulance", -- Specific job required to use the elevator, or nil for everyone
        minGrade = 0, -- Minimum job grade required to use the elevator
    },
    ["Vespucci"] = {
        label = "VESPUCCI Elevator",
        locations = {
            {
                floor = -3,
                label = "Garages #2",
                coords = vector3(-1094.1094, -846.5181, 3.73),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 90, -- Rotation of the interaction zone
                teleportCoords = vector3(-1094.0564, -848.1028, 3.73) -- Coordinates for teleportation after using the elevator
            },
            {
                floor = -1,
                label = "Garages #1",
                coords = vector3(-1094.1094, -846.5181, 11.5525),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 90, -- Rotation of the interaction zone
                teleportCoords = vector3(-1094.0564, -848.1028, 11.5525) -- Coordinates for teleportation after using the elevator
            },
            {
                floor = 1,
                label = "Ground Floor",
                coords = vector3(-1094.1094, -846.5181, 19.3742),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 0, -- Rotation of the interaction zone
                teleportCoords = vector3(-1094.0564, -848.1028, 19.3744) -- Coordinates for teleportation after using the elevator
            },
            {
                floor = 2,
                label = "Academy",
                coords = vector3(-1094.0825, -846.4940, 23.2850),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 0, -- Rotation of the interaction zone
                teleportCoords = vector3(-1093.7781, -848.4523, 23.2853) -- Coordinates for teleportation after using the elevator
            },
            {
                floor = 3,
                label = "Detective Office",
                coords = vector3(-1094.0804, -846.4986, 27.1959),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 0, -- Rotation of the interaction zone
                teleportCoords = vector3(-1093.7781, -848.4523, 27.1959) -- Coordinates for teleportation after using the elevator
            },
            {
                floor = 4,
                label = "Offices",
                coords = vector3(-1094.0839, -846.5010, 31.1068),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 0, -- Rotation of the interaction zone
                teleportCoords = vector3(-1093.7781, -848.4523, 31.1068) -- Coordinates for teleportation after using the elevator
            },
            {
                floor = 4,
                label = "Management Offices",
                coords = vector3(-1094.1010, -846.5188, 35.0175),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 0, -- Rotation of the interaction zone
                teleportCoords = vector3(-1093.7781, -848.4523, 35.0175) -- Coordinates for teleportation after using the elevator
            },
            {
                floor = 5,
                label = "Helipad",
                coords = vector3(-1094.0994, -846.5210, 38.8801),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 0, -- Rotation of the interaction zone
                teleportCoords = vector3(-1093.7781, -848.4523, 38.8801) -- Coordinates for teleportation after using the elevator
            }
        },
        jobRequired = {'police', 'sheriff', 'sahp'}, -- Specific job(s) required to use the elevator, or nil for everyone
        minGrade = 0, -- Minimum job grade required to use the elevator
    },
    ["Vespucci2"] = {
        label = "VESPUCCI Elevator",
        locations = {
            {
                floor = -3,
                label = "Garages #2",
                coords = vector3(-1096.3965, -848.3781, 3.73),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 90, -- Rotation of the interaction zone
                teleportCoords = vector3(-1096.1874, -850.1260, 3.73) -- Coordinates for teleportation after using the elevator
            },
            {
                floor = -1,
                label = "Garages #1",
                coords = vector3(-1096.3965, -848.3781, 11.5525),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 90, -- Rotation of the interaction zone
                teleportCoords = vector3(-1096.1874, -850.1260, 11.5525) -- Coordinates for teleportation after using the elevator
            },
            {
                floor = 1,
                label = "Ground Floor",
                coords = vector3(-1096.3965, -848.3781, 19.3742),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 0, -- Rotation of the interaction zone
                teleportCoords = vector3(-1096.1874, -850.1260, 19.3744) -- Coordinates for teleportation after using the elevator
            },
            {
                floor = 2,
                label = "Academy",
                coords = vector3(-1096.3965, -848.3781, 23.2850),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 0, -- Rotation of the interaction zone
                teleportCoords = vector3(-1096.1874, -850.1260, 23.2853) -- Coordinates for teleportation after using the elevator
            },
            {
                floor = 3,
                label = "Detective Office",
                coords = vector3(-1096.3965, -848.3781, 27.1959),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 0, -- Rotation of the interaction zone
                teleportCoords = vector3(-1096.1874, -850.1260, 27.1959) -- Coordinates for teleportation after using the elevator
            },
            {
                floor = 4,
                label = "Offices",
                coords = vector3(-1096.3965, -848.3781, 31.1068),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 0, -- Rotation of the interaction zone
                teleportCoords = vector3(-1096.1874, -850.1260, 31.1068) -- Coordinates for teleportation after using the elevator
            },
            {
                floor = 4,
                label = "Management Offices",
                coords = vector3(-1096.3965, -848.3781, 35.0175),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 0, -- Rotation of the interaction zone
                teleportCoords = vector3(-1096.1874, -850.1260, 35.0175) -- Coordinates for teleportation after using the elevator
            },
            {
                floor = 5,
                label = "Helipad",
                coords = vector3(-1096.3965, -848.3781, 38.8801),
                size = vec3(1, 0.5, 1), -- Size of the interaction zone
                rotation = 0, -- Rotation of the interaction zone
                teleportCoords = vector3(-1096.1874, -850.1260, 38.8801) -- Coordinates for teleportation after using the elevator
            }
        },
        jobRequired = {'police', 'sheriff', 'sahp'}, -- Specific job(s) required to use the elevator, or nil for everyone
        minGrade = 0, -- Minimum job grade required to use the elevator
    },
}