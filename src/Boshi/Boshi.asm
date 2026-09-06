// Boshi.asm

// This file contains file inclusions, action edits, and assembly for Boshi.

scope Boshi {
    // Insert move files
	CSS:
	Moveset.WAIT(84)
	Moveset.VOICE(1570)
	dw 0

	VICTORY_1:
	Moveset.WAIT(74)
	Moveset.VOICE(1570)
	dw 0

	VICTORY_2:
	Moveset.WAIT(15)
	Moveset.VOICE(1578)
	// Moveset.WAIT(15)
	// Moveset.VOICE(1572)
	dw 0

    insert JUMP_F, "Moveset/JUMP.bin"
    JUMP_AERIAL_F:
    dw 0xAC000006
    dw 0xAC100006
    Moveset.VOICE(1564)
    Moveset.LOOP(2)
    Moveset.CREATE_GFX(0, 11, 0, 0, 0, 100, 100, 100)   // footstep smoke gfx
    Moveset.WAIT(6)
    Moveset.END_LOOP()
    dw 0

    insert TECH, "Moveset/TECH.bin"
    insert TECH_F, "Moveset/TECH_F.bin"
    TECH_B:; Moveset.GO_TO(TECH_F);
    insert EDGE_ATTACK_F, "Moveset/EDGE_ATTACK_F.bin"
    insert EDGE_ATTACK_S, "Moveset/EDGE_ATTACK_S.bin"
    insert SPARKLE,"moveset/SPARKLE.bin"; Moveset.GO_TO(SPARKLE)                 // loops
    insert SHIELD_BREAK,"moveset/SHIELD_BREAK.bin"; Moveset.GO_TO(SPARKLE)       // loops
    insert STUN, "moveset/STUN.bin"; Moveset.GO_TO(STUN)                         // loops
    insert TAUNT, "Moveset/TAUNT.bin"
    insert DASH, "Moveset/DASH.bin"
    insert DOWN_SPECIAL_GROUND, "Moveset/DOWN_SPECIAL_GROUND.bin"
    insert DOWN_SPECIAL_AERIAL, "Moveset/DOWN_SPECIAL_AERIAL.bin"
    insert TEETER, "Moveset/TEETER.bin"

    insert GRAB_RELEASE_DATA, "Moveset/GRAB_RELEASE_DATA.bin"
    GRAB:; Moveset.THROW_DATA(GRAB_RELEASE_DATA); insert "Moveset/GRAB.bin"
    insert THROW_F_DATA, "Moveset/THROW_F_DATA.bin"
    THROW_F:; Moveset.THROW_DATA(THROW_F_DATA); insert "Moveset/THROW_F.bin"
    insert THROW_B_DATA, "Moveset/THROW_B_DATA.bin"
    THROW_B:; Moveset.THROW_DATA(THROW_B_DATA); insert "Moveset/THROW_B.bin"

    // Modify Action Parameters                 // Action           // Animation                // Moveset Data                 // Flags
	Character.edit_action_parameters(BOSHI,    0x16,         		-1,                         JUMP_F,                         -1)
	Character.edit_action_parameters(BOSHI,    0x17,         		-1,                         JUMP_F,                         -1)
	Character.edit_action_parameters(BOSHI,    0x18,         		-1,                         JUMP_AERIAL_F,                  -1)
	Character.edit_action_parameters(BOSHI,    0x19,         		-1,                         JUMP_AERIAL_F,                  -1)
	Character.edit_action_parameters(BOSHI,    0x23,         		-1,                         TEETER,                         -1)
	Character.edit_action_parameters(BOSHI,    0x49,         		-1,                         TECH_F,                         -1)
	Character.edit_action_parameters(BOSHI,    0x4A,         		-1,                         TECH_B,                         -1)
	Character.edit_action_parameters(BOSHI,    0x51,         		-1,                         TECH,                           -1)
	Character.edit_action_parameters(BOSHI,    0x5D,         		-1,                         EDGE_ATTACK_F,                  -1)
	Character.edit_action_parameters(BOSHI,    0x5F,         		-1,                         EDGE_ATTACK_S,                  -1)
	Character.edit_action_parameters(BOSHI,    0x9E,         		-1,                         SHIELD_BREAK,                   -1)
	Character.edit_action_parameters(BOSHI,    0xA4,         		-1,                         STUN,                           -1)
	Character.edit_action_parameters(BOSHI,    0xA6,         		-1,                         GRAB,                           -1)
	Character.edit_action_parameters(BOSHI,    0xA9,         		-1,                         THROW_F,                        -1)
	Character.edit_action_parameters(BOSHI,    0xAA,         		-1,                         THROW_B,                        -1)
	Character.edit_action_parameters(BOSHI,    0xBD,         		-1,                         TAUNT,                          -1)
	Character.edit_action_parameters(BOSHI,    0xC0,         		-1,                         DASH,                           -1)
	Character.edit_action_parameters(BOSHI,    0xE0,         		-1,                         DOWN_SPECIAL_GROUND,            -1)
	Character.edit_action_parameters(BOSHI,    0xE2,         		-1,                         DOWN_SPECIAL_AERIAL,            -1)
    
    // Modify Menu Action Parameters              // Action // Animation                // Moveset Data             // Flags
    Character.edit_menu_action_parameters(BOSHI,  0x1,      -1,                         VICTORY_1,                  -1)
    Character.edit_menu_action_parameters(BOSHI,  0x2,      -1,                         CSS,                        -1)
    Character.edit_menu_action_parameters(BOSHI,  0x3,      -1,                         VICTORY_2,                  -1)

    // Set crowd chant FGM.
    Character.table_patch_start(crowd_chant_fgm, Character.id.BOSHI, 0x2)
    dh  0x061A
    OS.patch_end()

    // Set action strings
    Character.table_patch_start(action_string, Character.id.BOSHI, 0x4)
    dw  Action.YOSHI.action_string_table
    OS.patch_end()

    // Set Remix 1P ending music
    Character.table_patch_start(remix_1p_end_bgm, Character.id.BOSHI, 0x2)
    dh {MIDI.id.FOREST_MAZE_CAVE_REMIX}
    OS.patch_end()

    // Set default costumes
    Character.set_default_costumes(Character.id.BOSHI, 0, 1, 3, 7, 1, 0, 7)
    Teams.add_team_costume(YELLOW, BOSHI, 0x3)

    // Set default costume shield colors
    Character.set_costume_shield_colors(BOSHI, AZURE, RED, CYAN, YELLOW, PINK, BLUE, BLACK, LIME, ORANGE, PURPLE, NA, NA)
}