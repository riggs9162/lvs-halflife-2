$modelname "combine_apc_driveable.mdl"

$bodygroup "Body"
{
	studio "apc_new_cabin_6h.smd"
}
$bodygroup "Holo Hull"
{
	blank
	studio "apc_holo_hull.smd"
}
$bodygroup "Holo Rockets"
{
	blank
	studio "apc_holo_rockets.smd"
}
$bodygroup "Holo Jump"
{
	blank
	studio "apc_holo_jump.smd"
}

$origin 0 0 0 0

$surfaceprop "metal"

$contents "solid"

$illumposition -5.311 0 68.376

$mostlyopaque

$cdmaterials "models\combine_apc\"

$texturegroup "skinfamilies"
{
	{ "glass"    "apc01blue"    "apc01_cabin"    }
	{ "glass_on" "apc01blue_on" "apc01_cabin_on" }
}

$attachment "damage0" "APC.Frame" 0 20 70 rotate 0 0 0
$attachment "damage1" "APC.Frame" 20 30 -100 rotate 0 0 0
$attachment "damage2" "APC.Frame" -20 40 -60 rotate 0 0 0
$attachment "damage3" "APC.Frame" -40 0 80 rotate 0 0 0
$attachment "gun_base" "APC.Frame" 14.46 45.53 -1.25 rotate -90 -90 0
$attachment "gun_def" "APC.Gun_Base" 0 6.14 0 rotate -90 -90 0
$attachment "muzzle" "APC.Gun_Base" -0.11 6.14 52.67 rotate -90 -90 0
$attachment "vehicle_driver_eyes" "apc_driver_eyes" 0 1.5 0 rotate 0 180 90
$attachment "cannon_muzzle" "APC.Frame" 0 14.99 58.81 rotate -90 -90 0
$attachment "wheel_fl" "APC.Wheel_FL_Rotate" 0 0 0 rotate 0 0 0
$attachment "wheel_fr" "APC.Wheel_FR_Rotate" 0 0 0 rotate 0 0 0
$attachment "wheel_rl" "APC.Wheel_RL_Rotate" 0 0 0 rotate 0 0 0
$attachment "wheel_rr" "APC.Wheel_RR_Rotate" 0 0 0 rotate 0 0 0
$attachment "vehicle_engine" "APC.Frame" 0 0 50 rotate 0 0 0
$attachment "headlight_left" "APC.Gun_Base" -0.11 6.14 52.67 rotate -90 -90 0
$attachment "steering_wheel" "apc_steering_wheel" 0 0 0 rotate 0 0 0
$attachment "driver" "APC.Frame" 0 0 6 rotate -85 90 -180
$attachment "attach_repair_origin" "APC.Frame" 0 -60.72 6.74 rotate -90 -90 0
$attachment "cabin_sprite_right" "APC.Frame" 7 28.7 27.2 rotate 70 50 -45
$attachment "cabin_sprite_left" "APC.Frame" 8.5 28.7 27.8 rotate 70 50 -45
$attachment "holo_jump" "holo_jump" 0 0 0 rotate 0 0 0
$attachment "gun_indicator" "APC.Gun_Base" -2.4 4 2 rotate 0 180 90

$cbox 0 0 0 0 0 0

$bbox -74.037 -127.941 0 74.037 117.319 136.751

$hboxset "default"
$hbox 0 "APC" -40 -42.5 21.5 120 42.5 106.5
$hbox 0 "APC" -120 -60 28 -40 60 84
$hbox 0 "apc_driver_door" -4 -30 -2 44 0 2
$hboxset "entryboxes"
$hbox 1 "APC" -80 -120 0 80 -8 96
$hbox 2 "APC" -80 8 0 80 120 96
$skipboneinbbox

