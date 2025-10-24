// Thanks to Thothie

// Todo
// 1. model variations (class body groups)
// 2. embed weapons
// 3. improve animations
// 4. opt: research usefulness of agro controller (eyebrows)

//BODIES
$bodygroup "body" {
studio "orc_body1" // Warrior
studio "orc_body2" // Archer
studio "orc_body3" // Berserker
studio "orc_body4" // Shaman
studio "orc_body5" // Ranger
}

//HEADS
$bodygroup "head" {
studio "orc_head_warrior" 	// Warrior
studio "orc_head_archer" 	// Archer
studio "orc_head_berserker" 	// Berserker
studio "orc_head_shaman" 	// Shaman
studio "orc_head_ranger" 	// Ranger
}

//WEAPONS
$bodygroup "weapon" {
blank
studio "orc_axe_lhand"
studio "orc_steelorcbow_lhand"
studio "orc_steelorcbow_lhand_alt"
studio "orc_shortsword_lhand"
studio "orc_gaxe_lhand"
studio "orc_shield_sword"
studio "orc_saxe_lhand"
studio "orc_blood_lhand"
studio "orc_beef"
studio "orc_hammer_rhand"
studio "orc_mug_rhand"
}

//ATTACHMENTS
$attachment 0 "L Hand" 0.000000 0.000000 0.000000
$attachment 1 "R Hand" 0.000000 0.000000 0.000000

//CONTROLLERS
$controller 0 "" ZR -30.000000 30.000000 	// Torso (HL Look)
$controller 1 "" XR -30.000000 30.000000 	// Mouth (HL Talk)
$controller 2 "" XR -30.000000 30.000000 	// 
$controller 3 "" XR -30.000000 30.000000 	// Eyebrows (MS Agro)

//HITBOXES
$hbox 0 "Hip" -4 -4 -4 4 4 4
$hbox 0 "Thigh.L" -4 -4 -4 4 4 4
$hbox 0 "Thigh.R" -4 -4 -4 4 4 4
$hbox 0 "Shin.L" -4 -4 -4 4 4 4
$hbox 0 "Shin.R" -4 -4 -4 4 4 4
$hbox 0 "Foot.L" -4 -4 -4 4 4 4
$hbox 0 "Foot.R" -4 -4 -4 4 4 4
$hbox 0 "Foot0.L" -4 -4 -4 4 4 4
$hbox 0 "Foot0.R" -4 -4 -4 4 4 4
$hbox 0 "Spine" -4 -4 -4 4 4 4
$hbox 0 "Shoulders" -4 -4 -4 4 4 4
$hbox 0 "UpperArm.L" -4 -4 -4 4 4 4
$hbox 0 "UpperArm.R" -4 -4 -4 4 4 4
$hbox 0 "ForeArm.L" -4 -4 -4 4 4 4
$hbox 0 "ForeArm.R" -4 -4 -4 4 4 4
$hbox 0 "Hand.L" -4 -4 -4 4 4 4
$hbox 0 "Hand.R" -4 -4 -4 4 4 4
$hbox 0 "Knuckle.L" -4 -4 -4 4 4 4
$hbox 0 "Knuckle.R" -4 -4 -4 4 4 4
$hbox 0 "Neck" -4 -4 -4 4 4 4
$hbox 0 "Head" -4 -4 -4 4 4 4

//SKINS
$texturegroup skinfamilies {
	{borc_head.bmp borc_torso.bmp borc_legs.bmp} 	// Blackhand Orc
	{morc_head.bmp morc_torso.bmp morc_legs.bmp} 	// Morogar Orc
	{sorc_head.bmp sorc_trso.bmp sorc_legs.bmp} 	// Shadahar Orc
	{vorc_head.bmp vorc_torso.bmp vorc_legs.bmp} 	// Voldar Orc
	{zorc_head.bmp zorc_torso.bmp zorc_legs.bmp} 	// Undead Orc
}