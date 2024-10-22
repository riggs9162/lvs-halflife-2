AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include("shared.lua")
include("sv_wheels.lua")

local passengerSeats = {
	{Vector(-30,-20,0), Angle(0,0,0)},
	{Vector(0,-20,0), Angle(0,0,0)},
	{Vector(30,-20,0), Angle(0,0,0)},
	{Vector(60,-20,0), Angle(0,0,0)},
	
	{Vector(-30,20,0), Angle(0,180,0)},
	{Vector(0,20,0), Angle(0,180,0)},
	{Vector(30,20,0), Angle(0,180,0)},
	{Vector(60,20,0), Angle(0,180,0)},
}
function ENT:OnSpawn( PObj )
	local DriverSeat = self:AddDriverSeat( Vector(100,50,0), Angle(0,-90,0) )
	DriverSeat:SetCameraDistance( 0.5 )
	DriverSeat.HidePlayer = true
	DriverSeat.ExitPos = Vector(125, 0, 0)
	
	for k, v in pairs(passengerSeats) do
		local PassengerSeat = self:AddPassengerSeat(v[1], v[2])
		PassengerSeat.ExitPos = Vector(125, 0, 0)
	end

	self:AddEngineSound( Vector(0, 0, 50) )

	self:DrawShadow( false )

	local Body = ents.Create( "lvs_dropship_body" )
	Body:SetPos( self:GetPos() )
	Body:SetAngles( self:GetAngles() )
	Body:Spawn()
	Body:Activate()
	Body:SetParent( self )
	Body:SetSkin(1)
	Body:PlayAnimation("cargo_idle")
	self:DeleteOnRemove( Body )
	self:TransferCPPI( Body )
	self:SetBody( Body )

	local Rotor = self:AddRotor( Vector(-133,0,55), Angle(0,0,0), 0, 4000 )
	Rotor:SetRotorEffects( true )

	local ID = self:LookupAttachment( "Muzzle" )
	local Muzzle = self:GetAttachment( ID )
	self.weaponSND = self:AddSoundEmitter( self:WorldToLocal( Muzzle.Pos ), "npc/combine_gunship/gunship_fire_loop1.wav" )
	self.weaponSND:SetSoundLevel( 110 )
	self.weaponSND:SetParent( self, ID )
end

function ENT:OnRemoved()
	if ( self.deploySound ) then
		self.deploySound:Stop()
		self.deploySound = nil
	end
end

function ENT:OnTick()
	self:AnimBody()
end

function ENT:AnimBody()
	local PhysObj = self:GetPhysicsObject()

	if not IsValid( PhysObj ) then return end

	local Body = self:GetBody()

	if not IsValid( Body ) then return end

	local FT = FrameTime()

	local LocalAngles = self:WorldToLocalAngles( self:GetAimVector():Angle() )

	local VelL = self:WorldToLocal( self:GetPos() + self:GetVelocity() )
	local AngVel = PhysObj:GetAngleVelocity()
	local Steer = self:GetSteer()

	self._smVelL = self._smVelL and self._smVelL + (VelL - self._smVelL) * FT * 10 or VelL
	self._smSteer = self._smSteer and self._smSteer + (Steer - self._smSteer) *  FT * 0.2 or Steer

	local accel = self._smVelL.x * 0.0015 + self._smSteer.y * 2 + self._smVelL.z * 0.008
	local sway = -self._smVelL.y * 0.002 - self._smSteer.x * 5

	Body:SetPoseParameter("cargo_body_accel", self:GetDeploying() and 0 or accel)
	Body:SetPoseParameter("cargo_body_sway", sway)
end
