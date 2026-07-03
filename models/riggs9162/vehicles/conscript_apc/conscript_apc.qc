// Created by Crowbar 0.74

$ModelName "riggs9162/vehicles/conscript_apc.mdl"

$BodyGroup "body"
{
	studio "apc_ref.smd"
}

$Include "conscript_apc_lod.qci"

$SurfaceProp "metalvehicle"

$Contents "solid"

$MostlyOpaque

$Origin 0 0 0 270

$IllumPosition 0 -10.877 58.465

$CDMaterials "models\apc\"

// This list shows the VMT file names used in the SMD files.
// "apc001.vmt"

$Attachment "muzzle_left" "muzzle_left" 0 0 0 rotate 0 0 0
$Attachment "muzzle_right" "muzzle_right" 0 0 0 rotate 0 0 0

// $Include "conscript_apc_box.qci"

$Include "conscript_apc_bone.qci"

$Include "conscript_apc_animation.qci"

$Include "conscript_apc_collision.qci"