$definebone "APC.Frame" "" 0 6.7425 60.718807 0 0 89.999982 0 0 0 0 0 0
$definebone "APC.Wheel_RL_Shock" "APC.Frame" 47.470718 -32.811935 -69.652519 0 0 0 0 0 0 0 0 0
$definebone "APC.Wheel_RL_Rotate" "APC.Wheel_RL_Shock" 5.529282 -0.000002 0.000008 0 0 0 0 0 0 0 0 0
$definebone "APC.Wheel_FL_Shock" "APC.Frame" 46.15773 -32.811943 73.94265 0 0 0 0 0 0 0 0 0
$definebone "APC.Wheel_FL_Turn" "APC.Wheel_FL_Shock" 0 0.000004 0.000008 0 0 0 0 0 0 0 0 0
$definebone "APC.Wheel_FL_Rotate" "APC.Wheel_FL_Turn" 6.84227 0 0 0 0 0 0 0 0 0 0 0
$definebone "APC.Wheel_FR_Shock" "APC.Frame" -45.946465 -32.811943 73.94265 0.000019 180.000005 180.000005 0 0 0 0 0 0
$definebone "APC.Wheel_FR_Turn" "APC.Wheel_FR_Shock" 0 0.000004 -0.000008 0 0 0 0 0 0 0 0 0
$definebone "APC.Wheel_FR_Rotate" "APC.Wheel_FR_Turn" 6.84227 0 0 0 0 0 0 0 0 0 0 0
$definebone "APC.Wheel_RR_Shock" "APC.Frame" -47.470718 -32.811935 -69.652519 0.000019 180.000005 180.000005 0 0 0 0 0 0
$definebone "APC.Wheel_RR_Rotate" "APC.Wheel_RR_Shock" 5.529282 0 -0.000008 0 0 0 0 0 0 0 0 0
$definebone "APC.piston" "APC.Frame" 14.458628 38.283417 -1.261086 0 0 0 0 0 0 0 0 0
$definebone "APC.Gun_Base" "APC.piston" 0.003263 1.102089 0.007908 0 0 0 0 0 0 0 0 0
$definebone "APC_frame_to_steer" "APC.Frame" 2.933979 0 0 -9.892747 96.175839 0.129775 0 0 0 0 0 0
$definebone "apc_steering_wheel" "APC_frame_to_steer" 33.535892 -0.000003 0.00001 85.878864 -26.986252 -110.30108 0 0 0 0 0 0
$definebone "APC_frame_to_door" "APC.Frame" -9.700352 0 0 -2.279283 -6.945338 0 0 0 0 0 0 0
$definebone "apc_driver_door" "APC_frame_to_door" 35.979698 -0.000004 -0.000011 -1.230943 101.90662 -87.76957 0 0 0 0 0 0
$definebone "apc_driver_eyes" "APC.Frame" -0.302953 47.167763 -17.999983 89.999982 0 0 0 0 0 0 0 0
$definebone "speedometer_r" "APC.Frame" -3.677085 35.155518 5.074934 -21.346918 89.999982 179.999964 0 0 0 0 0 0
$definebone "speedometer_l" "APC.Frame" 2.612381 35.155533 5.074935 -21.347435 89.999982 -179.999964 0 0 0 0 0 0
$definebone "handbrake" "APC.Frame" -7.31783 17.303291 21.674274 67.43551 -138.968204 128.786741 0 0 0 0 0 0
$definebone "headlight_tumbler" "APC.Frame" 4.500354 14.368538 22.202911 71.2787 -89.999982 -179.999964 0 0 0 0 0 0
$definebone "holo_jump" "APC.Frame" -1.962268 37.898026 6.026344 -0.000458 -179.999978 89.999982 0 0 0 0 0 0
$definebone "APC" "" 0 0 0 0 -89.999982 0 0 0 0 0 0 0


$poseparameter "vehicle_weapon_yaw" -180 180 loop 0
$poseparameter "vehicle_weapon_pitch" -45 45 loop 0
$poseparameter "vehicle_steer" -1 1 loop 0
$poseparameter "vehicle_wheel_fl_height" -1 1 loop 0
$poseparameter "vehicle_wheel_fr_height" -1 1 loop 0
$poseparameter "vehicle_wheel_rl_height" -1 1 loop 0
$poseparameter "vehicle_wheel_rr_height" -1 1 loop 0
$poseparameter "vehicle_wheel_fl_spin" -180 180 loop 360
$poseparameter "vehicle_wheel_fr_spin" -180 180 loop 360
$poseparameter "vehicle_wheel_rl_spin" -180 180 loop 360
$poseparameter "vehicle_wheel_rr_spin" -180 180 loop 360
$poseparameter "vehicle_driver_door" -1 1 loop 0
$poseparameter "vehicle_door_pos" 0 1 loop 0
$poseparameter "vehicle_guage" 0 1 loop 0
$poseparameter "vehicle_headlight_tumbler" 0 1 loop 0
$poseparameter "vehicle_handbrake" 0 1 loop 0
$poseparameter "vehicle_holo_jump" 0 1 loop 0

$weightlist "weights_weapon_pitch" {
	 "APC.Frame" 0
	 "APC.Wheel_RL_Shock" 0
	 "APC.Wheel_RL_Rotate" 0
	 "APC.Wheel_FL_Shock" 0
	 "APC.Wheel_FL_Turn" 0
	 "APC.Wheel_FL_Rotate" 0
	 "APC.Wheel_FR_Shock" 0
	 "APC.Wheel_FR_Turn" 0
	 "APC.Wheel_FR_Rotate" 0
	 "APC.Wheel_RR_Shock" 0
	 "APC.Wheel_RR_Rotate" 0
	 "APC.piston" 1
	 "APC.Gun_Base" 1
	 "APC_frame_to_steer" 0
	 "apc_steering_wheel" 0
	 "APC_frame_to_door" 0
	 "apc_driver_door" 0
	 "apc_driver_eyes" 0
	 "speedometer_r" 0
	 "speedometer_l" 0
	 "handbrake" 0
	 "headlight_tumbler" 0
	 "holo_jump" 0
	 "APC" 0
}

