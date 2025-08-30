ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Combine APC"
ENT.Author = "Riggs"
ENT.Information = ""
ENT.Category = "[LVS] - Half Life 2"
ENT.IconOverride = "materials/entities/combineapc.png"

ENT.Spawnable = true
ENT.AdminSpawnable = false

ENT.VehicleCategory = "Half Life 2"
ENT.VehicleSubCategory = "Combine"

ENT.MDL = "models/combine_apc_driveable.mdl"
ENT.MDL_DESTROYED = "models/combine_apc_destroyed_gib01.mdl"

ENT.GibModels = {
    "models/combine_apc_destroyed_gib02.mdl",
    "models/combine_apc_destroyed_gib03.mdl",
    "models/combine_apc_destroyed_gib04.mdl",
    "models/combine_apc_destroyed_gib05.mdl",
    "models/combine_apc_destroyed_gib06.mdl",
}

ENT.AITEAM = 1

ENT.TransGears = 1
ENT.TransGearsReverse = 1

ENT.EngineSounds = {}

ENT.Lights = {
    {
        Trigger = "high",
        Sprites = {
            {pos = Vector(102,0,60), colorR = 0, colorG = 180, colorB = 220, colorA = 150, size = 60},
            {pos = Vector(100,-3,56), colorR = 0, colorG = 180, colorB = 220, colorA = 150, size = 20}
        },
        ProjectedTextures = {
            {pos = Vector(102,0,60), ang = Angle(0,0,0), colorR = 0, colorG = 180, colorB = 220, colorA = 150, shadows = false, brightness = 10, farz = 3072, fov = 90}
        },
    },
    {
        Trigger = "main",
        Sprites = {
            {pos = Vector(102,0,60), colorR = 0, colorG = 180, colorB = 220, colorA = 150, size = 60},
            {pos = Vector(100,-3,56), colorR = 0, colorG = 180, colorB = 220, colorA = 150, size = 20}
        },
        ProjectedTextures = {
            {pos = Vector(102,0,60.5), ang = Angle(10,0,0), colorR = 0, colorG = 180, colorB = 220, colorA = 150, shadows = false, brightness = 4, farz = 3072, fov = 90}
        },
    },
}