ENT.Base = "lvs_wheeldrive_hl2_rebel_jeep"
ENT.PrintName = "Jeep (Armed)"
ENT.Category = "[LVS] - Half Life 2"
ENT.IconOverride = "materials/entities/lvs/hl2/rebel_jeep_armed.png"

ENT.Spawnable = true
ENT.VehicleCategory = "Half Life 2"
ENT.VehicleSubCategory = "Resistance"

-- taken from one of the armed vehicles
function ENT:OnSetupDataTables()
    self:AddDT("Float", "TurretPitch")
    self:AddDT("Float", "TurretYaw")
    self:AddDT("Bool", "TurretEnabled")
    if SERVER then self:SetTurretEnabled(true) end
end

function ENT:IsTurretEnabled()
    if self:GetHP() <= 0 then return false end
    if not self:GetTurretEnabled() then return false end
    return IsValid(self:GetDriver()) or self:GetAI()
end

CreateConVar("lvs_car_hl2_jeep_damage", 10, nil, "Controls the damage of the main gun from the Jeep.")

function ENT:InitWeapons()
    local weapon = {}
    weapon.Icon = Material("lvs/weapons/bullet.png")
    weapon.Ammo = -1
    weapon.Delay = 0.2
    weapon.HeatRateUp = 0.2
    weapon.HeatRateDown = 0.35
    weapon.Attack = function(ent)
        local ID = ent:LookupAttachment("muzzle")
        local Muzzle = ent:GetAttachment(ID)
        if not Muzzle then return end
        local bullet = {}
        bullet.Src = Muzzle.Pos
        bullet.Dir = Muzzle.Ang:Forward()
        bullet.Spread = Vector(0.015, 0.015, 0)
        bullet.Tracer = 1
        bullet.TracerName = "lvs_hl2_gausstracer"
        bullet.Force = 50
        bullet.HullSize = 15
        bullet.Damage = tonumber(GetConVar("lvs_car_hl2_jeep_damage"):GetString())
        bullet.Velocity = 30000
        bullet.Attacker = ent:GetDriver()
        bullet.Callback = function(att, tr, dmginfo)
            local effect = ents.Create("env_spark")
            effect:SetKeyValue("targetname", "target")
            effect:SetPos(tr.HitPos + tr.HitNormal * 2)
            effect:SetAngles(tr.HitNormal:Angle())
            effect:Spawn()
            effect:SetKeyValue("spawnflags", "128")
            effect:SetKeyValue("Magnitude", 5)
            effect:SetKeyValue("TrailLength", 3)
            effect:Fire("SparkOnce")
            effect:Fire("kill", "", 0.21)
            util.Decal("fadingscorch", tr.HitPos - tr.HitNormal, tr.HitPos + tr.HitNormal)
        end

        local PhysObj = ent:GetPhysicsObject()
        if IsValid(PhysObj) then PhysObj:ApplyForceOffset(-Muzzle.Ang:Forward() * 1000, Muzzle.Pos) end
        ent:EmitSound("weapons/gauss/fire1.wav", 90, math.Rand(95, 105), 1, CHAN_STATIC)
        ent:LVSFireBullet(bullet)
    end

    weapon.OnSelect = function(ent) if ent.SetTurretEnabled then ent:SetTurretEnabled(true) end end
    weapon.OnDeselect = function(ent) if ent.SetTurretEnabled then ent:SetTurretEnabled(false) end end
    weapon.OnThink = function(ent, active)
        if not ent:GetTurretEnabled() then return end
        local AimAngles = self:WorldToLocalAngles(self:GetAimVector():Angle())
        local AimRate = 250 * FrameTime()
        local Pitch = math.ApproachAngle(self:GetTurretPitch(), -AimAngles.p, AimRate)
        local Yaw = math.ApproachAngle(self:GetTurretYaw(), -AimAngles.y + 90, AimRate)
        self:SetTurretPitch(math.Clamp(Pitch, -60, 60))
        self:SetTurretYaw(math.Clamp(Yaw, -120, 120))
        self:SetPoseParameter("vehicle_weapon_pitch", self:GetTurretPitch())
        self:SetPoseParameter("vehicle_weapon_yaw", self:GetTurretYaw())
    end

    weapon.OnOverheat = function(ent) ent:EmitSound("lvs/overheat.wav") end
    self:AddWeapon(weapon)

    weapon = {}
    weapon.Icon = Material("lvs/weapons/tank_noturret.png")
    weapon.Ammo = -1
    weapon.Delay = 0
    weapon.HeatRateUp = 0
    weapon.HeatRateDown = 0
    self:AddWeapon(weapon)
end