$weightlist "weights_turning" {
	 "APC.Frame" 0
	 "APC.Wheel_RL_Shock" 0
	 "APC.Wheel_RL_Rotate" 0
	 "APC.Wheel_FL_Shock" 0
	 "APC.Wheel_FL_Turn" 1
	 "APC.Wheel_FL_Rotate" 0
	 "APC.Wheel_FR_Shock" 0
	 "APC.Wheel_FR_Turn" 1
	 "APC.Wheel_FR_Rotate" 0
	 "APC.Wheel_RR_Shock" 0
	 "APC.Wheel_RR_Rotate" 0
	 "APC.piston" 0
	 "APC.Gun_Base" 0
	 "APC_frame_to_steer" 0
	 "apc_steering_wheel" 1
	 "APC_frame_to_door" 0
	 "apc_driver_door" 0
	 "apc_driver_eyes" 0
	 "speedometer_r" 0
	 "speedometer_l" 0
	 "handbrake" 0
	 "headlight_tumbler" 0
	 "holo_jump" 0
	 "APC" 0
}

$weightlist "weights_wheel_fr_suspension" {
	 "APC.Frame" 0
	 "APC.Wheel_RL_Shock" 0
	 "APC.Wheel_RL_Rotate" 0
	 "APC.Wheel_FL_Shock" 0
	 "APC.Wheel_FL_Turn" 0
	 "APC.Wheel_FL_Rotate" 0
	 "APC.Wheel_FR_Shock" 1
	 "APC.Wheel_FR_Turn" 0
	 "APC.Wheel_FR_Rotate" 0
	 "APC.Wheel_RR_Shock" 0
	 "APC.Wheel_RR_Rotate" 0
	 "APC.piston" 0
	 "APC.Gun_Base" 0
	 "APC_frame_to_steer" 0
	 "apc_steering_wheel" 0
	 "APC_frame_to_door" 0
	 "apc_driver_door" 0
	 "apc_driver_eyes" 0
	 "speedometer_r" 0
	 "speedometer_l" 0
	 "handbrake" 0
	 "headlight_tumbler" 0
	 "holo_jump" 0
	 "APC" 0
}

$weightlist "weights_wheel_fr_spin" {
	 "APC.Frame" 0
	 "APC.Wheel_RL_Shock" 0
	 "APC.Wheel_RL_Rotate" 0
	 "APC.Wheel_FL_Shock" 0
	 "APC.Wheel_FL_Turn" 0
	 "APC.Wheel_FL_Rotate" 0
	 "APC.Wheel_FR_Shock" 0
	 "APC.Wheel_FR_Turn" 0
	 "APC.Wheel_FR_Rotate" 1
	 "APC.Wheel_RR_Shock" 0
	 "APC.Wheel_RR_Rotate" 0
	 "APC.piston" 0
	 "APC.Gun_Base" 0
	 "APC_frame_to_steer" 0
	 "apc_steering_wheel" 0
	 "APC_frame_to_door" 0
	 "apc_driver_door" 0
	 "apc_driver_eyes" 0
	 "speedometer_r" 0
	 "speedometer_l" 0
	 "handbrake" 0
	 "headlight_tumbler" 0
	 "holo_jump" 0
	 "APC" 0
}

$weightlist "weights_wheel_fl_suspension" {
	 "APC.Frame" 0
	 "APC.Wheel_RL_Shock" 0
	 "APC.Wheel_RL_Rotate" 0
	 "APC.Wheel_FL_Shock" 1
	 "APC.Wheel_FL_Turn" 0
	 "APC.Wheel_FL_Rotate" 0
	 "APC.Wheel_FR_Shock" 0
	 "APC.Wheel_FR_Turn" 0
	 "APC.Wheel_FR_Rotate" 0
	 "APC.Wheel_RR_Shock" 0
	 "APC.Wheel_RR_Rotate" 0
	 "APC.piston" 0
	 "APC.Gun_Base" 0
	 "APC_frame_to_steer" 0
	 "apc_steering_wheel" 0
	 "APC_frame_to_door" 0
	 "apc_driver_door" 0
	 "apc_driver_eyes" 0
	 "speedometer_r" 0
	 "speedometer_l" 0
	 "handbrake" 0
	 "headlight_tumbler" 0
	 "holo_jump" 0
	 "APC" 0
}

$weightlist "weights_wheel_fl_spin" {
	 "APC.Frame" 0
	 "APC.Wheel_RL_Shock" 0
	 "APC.Wheel_RL_Rotate" 0
	 "APC.Wheel_FL_Shock" 0
	 "APC.Wheel_FL_Turn" 0
	 "APC.Wheel_FL_Rotate" 1
	 "APC.Wheel_FR_Shock" 0
	 "APC.Wheel_FR_Turn" 0
	 "APC.Wheel_FR_Rotate" 0
	 "APC.Wheel_RR_Shock" 0
	 "APC.Wheel_RR_Rotate" 0
	 "APC.piston" 0
	 "APC.Gun_Base" 0
	 "APC_frame_to_steer" 0
	 "apc_steering_wheel" 0
	 "APC_frame_to_door" 0
	 "apc_driver_door" 0
	 "apc_driver_eyes" 0
	 "speedometer_r" 0
	 "speedometer_l" 0
	 "handbrake" 0
	 "headlight_tumbler" 0
	 "holo_jump" 0
	 "APC" 0
}

