// This file contains this characters AI attacks

// Define a input sequences
MARTH_NSP_N_U_U:
AI.UNPRESS_A();
AI.UNPRESS_B();
AI.UNPRESS_Z();
AI.STICK_Y(0);
AI.STICK_X(0x7F)        // stick towards opponent
AI.PRESS_B(8)           // press B, wait 8 frames
AI.UNPRESS_B(8);        // unpress B, wait 8 frames
AI.STICK_Y(0x38, 0)     // stick up, wait 0 frames
AI.PRESS_B(8)           // press B, wait 8 frames
AI.UNPRESS_B(8);        // unpress B, wait 8 frames
AI.PRESS_B(8)           // press B, wait 8 frames
AI.UNPRESS_B(8);        // unpress B, wait 8 frames
AI.STICK_X(0)           // return stick to neutral
AI.STICK_Y(0)           // return stick to neutral
AI.END();
AI.add_cpu_input_routine(MARTH_NSP_N_U_U)

// Second hit down has more hitlag and needs to be a bit more delayed
MARTH_NSP_N_D_D:
AI.UNPRESS_A();
AI.UNPRESS_B();
AI.UNPRESS_Z();
AI.STICK_Y(0);
AI.STICK_X(0x7F)        // stick towards opponent
AI.PRESS_B(8)           // press B, wait 8 frames
AI.UNPRESS_B(8);        // unpress B, wait 8 frames
AI.STICK_Y(-0x38, 0)    // stick down, wait 0 frames
AI.PRESS_B(9)           // press B, wait 9 frames
AI.UNPRESS_B(9);        // unpress B, wait 9 frames
AI.PRESS_B(9)           // press B, wait 9 frames
AI.UNPRESS_B(9);        // unpress B, wait 9 frames
AI.STICK_X(0)           // return stick to neutral
AI.STICK_Y(0)           // return stick to neutral
AI.END();
AI.add_cpu_input_routine(MARTH_NSP_N_D_D)

MARTH_NSP_N_N_N:
AI.UNPRESS_A();
AI.UNPRESS_B();
AI.UNPRESS_Z();
AI.STICK_Y(0);
AI.STICK_X(0x7F)        // stick towards opponent
AI.PRESS_B(8)           // press B, wait 8 frames
AI.UNPRESS_B(8);        // unpress B, wait 8 frames
AI.STICK_Y(0, 0)        // stick neutral, wait 0 frames
AI.PRESS_B(8)           // press B, wait 8 frames
AI.UNPRESS_B(8);        // unpress B, wait 8 frames
AI.PRESS_B(8)           // press B, wait 8 frames
AI.UNPRESS_B(8);        // unpress B, wait 8 frames
AI.STICK_X(0)           // return stick to neutral
AI.STICK_Y(0)           // return stick to neutral
AI.END();
AI.add_cpu_input_routine(MARTH_NSP_N_N_N)

// Create new cpu attack behaviours
OS.align(4)
CPU_ATTACKS:
// grounded attacks
// add_attack_behaviour(table, attack, hitbox_start_frame, min_x, max_x, min_y, max_y)
AI.add_attack_behaviour(JAB,    4, 107, 658, 0, 723)
AI.add_attack_behaviour(FTILT,  7, 179, 851, -12, 732)
AI.add_attack_behaviour(UTILT,  5, -193, 596, 81, 892)
AI.add_attack_behaviour(DTILT,  6, 69, 755, -17, 220)
AI.add_attack_behaviour(FSMASH, 14, 219, 955, -7, 795)
AI.add_attack_behaviour(USMASH, 12, -61, 211, 265, 934)
AI.add_attack_behaviour(DSMASH, 6, -593, 719, -51, 297)
AI.add_attack_behaviour(NSPG,   6, 208, 746, 44, 774)
AI.add_attack_behaviour(USPG,   8, 79, 200, 49, 800) // not using the top hitbox to avoid the CPU from using it too much as a sourspot anti-air
AI.add_attack_behaviour(DSPG,   6, -100, -100, -100, 100)
AI.add_attack_behaviour(GRAB,   6, 186, 460, 220, 391)
// we can add new grounded attacks here
AI.add_custom_attack_behaviour(AI.ROUTINE.MARTH_NSP_N_N_N, 6, 208, 746, 44, 774) // NSP sequence N N N
AI.add_custom_attack_behaviour(AI.ROUTINE.MARTH_NSP_N_U_U, 6, 208, 746, 44, 774) // NSP sequence N U U
AI.add_custom_attack_behaviour(AI.ROUTINE.MARTH_NSP_N_D_D, 6, 208, 746, 44, 774) // NSP sequence N D D
AI.END_ATTACKS() // end of grounded attacks

// aerial attacks
// add_attack_behaviour(table, attack, hitbox_start_frame, min_x, max_x, min_y, max_y)
AI.add_attack_behaviour(NAIR,   5, -449, 493, 21, 667)
AI.add_attack_behaviour(FAIR,   4, -50, 571, -157, 678)
AI.add_attack_behaviour(UAIR,   5, -525, 413, 256, 827)
AI.add_attack_behaviour(DAIR,   6, -513, 495, -266, 511)
AI.add_attack_behaviour(NSPA,   0, 0, 0, 0, 0) // no attack
AI.add_attack_behaviour(USPA,   8, 0, 100, 54, 100) // using low range forwards and upwards for him to only use it when really close
AI.add_attack_behaviour(DSPA,   0, 0, 0, 0, 0) // no attack
// we can add new aerial attacks here

AI.END_ATTACKS() // end of aerial attacks
OS.align(16)

// Set CPU behaviour
Character.table_patch_start(ai_behaviour, Character.id.MARTH, 0x4)
dw      CPU_ATTACKS
OS.patch_end()

// Set CPU NSP long range behaviour
Character.table_patch_start(ai_long_range, Character.id.MARTH, 0x4)
dw      AI.LONG_RANGE.ROUTINE.NONE
OS.patch_end()

// Set CPU SD prevent routine
Character.table_patch_start(ai_attack_prevent, Character.id.MARTH, 0x4)
dw    	AI.PREVENT_ATTACK.ROUTINE.MARIO
OS.patch_end()

// Set CPU behaviour
Character.table_patch_start(ai_behaviour, Character.id.ISAAC, 0x4)
dw      CPU_ATTACKS
OS.patch_end()

// Set CPU NSP long range behaviour
Character.table_patch_start(ai_long_range, Character.id.ISAAC, 0x4)
dw      AI.LONG_RANGE.ROUTINE.NONE
OS.patch_end()

// Set CPU SD prevent routine
Character.table_patch_start(ai_attack_prevent, Character.id.ISAAC, 0x4)
dw    	AI.PREVENT_ATTACK.ROUTINE.MARIO
OS.patch_end()