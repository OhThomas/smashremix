// This file contains this characters AI attacks

// Create new cpu attack behaviours
OS.align(4)
CPU_ATTACKS:
// grounded attacks
// add_attack_behaviour(table, attack, hitbox_start_frame, min_x, max_x, min_y, max_y)
AI.add_attack_behaviour(JAB,    5, 52, 497, 312, 501)
AI.add_attack_behaviour(FTILT,  10, 61, 564, 356, 506)
AI.add_attack_behaviour(UTILT,  34, 341, 541, 45, 245)
AI.add_attack_behaviour(DTILT,  8, -89, 544, -24, 223)
AI.add_attack_behaviour(FSMASH, 24, -469, 1008, -56, 896)
AI.add_attack_behaviour(USMASH, 19, -129, 487, 130, 1237)
AI.add_attack_behaviour(DSMASH, 16, -764, 841, -76, 611)
AI.add_attack_behaviour(NSPG,   47, 335, 1098, 186, 389)
AI.add_attack_behaviour(USPG,   15, 157, 531, 253, 2134-1000) // decreasing upwards range so he does it less often
AI.add_attack_behaviour(DSPG,   16, 31, 2701, 27, 291)
AI.add_attack_behaviour(GRAB,   6, 278, 428, 247, 397)
// we can add new grounded attacks here

AI.END_ATTACKS() // end of grounded attacks

// aerial attacks
// add_attack_behaviour(table, attack, hitbox_start_frame, min_x, max_x, min_y, max_y)
AI.add_attack_behaviour(NAIR,   8, -28, 584, 85, 482)
AI.add_attack_behaviour(FAIR,   8, -333, 560, 7, 700)
AI.add_attack_behaviour(UAIR,   7, -588, 581, 431, 1140)
AI.add_attack_behaviour(DAIR,   14, -139, 95, -51, 414)
AI.add_attack_behaviour(NSPA,   47, 89, 980, 237, 512)
AI.add_attack_behaviour(USPA,   16, 159, 539, 227, 377)
AI.add_attack_behaviour(DSPA,   12+20, -128+300, 249+300, -1000+500, 300-400) // added delay to compensate movement and make him do it less often
// we can add new aerial attacks here

AI.END_ATTACKS() // end of aerial attacks
OS.align(16)

// Set CPU behaviour
Character.table_patch_start(ai_behaviour, Character.id.GND, 0x4)
dw      CPU_ATTACKS
OS.patch_end()

// Set CPU SD prevent routine
Character.table_patch_start(ai_attack_prevent, Character.id.GND, 0x4)
dw    	AI.PREVENT_ATTACK.ROUTINE.YOSHI_FALCON
OS.patch_end()

// Set CPU behaviour
Character.table_patch_start(ai_behaviour, Character.id.LMGND, 0x4)
dw      CPU_ATTACKS
OS.patch_end()

// Set CPU SD prevent routine
Character.table_patch_start(ai_attack_prevent, Character.id.LMGND, 0x4)
dw    	AI.PREVENT_ATTACK.ROUTINE.YOSHI_FALCON
OS.patch_end()