$weightlist "weights_wheel_rr_suspension" {
	 "APC.Frame" 0
	 "APC.Wheel_RL_Shock" 0
	 "APC.Wheel_RL_Rotate" 0
	 "APC.Wheel_FL_Shock" 0
	 "APC.Wheel_FL_Turn" 0
	 "APC.Wheel_FL_Rotate" 0
	 "APC.Wheel_FR_Shock" 0
	 "APC.Wheel_FR_Turn" 0
	 "APC.Wheel_FR_Rotate" 0
	 "APC.Wheel_RR_Shock" 1
	 "APC.Wheel_RR_Rotate" 0
	 "APC.piston" 0
	 "APC.Gun_Base" 0
	 "APC_frame_to_steer" 0
	 "apc_steering_wheel" 0
	 "APC_frame_to_door" 0
	 "apc_driver_door" 0
	 "apc_driver_eyes" 0
	 "speedometer_r" 0
	 "speedometer_l" 0
	 "handbrake" 0
	 "headlight_tumbler" 0
	 "holo_jump" 0
	 "APC" 0
}

$weightlist "weights_wheel_rr_spin" {
	 "APC.Frame" 0
	 "APC.Wheel_RL_Shock" 0
	 "APC.Wheel_RL_Rotate" 0
	 "APC.Wheel_FL_Shock" 0
	 "APC.Wheel_FL_Turn" 0
	 "APC.Wheel_FL_Rotate" 0
	 "APC.Wheel_FR_Shock" 0
	 "APC.Wheel_FR_Turn" 0
	 "APC.Wheel_FR_Rotate" 0
	 "APC.Wheel_RR_Shock" 0
	 "APC.Wheel_RR_Rotate" 1
	 "APC.piston" 0
	 "APC.Gun_Base" 0
	 "APC_frame_to_steer" 0
	 "apc_steering_wheel" 0
	 "APC_frame_to_door" 0
	 "apc_driver_door" 0
	 "apc_driver_eyes" 0
	 "speedometer_r" 0
	 "speedometer_l" 0
	 "handbrake" 0
	 "headlight_tumbler" 0
	 "holo_jump" 0
	 "APC" 0
}

$weightlist "weights_wheel_rl_suspension" {
	 "APC.Frame" 0
	 "APC.Wheel_RL_Shock" 1
	 "APC.Wheel_RL_Rotate" 0
	 "APC.Wheel_FL_Shock" 0
	 "APC.Wheel_FL_Turn" 0
	 "APC.Wheel_FL_Rotate" 0
	 "APC.Wheel_FR_Shock" 0
	 "APC.Wheel_FR_Turn" 0
	 "APC.Wheel_FR_Rotate" 0
	 "APC.Wheel_RR_Shock" 0
	 "APC.Wheel_RR_Rotate" 0
	 "APC.piston" 0
	 "APC.Gun_Base" 0
	 "APC_frame_to_steer" 0
	 "apc_steering_wheel" 0
	 "APC_frame_to_door" 0
	 "apc_driver_door" 0
	 "apc_driver_eyes" 0
	 "speedometer_r" 0
	 "speedometer_l" 0
	 "handbrake" 0
	 "headlight_tumbler" 0
	 "holo_jump" 0
	 "APC" 0
}

$weightlist "weights_wheel_rl_spin" {
	 "APC.Frame" 0
	 "APC.Wheel_RL_Shock" 0
	 "APC.Wheel_RL_Rotate" 1
	 "APC.Wheel_FL_Shock" 0
	 "APC.Wheel_FL_Turn" 0
	 "APC.Wheel_FL_Rotate" 0
	 "APC.Wheel_FR_Shock" 0
	 "APC.Wheel_FR_Turn" 0
	 "APC.Wheel_FR_Rotate" 0
	 "APC.Wheel_RR_Shock" 0
	 "APC.Wheel_RR_Rotate" 0
	 "APC.piston" 0
	 "APC.Gun_Base" 0
	 "APC_frame_to_steer" 0
	 "apc_steering_wheel" 0
	 "APC_frame_to_door" 0
	 "apc_driver_door" 0
	 "apc_driver_eyes" 0
	 "speedometer_r" 0
	 "speedometer_l" 0
	 "handbrake" 0
	 "headlight_tumbler" 0
	 "holo_jump" 0
	 "APC" 0
}

$weightlist "weights_door_pos" {
	 "APC.Frame" 0
	 "APC.Wheel_RL_Shock" 0
	 "APC.Wheel_RL_Rotate" 0
	 "APC.Wheel_FL_Shock" 0
	 "APC.Wheel_FL_Turn" 0
	 "APC.Wheel_FL_Rotate" 0
	 "APC.Wheel_FR_Shock" 0
	 "APC.Wheel_FR_Turn" 0
	 "APC.Wheel_FR_Rotate" 0
	 "APC.Wheel_RR_Shock" 0
	 "APC.Wheel_RR_Rotate" 0
	 "APC.piston" 0
	 "APC.Gun_Base" 0
	 "APC_frame_to_steer" 0
	 "apc_steering_wheel" 0
	 "APC_frame_to_door" 0
	 "apc_driver_door" 1
	 "apc_driver_eyes" 0
	 "speedometer_r" 0
	 "speedometer_l" 0
	 "handbrake" 0
	 "headlight_tumbler" 0
	 "holo_jump" 0
	 "APC" 0
}

