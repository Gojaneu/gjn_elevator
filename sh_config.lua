Config = {}

-- Debug mód
Config.Debug = false -- Pokud je nastaveno na true, budou se zobrazovat debug informace
Config.Interactions = "lunar_bridge" -- ox_target, lunar_bridge

-- Konfigurace výtahu
Config.Elevators = {
    ["realhub"] = {
        label = "Výtah RealHub",
        locations = {
            {
                floor = 1,
                label = "Přízemí",
                coords = vector3(-85.7702, -818.7269, 36.0280),
                size = vec3(3, 1, 3),
                rotation = 0,
                teleportCoords = vector3(-83.6949, -819.2820, 36.0280) -- Souřadnice pro teleport po dokončení výtahu
            },
            {
                floor = 2,
                label = "Kancelář",
                coords = vector3(-75.3711, -827.2158, 243.3857),
                size = vec3(3, 1, 3),
                rotation = 0,
                teleportCoords = vector3(-76.0406, -825.4285, 243.3857) -- Souřadnice pro teleport po dokončení výtahu
            },
        },
        jobRequired = "realhub", -- Zde lze nastavit specifický job nebo nechat jako nil pro všechny
        minGrade = 0, -- Minimální grade, který je potřeba k použití výtahu
    },
    ["EMS"] = {
        label = "Výtah PillBox",
        locations = {
            {
                floor = -3,
                label = "Garáže",
                coords = vector3(330.6962, -591.4665, 28.9011),
                size = vec3(1, 0.5, 1),
                rotation = 0,
                teleportCoords = vector3(330.9868, -593.1831, 28.9011) -- Souřadnice pro teleport po dokončení výtahu
            },
            {
                floor = 1,
                label = "Přízemí",
                coords = vector3(330.6962, -591.4665, 43.2821),
                size = vec3(1, 0.5, 1),
                rotation = 0,
                teleportCoords = vector3(330.9868, -593.1831, 43.2821) -- Souřadnice pro teleport po dokončení výtahu
            },
        },
        jobRequired = "ambulance", -- Zde lze nastavit specifický job nebo nechat jako nil pro všechny
        minGrade = 0, -- Minimální grade, který je potřeba k použití výtahu
    },
    ["EMS2"] = {
        label = "Výtah PillBox",
        locations = {
            {
                floor = -3,
                label = "Garáže",
                coords = vector3(336.3410, -581.5956, 28.9011),
                size = vec3(1, 0.5, 1),
                rotation = 0,
                teleportCoords = vector3(335.8364, -579.7203, 28.9011) -- Souřadnice pro teleport po dokončení výtahu
            },
            {
                floor = 1,
                label = "Přízemí",
                coords = vector3(336.3410, -581.5956, 43.2910),
                size = vec3(1, 0.5, 1),
                rotation = 0,
                teleportCoords = vector3(335.8364, -579.7203, 43.2910) -- Souřadnice pro teleport po dokončení výtahu
            },
            {
                floor = 1,
                label = "Laboratoř",
                coords = vector3(336.3410, -581.5956, 48.2409),
                size = vec3(1, 0.5, 1),
                rotation = 0,
                teleportCoords = vector3(335.8364, -579.7203, 48.2409) -- Souřadnice pro teleport po dokončení výtahu
            },
            {
                floor = 10,
                label = "Heliport",
                coords = vector3(336.3039, -581.4811, 74.0705),
                size = vec3(1, 0.5, 1),
                rotation = 0,
                teleportCoords = vector3(335.8364, -579.7203, 74.0705) -- Souřadnice pro teleport po dokončení výtahu
            },
        },
        jobRequired = "ambulance", -- Zde lze nastavit specifický job nebo nechat jako nil pro všechny
        minGrade = 0, -- Minimální grade, který je potřeba k použití výtahu
    },
    ["Vespucci"] = {
        label = "Výtah VESPUCCI",
        locations = {
            {
                floor = -3,
                label = "Garáže #2",
                coords = vector3(-1094.1094, -846.5181, 3.73),
                size = vec3(1, 0.5, 1),
                rotation = 90,
                teleportCoords = vector3(-1094.0564, -848.1028, 3.73) -- Souřadnice pro teleport po dokončení výtahu
            },
            {
                floor = -1,
                label = "Garáže #1",
                coords = vector3(-1094.1094, -846.5181, 11.5525),
                size = vec3(1, 0.5, 1),
                rotation = 90,
                teleportCoords = vector3(-1094.0564, -848.1028, 11.5525) -- Souřadnice pro teleport po dokončení výtahu
            },
            {
                floor = 1,
                label = "Přízemí",
                coords = vector3(-1094.1094, -846.5181, 19.3742),
                size = vec3(1, 0.5, 1),
                rotation = 0,
                teleportCoords = vector3(-1094.0564, -848.1028, 19.3744) -- Souřadnice pro teleport po dokončení výtahu
            },
            {
                floor = 2,
                label = "Akademka",
                coords = vector3(-1094.0825, -846.4940, 23.2850),
                size = vec3(1, 0.5, 1),
                rotation = 0,
                teleportCoords = vector3(-1093.7781, -848.4523, 23.2853) -- Souřadnice pro teleport po dokončení výtahu
            },
            {
                floor = 3,
                label = "Detective Office",
                coords = vector3(-1094.0804, -846.4986, 27.1959),
                size = vec3(1, 0.5, 1),
                rotation = 0,
                teleportCoords = vector3(-1093.7781, -848.4523, 27.1959) -- Souřadnice pro teleport po dokončení výtahu
            },
            {
                floor = 4,
                label = "Kanceláře",
                coords = vector3(-1094.0839, -846.5010, 31.1068),
                size = vec3(1, 0.5, 1),
                rotation = 0,
                teleportCoords = vector3(-1093.7781, -848.4523, 31.1068) -- Souřadnice pro teleport po dokončení výtahu
            },
            {
                floor = 4,
                label = "Kanceláře Vedení",
                coords = vector3(-1094.1010, -846.5188, 35.0175),
                size = vec3(1, 0.5, 1),
                rotation = 0,
                teleportCoords = vector3(-1093.7781, -848.4523, 35.0175) -- Souřadnice pro teleport po dokončení výtahu
            },
            {
                floor = 5,
                label = "Heliport",
                coords = vector3(-1094.0994, -846.5210, 38.8801),
                size = vec3(1, 0.5, 1),
                rotation = 0,
                teleportCoords = vector3(-1093.7781, -848.4523, 38.8801) -- Souřadnice pro teleport po dokončení výtahu
            }
        },
        jobRequired = {'police', 'sheriff', 'sahp'}, -- Zde lze nastavit specifický job nebo nechat jako nil pro všechny
        minGrade = 0, -- Minimální grade, který je potřeba k použití výtahu
    },
    ["Vespucci2"] = {
        label = "Výtah VESPUCCI",
        locations = {
            {
                floor = -3,
                label = "Garáže #2",
                coords = vector3(-1096.3965, -848.3781, 3.73),
                size = vec3(1, 0.5, 1),
                rotation = 90,
                teleportCoords = vector3(-1096.1874, -850.1260, 3.73) -- Souřadnice pro teleport po dokončení výtahu
            },
            {
                floor = -1,
                label = "Garáže #1",
                coords = vector3(-1096.3965, -848.3781, 11.5525),
                size = vec3(1, 0.5, 1),
                rotation = 90,
                teleportCoords = vector3(-1096.1874, -850.1260, 11.5525) -- Souřadnice pro teleport po dokončení výtahu
            },
            {
                floor = 1,
                label = "Přízemí",
                coords = vector3(-1096.3965, -848.3781, 19.3742),
                size = vec3(1, 0.5, 1),
                rotation = 0,
                teleportCoords = vector3(-1096.1874, -850.1260, 19.3744) -- Souřadnice pro teleport po dokončení výtahu
            },
            {
                floor = 2,
                label = "Akademka",
                coords = vector3(-1096.3965, -848.3781, 23.2850),
                size = vec3(1, 0.5, 1),
                rotation = 0,
                teleportCoords = vector3(-1096.1874, -850.1260, 23.2853) -- Souřadnice pro teleport po dokončení výtahu
            },
            {
                floor = 3,
                label = "Detective Office",
                coords = vector3(-1096.3965, -848.3781, 27.1959),
                size = vec3(1, 0.5, 1),
                rotation = 0,
                teleportCoords = vector3(-1096.1874, -850.1260, 27.1959) -- Souřadnice pro teleport po dokončení výtahu
            },
            {
                floor = 4,
                label = "Kanceláře",
                coords = vector3(-1096.3965, -848.3781, 31.1068),
                size = vec3(1, 0.5, 1),
                rotation = 0,
                teleportCoords = vector3(-1096.1874, -850.1260, 31.1068) -- Souřadnice pro teleport po dokončení výtahu
            },
            {
                floor = 4,
                label = "Kanceláře Vedení",
                coords = vector3(-1096.3965, -848.3781, 35.0175),
                size = vec3(1, 0.5, 1),
                rotation = 0,
                teleportCoords = vector3(-1096.1874, -850.1260, 35.0175) -- Souřadnice pro teleport po dokončení výtahu
            },
            {
                floor = 5,
                label = "Heliport",
                coords = vector3(-1096.3965, -848.3781, 38.8801),
                size = vec3(1, 0.5, 1),
                rotation = 0,
                teleportCoords = vector3(-1096.1874, -850.1260, 38.8801) -- Souřadnice pro teleport po dokončení výtahu
            }
        },
        jobRequired = {'police', 'sheriff', 'sahp'}, -- Zde lze nastavit specifický job nebo nechat jako nil pro všechny
        minGrade = 0, -- Minimální grade, který je potřeba k použití výtahu
    },
}