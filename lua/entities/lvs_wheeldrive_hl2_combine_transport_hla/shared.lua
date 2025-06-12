ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Combine Transporter (HL:A)"
ENT.Author = "Riggs"
ENT.Information = ""
ENT.Category = "[LVS] - Half Life 2"
ENT.IconOverride = "materials/entities/combinetransport_hla.png"

ENT.Spawnable = true
ENT.AdminSpawnable = false

ENT.VehicleCategory = "Half Life 2"
ENT.VehicleSubCategory = "Combine"

ENT.SpawnNormalOffset = 0

ENT.MDL = "models/ctvehicles/hla/prisoner_transport.mdl"
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
ENT.MaxVelocity = 800
ENT.MaxVelocityReverse = 200
ENT.EngineCurve = 0.6
ENT.EngineTorque = 300
ENT.EngineIdleRPM = 900
ENT.EngineMaxRPM = 4800
ENT.ThrottleRate = 1.6
ENT.ForceLinearMultiplier = 2.0
ENT.ForceAngleMultiplier = 1.2
ENT.TransGears = 1
ENT.TransGearsReverse = 1
ENT.TransMinGearHoldTime = 0.5
ENT.TransShiftSpeed = 0.2
ENT.TransWobble = 0
ENT.TransWobbleTime = 0
ENT.SteerSpeed = 2.0
ENT.SteerReturnSpeed = 8
ENT.FastSteerActiveVelocity = 200
ENT.FastSteerAngleClamp = 8
ENT.FastSteerDeactivationDriftAngle = 6
ENT.SteerAssistDeadZoneAngle = 2
ENT.SteerAssistMaxAngle = 20
ENT.SteerAssistExponent = 1.5
ENT.SteerAssistMultiplier = 3
ENT.MouseSteerAngle = 15
ENT.MouseSteerExponent = 2.0
ENT.PhysicsWeightScale = 3.0
ENT.PhysicsMass = 3000
ENT.PhysicsInertia = Vector(1500,1500,750)
ENT.PhysicsDampingSpeed = 40000
ENT.PhysicsDampingForward = true
ENT.PhysicsDampingReverse = true
ENT.WheelPhysicsMass = 250
ENT.WheelPhysicsInertia = Vector(10,8,10)
ENT.WheelPhysicsTireHeight = 16
ENT.AutoReverseVelocity = 50
ENT.WheelBrakeLockupRPM = 50
ENT.WheelBrakeForce = 100
ENT.WheelSideForce = 650
ENT.WheelDownForce = 950
ENT.AllowSuperCharger = false
ENT.AllowTurbo = false

ENT.EngineSounds = {
    {
        sound = "lvs/vehicles/222/eng_idle_loop.wav",
        Volume = 1,
        Pitch = 70,
        PitchMul = 30,
        SoundLevel = 75,
        SoundType = LVS.SOUNDTYPE_IDLE_ONLY,
    },
    {
        sound = "lvs/vehicles/222/eng_loop.wav",
        Volume = 1,
        Pitch = 30,
        PitchMul = 100,
        SoundLevel = 85,
        SoundType = LVS.SOUNDTYPE_NONE,
        UseDoppler = true,
    },
}

ENT.Lights = {}

// taken from one of the armed vehicles
function ENT:OnSetupDataTables()
    self:AddDT("Float", "LeftDoor")
    self:AddDT("Float", "RightDoor")
end

function ENT:InitWeapons()
    local weapon = {}
    weapon.Icon = Material("lvs/engine.png")
    weapon.Ammo = -1
    weapon.Delay = 1
    weapon.HeatRateUp = 0
    weapon.HeatRateDown = 0
    weapon.Attack = function(ent)
        self.bDoorsOpen = !self.bDoorsOpen
        self:EmitSound("doors/door_metal_rusty_move1.wav")
        self:EmitSound("lvs/halflife2/cars/prisoner/door_start.wav", 70, 100, nil, CHAN_AUTO)
        timer.Simple((100 * FrameTime()) * 0.5, function() // gay
            if ( !IsValid(self) ) then
                return
            end

        self:EmitSound("lvs/halflife2/cars/prisoner/door_stop.wav", 70, 100, nil, CHAN_AUTO)
        end)
    end
    weapon.OnThink = function(ent, active)
        local Rate = 100 * FrameTime()
        local Pitch = math.ApproachAngle(self:GetLeftDoor(), self.bDoorsOpen and -90 or 0, Rate)
        local Yaw = math.ApproachAngle(self:GetRightDoor(), self.bDoorsOpen and -90 or 0, Rate)

        self:SetLeftDoor(Pitch)
        self:SetRightDoor(Yaw)

        self:ManipulateBoneAngles(self:LookupBone("l_door"), Angle(0, self:GetLeftDoor(), 0))
        self:ManipulateBoneAngles(self:LookupBone("r_door"), Angle(0, self:GetRightDoor(), 0))
    end

    self:AddWeapon(weapon)
end