$weightlist "weights_speedometer" {
	 "APC.Frame" 0
	 "APC.Wheel_RL_Shock" 0
	 "APC.Wheel_RL_Rotate" 0
	 "APC.Wheel_FL_Shock" 0
	 "APC.Wheel_FL_Turn" 0
	 "APC.Wheel_FL_Rotate" 0
	 "APC.Wheel_FR_Shock" 0
	 "APC.Wheel_FR_Turn" 0
	 "APC.Wheel_FR_Rotate" 0
	 "APC.Wheel_RR_Shock" 0
	 "APC.Wheel_RR_Rotate" 0
	 "APC.piston" 0
	 "APC.Gun_Base" 0
	 "APC_frame_to_steer" 0
	 "apc_steering_wheel" 0
	 "APC_frame_to_door" 0
	 "apc_driver_door" 0
	 "apc_driver_eyes" 0
	 "speedometer_r" 1
	 "speedometer_l" 1
	 "handbrake" 0
	 "headlight_tumbler" 0
	 "holo_jump" 0
	 "APC" 0
}

$weightlist "weights_headlight_tumbler" {
	 "APC.Frame" 0
	 "APC.Wheel_RL_Shock" 0
	 "APC.Wheel_RL_Rotate" 0
	 "APC.Wheel_FL_Shock" 0
	 "APC.Wheel_FL_Turn" 0
	 "APC.Wheel_FL_Rotate" 0
	 "APC.Wheel_FR_Shock" 0
	 "APC.Wheel_FR_Turn" 0
	 "APC.Wheel_FR_Rotate" 0
	 "APC.Wheel_RR_Shock" 0
	 "APC.Wheel_RR_Rotate" 0
	 "APC.piston" 0
	 "APC.Gun_Base" 0
	 "APC_frame_to_steer" 0
	 "apc_steering_wheel" 0
	 "APC_frame_to_door" 0
	 "apc_driver_door" 0
	 "apc_driver_eyes" 0
	 "speedometer_r" 0
	 "speedometer_l" 0
	 "handbrake" 0
	 "headlight_tumbler" 1
	 "holo_jump" 0
	 "APC" 0
}

$weightlist "weights_handbrake" {
	 "APC.Frame" 0
	 "APC.Wheel_RL_Shock" 0
	 "APC.Wheel_RL_Rotate" 0
	 "APC.Wheel_FL_Shock" 0
	 "APC.Wheel_FL_Turn" 0
	 "APC.Wheel_FL_Rotate" 0
	 "APC.Wheel_FR_Shock" 0
	 "APC.Wheel_FR_Turn" 0
	 "APC.Wheel_FR_Rotate" 0
	 "APC.Wheel_RR_Shock" 0
	 "APC.Wheel_RR_Rotate" 0
	 "APC.piston" 0
	 "APC.Gun_Base" 0
	 "APC_frame_to_steer" 0
	 "apc_steering_wheel" 0
	 "APC_frame_to_door" 0
	 "apc_driver_door" 0
	 "apc_driver_eyes" 0
	 "speedometer_r" 0
	 "speedometer_l" 0
	 "handbrake" 1
	 "headlight_tumbler" 0
	 "holo_jump" 0
	 "APC" 0
}

$weightlist "weights_holo_jump" {
	 "APC.Frame" 0
	 "APC.Wheel_RL_Shock" 0
	 "APC.Wheel_RL_Rotate" 0
	 "APC.Wheel_FL_Shock" 0
	 "APC.Wheel_FL_Turn" 0
	 "APC.Wheel_FL_Rotate" 0
	 "APC.Wheel_FR_Shock" 0
	 "APC.Wheel_FR_Turn" 0
	 "APC.Wheel_FR_Rotate" 0
	 "APC.Wheel_RR_Shock" 0
	 "APC.Wheel_RR_Rotate" 0
	 "APC.piston" 0
	 "APC.Gun_Base" 0
	 "APC_frame_to_steer" 0
	 "apc_steering_wheel" 0
	 "APC_frame_to_door" 0
	 "apc_driver_door" 0
	 "apc_driver_eyes" 0
	 "speedometer_r" 0
	 "speedometer_l" 0
	 "handbrake" 0
	 "headlight_tumbler" 0
	 "holo_jump" 1
	 "APC" 0
}

$animation "zero_speed_corrective_animation" "combine_apc_driveable_anims\zero_speed_corrective_animation.smd" {
}

$animation "full_speed_corrective_animation" "combine_apc_driveable_anims\full_speed_corrective_animation.smd" {
}

$animation "headlight_off_corrective_animation" "combine_apc_driveable_anims\headlight_off_corrective_animation.smd" {
}

$animation "headlight_on_corrective_animation" "combine_apc_driveable_anims\headlight_on_corrective_animation.smd" {
}

$animation "handbrake_off_corrective_animation" "combine_apc_driveable_anims\handbrake_off_corrective_animation.smd" {
}

$animation "handbrake_on_corrective_animation" "combine_apc_driveable_anims\handbrake_on_corrective_animation.smd" {
}

$animation "holo_jump_full_corrective_animation" "combine_apc_driveable_anims\holo_jump_full_corrective_animation.smd" {
}

$animation "holo_jump_zero_corrective_animation" "combine_apc_driveable_anims\holo_jump_zero_corrective_animation.smd" {
}

