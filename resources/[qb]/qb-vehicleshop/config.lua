Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Commission = 0.10 -- Percent that goes to sales person from a full car sale 10%
Config.FinanceCommission = 0.05 -- Percent that goes to sales person from a finance sale 5%
Config.FinanceZone = vector3(-29.53, -1103.67, 26.42)-- Where the finance menu is located
Config.PaymentWarning = 10 -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 24 -- time in hours between payment being due
Config.MinimumDown = 10 -- minimum percentage allowed down
Config.MaximumPayments = 24 -- maximum payments allowed
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
            vector2(-60.61231994629, -1096.7795410156),
            vector2(-57.056945800782, -1087.1346435546),
            vector2(-36.279327392578, -1093.5657958984),
            vector2(-31.351961135864, -1095.5341796875),
            vector2(-32.026584625244, -1101.5876464844),
            vector2(-27.022811889648, -1103.2084960938),
            vector2(-31.436880111694, -1116.2130126954),
            vector2(-36.35075378418, -1114.3848876954),
            vector2(-34.80675125122, -1109.5966796875),
            vector2(-58.409889221192, -1100.8640136718)
            },
            ['minZ'] = 26.422330856324, -- min height of the shop zone
            ['maxZ'] = 26.422441482544, -- max height of the shop zone
            ['size'] = 2.75 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Premium Deluxe Motorsport', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['Categories'] = {-- Categories available to browse
            ['sportsclassics'] = 'Sports Classics',
            ['sedans'] = 'Sedans',
            ['coupes'] = 'Coupes',
            ['suvs'] = 'SUVs',
            ['offroad'] = 'Offroad',
            ['muscle'] = 'Muscle',
            ['compacts'] = 'Compacts',
            ['motorcycles'] = 'Motorcycles',
            ['vans'] = 'Vans',
            ['cycles'] = 'Bicycles'
        },
        ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-45.67, -1098.34, 26.42), -- Blip Location
        ['ReturnLocation'] = vector3(-44.74, -1082.58, 26.68), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-45.65, -1093.66, 25.44, 69.5), -- where the vehicle will spawn on display
                defaultVehicle = 'adder', -- Default display vehicle
                chosenVehicle = 'adder', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-48.27, -1101.86, 25.44, 294.5),
                defaultVehicle = 'schafter2',
                chosenVehicle = 'schafter2'
            },
            [3] = {
                coords = vector4(-39.6, -1096.01, 25.44, 66.5),
                defaultVehicle = 'comet2',
                chosenVehicle = 'comet2'
            },
            [4] = {
                coords = vector4(-51.21, -1096.77, 25.44, 254.5),
                defaultVehicle = 'vigero',
                chosenVehicle = 'vigero'
            },
            [5] = {
                coords = vector4(-40.18, -1104.13, 25.44, 338.5),
                defaultVehicle = 't20',
                chosenVehicle = 't20'
            },
            [6] = {
                coords = vector4(-43.31, -1099.02, 25.44, 52.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            },
            [7] = {
                coords = vector4(-50.66, -1093.05, 25.44, 222.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            },
            [8] = {
                coords = vector4(-44.28, -1102.47, 25.44, 298.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            }
        },
    },
    ['luxury'] = {
        ['Type'] = 'managed', -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1260.6973876953, -349.21334838867),
                vector2(-1268.6248779297, -352.87365722656),
                vector2(-1274.1533203125, -358.29794311523),
                vector2(-1273.8425292969, -362.73715209961),
                vector2(-1270.5701904297, -368.6716003418),
                vector2(-1266.0561523438, -375.14080810547),
                vector2(-1244.3684082031, -362.70278930664),
                vector2(-1249.8704833984, -352.03326416016),
                vector2(-1252.9503173828, -345.85726928711)
            },
            ['minZ'] = 36.646457672119,
            ['maxZ'] = 37.516143798828,
            ['size'] = 2.75 -- size of the vehicles zones
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'Luxury Vehicle Shop',
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['Categories'] = {
            ['super'] = 'Super',
            ['sports'] = 'Sports'
        },
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(-1255.6, -361.16, 36.91),
        ['ReturnLocation'] = vector3(-1231.46, -349.86, 37.33),
        ['VehicleSpawn'] = vector4(-1231.46, -349.86, 37.33, 26.61),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1265.31, -354.44, 35.91, 205.08),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx'
            },
            [2] = {
                coords = vector4(-1270.06, -358.55, 35.91, 247.08),
                defaultVehicle = 'italigtb',
                chosenVehicle = 'italigtb'
            },
            [3] = {
                coords = vector4(-1269.21, -365.03, 35.91, 297.12),
                defaultVehicle = 'nero',
                chosenVehicle = 'nero'
            },
            [4] = {
                coords = vector4(-1252.07, -364.2, 35.91, 56.44),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            },
            [5] = {
                coords = vector4(-1255.49, -365.91, 35.91, 55.63),
                defaultVehicle = 'carbonrs',
                chosenVehicle = 'carbonrs'
            },
            [6] = {
                coords = vector4(-1249.21, -362.97, 35.91, 53.24),
                defaultVehicle = 'hexer',
                chosenVehicle = 'hexer'
            },
        }
    },
    ['pdmotorpool'] = {
        ['Type'] = 'free-use', -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1260.6973876953, -349.21334838867),
                vector2(-1268.6248779297, -352.87365722656),
                vector2(-1274.1533203125, -358.29794311523),
                vector2(-1273.8425292969, -362.73715209961),
                vector2(-1270.5701904297, -368.6716003418),
                vector2(-1266.0561523438, -375.14080810547),
                vector2(-1244.3684082031, -362.70278930664),
                vector2(-1249.8704833984, -352.03326416016),
                vector2(-1252.9503173828, -345.85726928711)
            },
            ['minZ'] = 36.646457672119,
            ['maxZ'] = 37.516143798828,
            ['size'] = 2.75 -- size of the vehicles zones
        },
        ['Job'] = 'police', -- Name of job or none
        ['ShopLabel'] = 'LSPD Motorpool ',
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['Categories'] = {
            ['govpd'] = 'Police Department Vehicles',
        },
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(-1255.6, -361.16, 36.91),
        ['ReturnLocation'] = vector3(-1231.46, -349.86, 37.33),
        ['VehicleSpawn'] = vector4(422.59, -1014.8, 29.06, 89.10),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(471.97, -1088.97, 29.2, 90),
                defaultVehicle = 'valor5rb',
                chosenVehicle = 'valor5rb'
            },
            [2] = {
                coords = vector4(471.97, -1092.47, 29.2, 90),
                defaultVehicle = 'valor8rb',
                chosenVehicle = 'valor8rb'
            },
            [3] = {
                coords = vector4(471.97, -1095.78, 29.2, 90),
                defaultVehicle = 'valor12rb',
                chosenVehicle = 'valor12rb'
            },
        }
    },
    ['sandersmc'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
              vector2(237.4825744629, -1165.4262695312),
              vector2(235.57423400878, -1154.4498291016),
              vector2(238.21621704102, -1152.9028320312),
              vector2(240.19371032714, -1150.6397705078),
              vector2(240.65119934082, -1146.7977294922),
              vector2(268.67349243164, -1146.6474609375),
              vector2(268.63076782226, -1165.5838623046)
            },
            ['minZ'] = 29.1, -- min height of the shop zone
            ['maxZ'] = 29.3, -- max height of the shop zone
            ['size'] = 2.75 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Sanders Motorcycle Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['Categories'] = {-- Categories available to browse
            ['motorcycles'] = 'Motorcycles',
        },
        ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(238.49, -1157.69, 28.8), -- Blip Location
        ['ReturnLocation'] = vector3(-44.74, -1082.58, 26.68), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(238.49, -1157.69, 28.8, 98), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(238.49, -1157.69, 28.8, 98), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(243.86, -1149.23, 29.22, 150), -- where the vehicle will spawn on display
                defaultVehicle = 'vader', -- Default display vehicle
                chosenVehicle = 'vader', -- Same as default but is dynamically changed when swapping vehicles
            }
        },
    }, -- Add your next table under this comma
    ['boats'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-729.39, -1315.84),
                vector2(-766.81, -1360.11),
                vector2(-754.21, -1371.49),
                vector2(-716.94, -1326.88)
            },
            ['minZ'] = 0.0, -- min height of the shop zone
            ['maxZ'] = 5.0, -- max height of the shop zone
            ['size'] = 6.2 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Marina Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 410, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['Categories'] = {-- Categories available to browse
            ['boats'] = 'Boats'
        },
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-738.25, -1334.38, 1.6), -- Blip Location
        ['ReturnLocation'] = vector3(-714.34, -1343.31, 0.0), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-727.87, -1353.1, -0.17, 137.09), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-727.05, -1326.59, 0.00, 229.5), -- where the vehicle will spawn on display
                defaultVehicle = 'seashark', -- Default display vehicle
                chosenVehicle = 'seashark' -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-732.84, -1333.5, -0.50, 229.5),
                defaultVehicle = 'dinghy',
                chosenVehicle = 'dinghy'
            },
            [3] = {
                coords = vector4(-737.84, -1340.83, -0.50, 229.5),
                defaultVehicle = 'speeder',
                chosenVehicle = 'speeder'
            },
            [4] = {
                coords = vector4(-741.53, -1349.7, -2.00, 229.5),
                defaultVehicle = 'marquis',
                chosenVehicle = 'marquis'
            },
        },
    },
    ['air'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-1607.58, -3141.7),
                vector2(-1672.54, -3103.87),
                vector2(-1703.49, -3158.02),
                vector2(-1646.03, -3190.84)
            },
            ['minZ'] = 12.99, -- min height of the shop zone
            ['maxZ'] = 16.99, -- max height of the shop zone
            ['size'] = 7.0, -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Air Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 251, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['Categories'] = {-- Categories available to browse
            ['helicopters'] = 'Helicopters',
            ['planes'] = 'Planes'
        },
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-1652.76, -3143.4, 13.99), -- Blip Location
        ['ReturnLocation'] = vector3(-1628.44, -3104.7, 13.94), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-1617.49, -3086.17, 13.94, 329.2), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1651.36, -3162.66, 12.99, 346.89), -- where the vehicle will spawn on display
                defaultVehicle = 'volatus', -- Default display vehicle
                chosenVehicle = 'volatus' -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-1668.53, -3152.56, 12.99, 303.22),
                defaultVehicle = 'luxor2',
                chosenVehicle = 'luxor2'
            },
            [3] = {
                coords = vector4(-1632.02, -3144.48, 12.99, 31.08),
                defaultVehicle = 'nimbus',
                chosenVehicle = 'nimbus'
            },
            [4] = {
                coords = vector4(-1663.74, -3126.32, 12.99, 275.03),
                defaultVehicle = 'frogger',
                chosenVehicle = 'frogger'
            },
        },
    },
}
