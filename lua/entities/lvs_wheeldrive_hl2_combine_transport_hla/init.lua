AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
include("shared.lua")

function ENT:OnSpawn(PObj)
    // fix angles
    self:SetAngles(self:GetAngles() - Angle(0,90,0))

    local Pod = self:AddDriverSeat(Vector(-15,30,55), Angle(0,0,0))
    Pod.ExitPos = Vector(-80,60,70)

    Pod = self:AddPassengerSeat(Vector(15,35,60), Angle(0,0,0))
    Pod.ExitPos = Vector(80,60,70)

    Pod = self:AddPassengerSeat(Vector(36,-22,55), Angle(0,90,0))
    Pod.ExitPos = Vector(0,-22,55)

    Pod = self:AddPassengerSeat(Vector(36,-51,55), Angle(0,90,0))
    Pod.ExitPos = Vector(0,-51,55)

    Pod = self:AddPassengerSeat(Vector(36,-80,55), Angle(0,90,0))
    Pod.ExitPos = Vector(0,-80,55)

    Pod = self:AddPassengerSeat(Vector(-36,-22,55), Angle(0,-90,0))
    Pod.ExitPos = Vector(-0,-22,55)

    Pod = self:AddPassengerSeat(Vector(-36,-51,55), Angle(0,-90,0))
    Pod.ExitPos = Vector(-0,-51,55)

    Pod = self:AddPassengerSeat(Vector(-36,-80,55), Angle(0,-90,0))
    Pod.ExitPos = Vector(-0,-80,55)

    self:AddEngine(Vector(0,125,54))

    local FrontRadius = 24
    local RearRadius = 24
    local FL, FR, RL, RR, ForwardAngle = self:AddWheelsUsingRig(FrontRadius, RearRadius)

    local FrontAxle = self:DefineAxle({
        Axle = {
            ForwardAngle = ForwardAngle,
            SteerType = LVS.WHEEL_STEER_FRONT,
            SteerAngle = 30,
            TorqueFactor = 0.3,
            BrakeFactor = 1,
        },
        Wheels = {FL, FR},
        Suspension = {
            Height = 20,
            MaxTravel = 7,
            ControlArmLength = 100,
            SpringConstant = 200000,
            SpringDamping = 2000,
            SpringRelativeDamping = 2000,
        },
    })

    local RearAxle = self:DefineAxle({
        Axle = {
            ForwardAngle = ForwardAngle,
            SteerType = LVS.WHEEL_STEER_NONE,
            TorqueFactor = 0.7,
            BrakeFactor = 1,
            UseHandbrake = true,
        },
        Wheels = {RL, RR},
        Suspension = {
            Height = 20,
            MaxTravel = 7,
            ControlArmLength = 100,
            SpringConstant = 200000,
            SpringDamping = 2000,
            SpringRelativeDamping = 2000,
        },
    })
    
    local var = GetConVar("lvs_car_hl2_combinetransport_health") and GetConVar("lvs_car_hl2_combinetransport_health"):GetInt() or 1600
    self.MaxHealth = var
    self:SetHP(var)
end

DEFINE_BASECLASS("lvs_base_wheeldrive")

function ENT:Think()
    local kmh = math.Round( self:GetVelocity():Length() * 0.09144, 0 )
    if ( kmh > 15 ) then
        if ( ( self.nextStress or 0 ) < CurTime() ) then
            self.nextStress = CurTime() + math.Rand(10, 30)

            local stress = "lvs/halflife2/cars/prisoner/stress_0" .. math.random(8) .. ".wav"
            self:EmitSound(stress, 70, math.random(90, 110), LVS.EngineVolume)
        end

        if ( ( self.nextBounce or 0 ) < CurTime() ) then
            self.nextBounce = CurTime() + math.Rand(5, 15)
            self:EmitSound("lvs/halflife2/cars/prisoner/bounce_01.wav", 70, math.random(95, 105), LVS.EngineVolume)

            local physObject = self:GetPhysicsObject()
            if ( IsValid(physObject) ) then
                local force = physObject:GetVelocity()
                force.z = force.z + 512
                force = force * 512

                local offset = self:LocalToWorld(Vector(0, -128, 0))
                physObject:ApplyForceOffset(force, offset)
            end

            local filter = RecipientFilter()
            filter:AddPlayers(self:GetEveryone())

            util.ScreenShake(self:GetPos(), 5, 5, SoundDuration("lvs/halflife2/cars/prisoner/bounce_01.wav"), 256, true, filter)
        end
    end

    return BaseClass.Think(self)
end