$animation "aim_up_corrective_animation" "combine_apc_driveable_anims\aim_up_corrective_animation.smd" {
	fps 30
}

$animation "aim_down_corrective_animation" "combine_apc_driveable_anims\aim_down_corrective_animation.smd" {
	fps 30
}

$animation "aim_back_corrective_animation" "combine_apc_driveable_anims\aim_back_corrective_animation.smd" {
	fps 30
}

$animation "aim_right_corrective_animation" "combine_apc_driveable_anims\aim_right_corrective_animation.smd" {
	fps 30
}

$animation "aim_front_corrective_animation" "combine_apc_driveable_anims\aim_front_corrective_animation.smd" {
	fps 30
}

$animation "aim_left_corrective_animation" "combine_apc_driveable_anims\aim_left_corrective_animation.smd" {
	fps 30
}

$animation "turn_left_corrective_animation" "combine_apc_driveable_anims\turn_left_corrective_animation.smd" {
	fps 30
}

$animation "turn_right_corrective_animation" "combine_apc_driveable_anims\turn_right_corrective_animation.smd" {
	fps 30
}

$animation "wheel_fr_down_corrective_animation" "combine_apc_driveable_anims\wheel_fr_down_corrective_animation.smd" {
	fps 30
}

$animation "wheel_fr_up_corrective_animation" "combine_apc_driveable_anims\wheel_fr_up_corrective_animation.smd" {
	fps 30
}

$animation "wheel_fr_spin0_corrective_animation" "combine_apc_driveable_anims\wheel_fr_spin0_corrective_animation.smd" {
	fps 30
}

$animation "wheel_fr_spin120_corrective_animation" "combine_apc_driveable_anims\wheel_fr_spin120_corrective_animation.smd" {
	fps 30
}

$animation "wheel_fr_spin240_corrective_animation" "combine_apc_driveable_anims\wheel_fr_spin240_corrective_animation.smd" {
	fps 30
}

$animation "wheel_fl_down_corrective_animation" "combine_apc_driveable_anims\wheel_fl_down_corrective_animation.smd" {
	fps 30
}

$animation "wheel_fl_up_corrective_animation" "combine_apc_driveable_anims\wheel_fl_up_corrective_animation.smd" {
	fps 30
}

$animation "wheel_fl_spin0_corrective_animation" "combine_apc_driveable_anims\wheel_fl_spin0_corrective_animation.smd" {
	fps 30
}

$animation "wheel_fl_spin120_corrective_animation" "combine_apc_driveable_anims\wheel_fl_spin120_corrective_animation.smd" {
	fps 30
}

$animation "wheel_fl_spin240_corrective_animation" "combine_apc_driveable_anims\wheel_fl_spin240_corrective_animation.smd" {
	fps 30
}

$animation "wheel_rr_down_corrective_animation" "combine_apc_driveable_anims\wheel_rr_down_corrective_animation.smd" {
	fps 30
}

$animation "wheel_rr_up_corrective_animation" "combine_apc_driveable_anims\wheel_rr_up_corrective_animation.smd" {
	fps 30
}

$animation "wheel_rr_spin0_corrective_animation" "combine_apc_driveable_anims\wheel_rr_spin0_corrective_animation.smd" {
	fps 30
}

$animation "wheel_rr_spin120_corrective_animation" "combine_apc_driveable_anims\wheel_rr_spin120_corrective_animation.smd" {
	fps 30
}

$animation "wheel_rr_spin240_corrective_animation" "combine_apc_driveable_anims\wheel_rr_spin240_corrective_animation.smd" {
	fps 30
}

$animation "wheel_rl_down_corrective_animation" "combine_apc_driveable_anims\wheel_rl_down_corrective_animation.smd" {
	fps 30
}

$animation "wheel_rl_up_corrective_animation" "combine_apc_driveable_anims\wheel_rl_up_corrective_animation.smd" {
	fps 30
}

$animation "wheel_rl_spin0_corrective_animation" "combine_apc_driveable_anims\wheel_rl_spin0_corrective_animation.smd" {
	fps 30
}

$animation "wheel_rl_spin120_corrective_animation" "combine_apc_driveable_anims\wheel_rl_spin120_corrective_animation.smd" {
	fps 30
}

$animation "wheel_rl_spin240_corrective_animation" "combine_apc_driveable_anims\wheel_rl_spin240_corrective_animation.smd" {
	fps 30
}

$animation "neutral" "combine_apc_driveable_anims\neutral.smd" {
	fps 30
}

$animation "aim_neutral" "combine_apc_driveable_anims\aim_neutral.smd" {
	fps 30
}

$animation "aim_up" "combine_apc_driveable_anims\aim_up.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_up_corrective_animation" 0
	weightlist "weights_weapon_pitch"
}

$animation "aim_down" "combine_apc_driveable_anims\aim_down.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_down_corrective_animation" 0
	weightlist "weights_weapon_pitch"
}

$animation "aim_right" "combine_apc_driveable_anims\aim_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_right_corrective_animation" 0
	weightlist "weights_weapon_pitch"
}

$animation "aim_left" "combine_apc_driveable_anims\aim_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_left_corrective_animation" 0
	weightlist "weights_weapon_pitch"
}

