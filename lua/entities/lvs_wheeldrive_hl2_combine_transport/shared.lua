ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Combine Transporter (HL2)"
ENT.Author = "Riggs"
ENT.Information = ""
ENT.Category = "[LVS] - Half Life 2"
ENT.IconOverride = "materials/entities/combinetransport.png"

ENT.Spawnable = true
ENT.AdminSpawnable = false

ENT.VehicleCategory = "Half Life 2"
ENT.VehicleSubCategory = "Combine"

ENT.SpawnNormalOffset = 0

ENT.MDL = "models/vehicles/combine_transport.mdl"
ENT.MDL_DESTROYED = "models/vehicles/combine_transport.mdl"
ENT.GibModels = {
    "models/combine_apc_destroyed_gib02.mdl",
    "models/combine_apc_destroyed_gib03.mdl",
    "models/combine_apc_destroyed_gib04.mdl",
    "models/combine_apc_destroyed_gib05.mdl",
    "models/combine_apc_destroyed_gib06.mdl",
}

ENT.DSArmorIgnoreForce = 3000
ENT.CannonArmorPenetration = 9200

ENT.AITEAM = 1

ENT.MaxHealth = 2000
ENT.MaxHealthEngine = 300
ENT.MaxHealthFuelTank = 100
ENT.MaxVelocity = 1000
ENT.MaxVelocityReverse = 400
ENT.EngineCurve = 0.60
ENT.EngineTorque = 450
ENT.EngineIdleRPM = 900
ENT.EngineMaxRPM = 5000
ENT.ThrottleRate = 1.5
ENT.TransGears = 1
ENT.TransGearsReverse = 1
ENT.TransMinGearHoldTime = 1.0
ENT.TransShiftSpeed = 0.25
ENT.TransWobble = 0
ENT.TransWobbleTime = 0
ENT.TransWobbleFrequencyMultiplier = 1.0
ENT.SteerSpeed = 1.2
ENT.SteerReturnSpeed = 6
ENT.FastSteerActiveVelocity = 250
ENT.FastSteerAngleClamp = 10
ENT.FastSteerDeactivationDriftAngle = 5
ENT.SteerAssistDeadZoneAngle = 2
ENT.SteerAssistMaxAngle = 25
ENT.SteerAssistExponent = 1.5
ENT.SteerAssistMultiplier = 3
ENT.MouseSteerAngle = 15
ENT.MouseSteerExponent = 2.0
ENT.ForceLinearMultiplier = 1.5
ENT.ForceAngleMultiplier = 1.0
ENT.PhysicsWeightScale = 2.5
ENT.PhysicsMass = 4000
ENT.PhysicsInertia = Vector(4000, 4000, 2000)
ENT.PhysicsDampingSpeed = 25000
ENT.PhysicsDampingForward = true
ENT.PhysicsDampingReverse = true
ENT.WheelPhysicsMass = 200
ENT.WheelPhysicsInertia = Vector(40, 40, 40)
ENT.WheelPhysicsTireHeight = 8
ENT.AutoReverseVelocity = 50
ENT.WheelBrakeLockupRPM = 40
ENT.WheelBrakeForce = 2000
ENT.WheelSideForce = 3000
ENT.WheelDownForce = 4000
ENT.AllowSuperCharger = false
ENT.AllowTurbo = false

ENT.EngineSounds = {}

ENT.Lights = {
    {
        Trigger = "high", 
        Sprites = {
            {pos = Vector(0,102,60.5), colorR = 0, colorG = 180, colorB = 220, colorA = 150, size = 60},
            {pos = Vector(3,99.5,56.5), colorR = 0, colorG = 180, colorB = 220, colorA = 150, size = 20}
        },
        ProjectedTextures = {
            {pos = Vector(0,102,60.5), ang = Angle(0,90,0), colorR = 0, colorG = 180, colorB = 220, colorA = 150, shadows = false, brightness = 10, farz = 3072, fov = 90}
        },
    },
    {
        Trigger = "main", 
        Sprites = {
            {pos = Vector(0,102,60.5), colorR = 0, colorG = 180, colorB = 220, colorA = 150, size = 60},
            {pos = Vector(3,99.5,56.5), colorR = 0, colorG = 180, colorB = 220, colorA = 150, size = 20}
        },
        ProjectedTextures = {
            {pos = Vector(0,102,60.5), ang = Angle(10,90,0), colorR = 0, colorG = 180, colorB = 220, colorA = 150, shadows = false, brightness = 4, farz = 3072, fov = 90}
        },
    },
}