// This file contains this characters AI attacks

// Create new cpu attack behaviours
OS.align(4)
CPU_ATTACKS:
// grounded attacks
// add_attack_behaviour(table, attack, hitbox_start_frame, min_x, max_x, min_y, max_y)
AI.add_attack_behaviour(JAB,    5, -67, 766, 83, 285)
AI.add_attack_behaviour(FTILT,  7, -394, 814, -39, 855)
AI.add_attack_behaviour(UTILT,  6, -333, 463, 203, 906)
AI.add_attack_behaviour(DTILT,  3, 43, 872, 170, 370)
AI.add_attack_behaviour(FSMASH, 26, -399, 1082, 15, 1081)
AI.add_attack_behaviour(USMASH, 20, -706, 667, -86, 1067)
AI.add_attack_behaviour(DSMASH, 9, -640, 565, 26, 339)
AI.add_attack_behaviour(NSPG,   20, 260, 789, 104, 329)
// AI.add_attack_behaviour(USPG,   5, -273, 273, 167, 287)
AI.add_attack_behaviour(DSPG,   22, 400, 2000, -50, 500)
AI.add_attack_behaviour(GRAB,   6, 345, 520, 183, 358)
// we can add new grounded attacks here

AI.END_ATTACKS() // end of grounded attacks

// aerial attacks
// add_attack_behaviour(table, attack, hitbox_start_frame, min_x, max_x, min_y, max_y)
AI.add_attack_behaviour(NAIR,   6, -124, 124, 106, 354)
AI.add_attack_behaviour(FAIR,   10, -176, 700, -95, 827)
AI.add_attack_behaviour(UAIR,   11, 80, 280, 395, 955)
AI.add_attack_behaviour(DAIR,   9, -290, 244, -339, 373)
AI.add_attack_behaviour(NSPA,   20, 260, 789, 104, 329)
AI.add_attack_behaviour(DSPA,   22, 400, 2000, -100, 500)
// we can add new aerial attacks here

AI.END_ATTACKS() // end of aerial attacks
OS.align(16)

// Set CPU behaviour
Character.table_patch_start(ai_behaviour, Character.id.DEDEDE, 0x4)
dw      CPU_ATTACKS
OS.patch_end()

// Set CPU SD prevent routine
Character.table_patch_start(ai_attack_prevent, Character.id.DEDEDE, 0x4)
dw    	AI.PREVENT_ATTACK.ROUTINE.USP		// skip USP if unsafe
OS.patch_end()

// Set CPU NSP long range behaviour
Character.table_patch_start(ai_long_range, Character.id.DEDEDE, 0x4)
dw    	AI.LONG_RANGE.ROUTINE.NSP_SHOOT
OS.patch_end()

// Custom custom long range action input
Character.table_patch_start(nsp_shoot_custom_move, Character.id.DEDEDE, 0x4)
dw    	AI.ROUTINE.DSP
OS.patch_end()

// Set CPU behaviour
Character.table_patch_start(ai_behaviour, Character.id.CBDEDEDE, 0x4)
dw      CPU_ATTACKS
OS.patch_end()

// Set CPU SD prevent routine
Character.table_patch_start(ai_attack_prevent, Character.id.CBDEDEDE, 0x4)
dw    	AI.PREVENT_ATTACK.ROUTINE.USP		// skip USP if unsafe
OS.patch_end()

// Set CPU NSP long range behaviour
Character.table_patch_start(ai_long_range, Character.id.CBDEDEDE, 0x4)
dw    	AI.LONG_RANGE.ROUTINE.NSP_SHOOT
OS.patch_end()

// Custom custom long range action input
Character.table_patch_start(nsp_shoot_custom_move, Character.id.CBDEDEDE, 0x4)
dw    	AI.ROUTINE.DSP
OS.patch_end()