$animation "aim_back" "combine_apc_driveable_anims\aim_back.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_back_corrective_animation" 0
	weightlist "weights_weapon_pitch"
}

$animation "aim_front" "combine_apc_driveable_anims\aim_front.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_front_corrective_animation" 0
	weightlist "weights_weapon_pitch"
}

$animation "turn_left" "combine_apc_driveable_anims\turn_left.smd" {
	fps 30
	weightlist "weights_turning"
}

$animation "turn_right" "combine_apc_driveable_anims\turn_right.smd" {
	fps 30
	weightlist "weights_turning"
}

$animation "wheel_fr_down" "combine_apc_driveable_anims\wheel_fr_down.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_fr_down_corrective_animation" 0
	weightlist "weights_wheel_fr_suspension"
}

$animation "wheel_fr_up" "combine_apc_driveable_anims\wheel_fr_up.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_fr_up_corrective_animation" 0
	weightlist "weights_wheel_fr_suspension"
}

$animation "wheel_fr_spin0" "combine_apc_driveable_anims\wheel_fr_spin0.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_fr_spin0_corrective_animation" 0
	weightlist "weights_wheel_fr_spin"
}

$animation "wheel_fr_spin120" "combine_apc_driveable_anims\wheel_fr_spin120.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_fr_spin120_corrective_animation" 0
	weightlist "weights_wheel_fr_spin"
}

$animation "wheel_fr_spin240" "combine_apc_driveable_anims\wheel_fr_spin240.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_fr_spin240_corrective_animation" 0
	weightlist "weights_wheel_fr_spin"
}

$animation "wheel_fl_down" "combine_apc_driveable_anims\wheel_fl_down.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_fl_down_corrective_animation" 0
	weightlist "weights_wheel_fl_suspension"
}

$animation "wheel_fl_up" "combine_apc_driveable_anims\wheel_fl_up.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_fl_up_corrective_animation" 0
	weightlist "weights_wheel_fl_suspension"
}

$animation "wheel_fl_spin0" "combine_apc_driveable_anims\wheel_fl_spin0.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_fl_spin0_corrective_animation" 0
	weightlist "weights_wheel_fl_spin"
}

$animation "wheel_fl_spin120" "combine_apc_driveable_anims\wheel_fl_spin120.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_fl_spin120_corrective_animation" 0
	weightlist "weights_wheel_fl_spin"
}

$animation "wheel_fl_spin240" "combine_apc_driveable_anims\wheel_fl_spin240.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_fl_spin240_corrective_animation" 0
	weightlist "weights_wheel_fl_spin"
}

$animation "wheel_rr_down" "combine_apc_driveable_anims\wheel_rr_down.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_rr_down_corrective_animation" 0
	weightlist "weights_wheel_rr_suspension"
}

$animation "wheel_rr_up" "combine_apc_driveable_anims\wheel_rr_up.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_rr_up_corrective_animation" 0
	weightlist "weights_wheel_rr_suspension"
}

$animation "wheel_rr_spin0" "combine_apc_driveable_anims\wheel_rr_spin0.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_rr_spin0_corrective_animation" 0
	weightlist "weights_wheel_rr_spin"
}

$animation "wheel_rr_spin120" "combine_apc_driveable_anims\wheel_rr_spin120.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_rr_spin120_corrective_animation" 0
	weightlist "weights_wheel_rr_spin"
}

$animation "wheel_rr_spin240" "combine_apc_driveable_anims\wheel_rr_spin240.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_rr_spin240_corrective_animation" 0
	weightlist "weights_wheel_rr_spin"
}

$animation "wheel_rl_down" "combine_apc_driveable_anims\wheel_rl_down.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_rl_down_corrective_animation" 0
	weightlist "weights_wheel_rl_suspension"
}

$animation "wheel_rl_up" "combine_apc_driveable_anims\wheel_rl_up.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_rl_up_corrective_animation" 0
	weightlist "weights_wheel_rl_suspension"
}

$animation "wheel_rl_spin0" "combine_apc_driveable_anims\wheel_rl_spin0.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_rl_spin0_corrective_animation" 0
	weightlist "weights_wheel_rl_spin"
}

$animation "wheel_rl_spin120" "combine_apc_driveable_anims\wheel_rl_spin120.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_rl_spin120_corrective_animation" 0
	weightlist "weights_wheel_rl_spin"
}

$animation "wheel_rl_spin240" "combine_apc_driveable_anims\wheel_rl_spin240.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "wheel_rl_spin240_corrective_animation" 0
	weightlist "weights_wheel_rl_spin"
}

$animation "door_open" "combine_apc_driveable_anims\door_open.smd" {
	fps 30
	weightlist "weights_door_pos"
}

$animation "door_closed" "combine_apc_driveable_anims\door_closed.smd" {
	fps 30
	weightlist "weights_door_pos"
}

$animation "zero_speed" "combine_apc_driveable_anims\zero_speed.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "zero_speed_corrective_animation" 0
	weightlist "weights_speedometer"
}

$animation "med_speed" "combine_apc_driveable_anims\med_speed.smd" {
	fps 30
}

