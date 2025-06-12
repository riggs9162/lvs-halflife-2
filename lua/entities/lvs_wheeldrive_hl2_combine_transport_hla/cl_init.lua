include("shared.lua")

function ENT:UpdatePoseParameters(steer, speed_kmh, engine_rpm, throttle, brake, handbrake, clutch, gear, temperature, fuel, oil, ammeter)
    self:SetPoseParameter("vehicle_steer", steer)

    if ( throttle > 0.25 ) then
        if ( !self.bMoving ) then
            self:EmitSound("vehicles/apc/apc_firstgear_loop1.wav", 75, 100)

            self.bMoving = true
        end
    else
        if ( self.bMoving ) then
            self:StopSound("vehicles/apc/apc_firstgear_loop1.wav")
            self:EmitSound("vehicles/apc/apc_slowdown_fast_loop5.wav", 75, 100)

            timer.Simple(1.5, function()
                if ( IsValid(self) ) then
                    self:StopSound("vehicles/apc/apc_slowdown_fast_loop5.wav")
                end
            end)

            self.bMoving = false
        end
    end
end

function ENT:OnEngineActiveChanged(bActive)
    if ( bActive ) then
        self:EmitSound("lvs/halflife2/cars/prisoner/start.wav", 80, 100, nil, CHAN_AUTO)
        self:EmitSound("lvs/halflife2/cars/prisoner/amb_01.wav", 60, 100, nil, CHAN_AUTO)
    else
        self:EmitSound("lvs/halflife2/cars/prisoner/stop.wav", 80, 100, nil, CHAN_AUTO)
        self:StopSound("lvs/halflife2/cars/prisoner/amb_01.wav")
        self:StopSound("vehicles/apc/apc_start_loop3.wav")
    end
end

function ENT:OnRemoved()
    self:StopSound("vehicles/apc/apc_start_loop3.wav")
    self:StopSound("vehicles/apc/apc_shutdown.wav")
    self:StopSound("vehicles/apc/apc_firstgear_loop1.wav")
    self:StopSound("vehicles/apc/apc_slowdown_fast_loop5.wav")
    self:StopSound("lvs/halflife2/cars/prisoner/amb_01.wav")
    self:StopSound("lvs/halflife2/cars/prisoner/start.wav")
    self:StopSound("lvs/halflife2/cars/prisoner/stop.wav")
    for i = 1, 8 do
        self:StopSound("lvs/halflife2/cars/prisoner/stress_0" .. i .. ".wav")
    end
end