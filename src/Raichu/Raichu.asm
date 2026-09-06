// Raichu.asm

// This file contains file inclusions, action edits, and assembly for Raichu.

scope Raichu {
    // Insert move files
    insert FTHROWDATA, "moveset/FTHROWDATA.bin"
    FTHROW:; dw 0xBC000004; Moveset.THROW_DATA(FTHROWDATA); insert "moveset/FTHROW.bin"
    insert BTHROWDATA, "moveset/BTHROWDATA.bin"
    BTHROW:; dw 0xBC000004; Moveset.THROW_DATA(BTHROWDATA); insert "moveset/BTHROW.bin"
    insert NEUTRAL_SPECIAL_GROUND, "Moveset/NEUTRAL_SPECIAL_GROUND.bin"
    insert NEUTRAL_SPECIAL_AIR, "Moveset/NEUTRAL_SPECIAL_AIR.bin"
	insert DOWN_SPECIAL_INIT, "Moveset/DOWN_SPECIAL_INIT.bin"
    DOWN_SPECIAL_AIR_INIT:; Moveset.GO_TO(DOWN_SPECIAL_INIT);
    insert STUN, "Moveset/STUN.bin"; Moveset.GO_TO(STUN);
    insert TAUNT, "Moveset/TAUNT.bin"
    insert HAMMER, "Moveset/HAMMER.bin"; Moveset.GO_TO(HAMMER);
    insert SHIELD_BREAK, "Moveset/SHIELD_BREAK.bin"; Moveset.GO_TO(HAMMER);
    insert TEETER, "Moveset/TEETER.bin"
    insert TECH_STAND, "Moveset/TECH_STAND.bin"
    insert TECH_FORWARD, "Moveset/TECH_FORWARD.bin"
    TECH_BACK:; Moveset.GO_TO(TECH_FORWARD);
    insert UP_SPECIAL_GROUND, "Moveset/UP_SPECIAL_GROUND_1.bin"
    UP_SPECIAL_AIR:; Moveset.GO_TO(UP_SPECIAL_GROUND);
    
    // Modify Action Parameters                 // Action           // Animation                // Moveset Data                 // Flags
	Character.edit_action_parameters(RAICHU,    0x23,         		-1,                         TEETER,                         -1)
	Character.edit_action_parameters(RAICHU,    0x49,         		-1,                         TECH_FORWARD,                   -1)
	Character.edit_action_parameters(RAICHU,    0x4A,         		-1,                         TECH_BACK,                      -1)
	Character.edit_action_parameters(RAICHU,    0x51,         		-1,                         TECH_STAND,                     -1)
	Character.edit_action_parameters(RAICHU,    0x9E,         		-1,                         SHIELD_BREAK,                   -1)
	Character.edit_action_parameters(RAICHU,    0xA4,         		-1,                         STUN,                           -1)
	Character.edit_action_parameters(RAICHU,    0xA9,         		-1,                         FTHROW,                         -1)
	Character.edit_action_parameters(RAICHU,    0xAA,         		-1,                         BTHROW,                         -1)
	Character.edit_action_parameters(RAICHU,    0xBD,         		-1,                         TAUNT,                          -1)
	Character.edit_action_parameters(RAICHU,    0xDE,         		-1,                         NEUTRAL_SPECIAL_GROUND,         -1)
	Character.edit_action_parameters(RAICHU,    0xDF,         		-1,                         NEUTRAL_SPECIAL_AIR,            -1)
	Character.edit_action_parameters(RAICHU,    0xE0,         		-1,                         DOWN_SPECIAL_INIT,              -1)
	Character.edit_action_parameters(RAICHU,    0xE4,         		-1,                         DOWN_SPECIAL_AIR_INIT,          -1)
	Character.edit_action_parameters(RAICHU,    0xE9,         		-1,                         UP_SPECIAL_GROUND,              -1)
	Character.edit_action_parameters(RAICHU,    0xEC,         		-1,                         UP_SPECIAL_AIR,                 -1)

    // Set crowd chant FGM.
    Character.table_patch_start(crowd_chant_fgm, Character.id.RAICHU, 0x2)
    dh  0x0618
    OS.patch_end()

    // Set action strings
    Character.table_patch_start(action_string, Character.id.RAICHU, 0x4)
    dw  Action.PIKACHU.action_string_table
    OS.patch_end()

    // Set Remix 1P ending music
    Character.table_patch_start(remix_1p_end_bgm, Character.id.RAICHU, 0x2)
    dh {MIDI.id.VERMILION_CITY}
    OS.patch_end()

}