$animation "full_speed" "combine_apc_driveable_anims\full_speed.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "full_speed_corrective_animation" 0
	weightlist "weights_speedometer"
}

$animation "headlight_off" "combine_apc_driveable_anims\headlight_off.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "headlight_off_corrective_animation" 0
	weightlist "weights_headlight_tumbler"
}

$animation "headlight_on" "combine_apc_driveable_anims\headlight_on.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "headlight_on_corrective_animation" 0
	weightlist "weights_headlight_tumbler"
}

$animation "handbrake_off" "combine_apc_driveable_anims\handbrake_off.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "handbrake_off_corrective_animation" 0
	weightlist "weights_handbrake"
}

$animation "handbrake_on" "combine_apc_driveable_anims\handbrake_on.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "handbrake_on_corrective_animation" 0
	weightlist "weights_handbrake"
}

$animation "holo_jump_full" "combine_apc_driveable_anims\holo_jump_full.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "holo_jump_full_corrective_animation" 0
	weightlist "weights_holo_jump"
}

$animation "holo_jump_zero" "combine_apc_driveable_anims\holo_jump_zero.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "holo_jump_zero_corrective_animation" 0
	weightlist "weights_holo_jump"
}

$sequence "idle" {
	"combine_apc_driveable_anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 90
}

$sequence "aim" {
	"combine_apc_driveable_anims\aim.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "spin" {
	"combine_apc_driveable_anims\spin.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "suspension" {
	"combine_apc_driveable_anims\suspension.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "turn" {
	"combine_apc_driveable_anims\turn.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "attack1" {
	"combine_apc_driveable_anims\attack1.smd"
	activity "ACT_RANGE_ATTACK1" 1
	{ event 5003 0 "2" }
	{ event 3002 0 "" }
	fadein 0.2
	fadeout 0.2
	fps 20
}

$sequence "weapon_pitch" {
	"aim_up"
	"aim_down"
	autoplay
	blend "vehicle_weapon_pitch" -45 45
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "weapon_yaw" {
	"aim_back"
	"aim_right"
	"aim_front"
	"aim_left"
	"aim_back"
	autoplay
	blend "vehicle_weapon_yaw" -180 180
	blendwidth 5
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "turning" {
	"turn_left"
	"turn_right"
	autoplay
	blend "vehicle_steer" -1 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "wheel_fr_suspension" {
	"wheel_fr_down"
	"wheel_fr_up"
	autoplay
	blend "vehicle_wheel_fr_height" -1 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "wheel_fr_spin" {
	"wheel_fr_spin0"
	"wheel_fr_spin120"
	"wheel_fr_spin240"
	"wheel_fr_spin0"
	autoplay
	blend "vehicle_wheel_fr_spin" -180 180
	blendwidth 4
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "wheel_fl_suspension" {
	"wheel_fl_down"
	"wheel_fl_up"
	autoplay
	blend "vehicle_wheel_fl_height" -1 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "wheel_fl_spin" {
	"wheel_fl_spin0"
	"wheel_fl_spin120"
	"wheel_fl_spin240"
	"wheel_fl_spin0"
	autoplay
	blend "vehicle_wheel_fl_spin" -180 180
	blendwidth 4
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "wheel_rr_suspension" {
	"wheel_rr_down"
	"wheel_rr_up"
	autoplay
	blend "vehicle_wheel_rr_height" -1 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "wheel_rr_spin" {
	"wheel_rr_spin0"
	"wheel_rr_spin120"
	"wheel_rr_spin240"
	"wheel_rr_spin0"
	autoplay
	blend "vehicle_wheel_rr_spin" -180 180
	blendwidth 4
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "wheel_rl_suspension" {
	"wheel_rl_down"
	"wheel_rl_up"
	autoplay
	blend "vehicle_wheel_rl_height" -1 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "wheel_rl_spin" {
	"wheel_rl_spin0"
	"wheel_rl_spin120"
	"wheel_rl_spin240"
	"wheel_rl_spin0"
	autoplay
	blend "vehicle_wheel_rl_spin" -180 180
	blendwidth 4
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "enter1" {
	"combine_apc_driveable_anims\enter1.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "exit1" {
	"combine_apc_driveable_anims\exit1.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "door_pos" {
	"door_closed"
	"door_open"
	autoplay
	blend "vehicle_door_pos" 0 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "speedometer" {
	"zero_speed"
	"full_speed"
	autoplay
	blend "vehicle_guage" 0 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "headlight_tumbler" {
	"headlight_off"
	"headlight_on"
	autoplay
	blend "vehicle_headlight_tumbler" 0 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "handbrake" {
	"handbrake_off"
	"handbrake_on"
	autoplay
	blend "vehicle_handbrake" 0 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "holo_jump" {
	"holo_jump_full"
	"holo_jump_zero"
	autoplay
	blend "vehicle_holo_jump" 0 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
}

$collisionmodel "combine_apc_driveable_physics.smd"
{
	$mass 1500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 6

}

$keyvalues
{
	fire_interactions 
	{
		"flammable" "yes"
	}
	vehicle_entry 
	{
		"enter1" "1"
		"enter1" "2"
	}
	vehicle_exit 
	{
		"exit1" "upright"
	}
}
