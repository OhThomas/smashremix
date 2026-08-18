// Boshi.asm

// This file contains file inclusions, action edits, and assembly for Boshi.

scope Boshi {
    
    // Set crowd chant FGM.
    Character.table_patch_start(crowd_chant_fgm, Character.id.BOSHI, 0x2)
    dh  0x0318
    OS.patch_end()

    // Set action strings
    Character.table_patch_start(action_string, Character.id.BOSHI, 0x4)
    dw  Action.YOSHI.action_string_table
    OS.patch_end()

    // Set Remix 1P ending music
    Character.table_patch_start(remix_1p_end_bgm, Character.id.BOSHI, 0x2)
    dh {MIDI.id.YOSHI_TALE}
    OS.patch_end()

    // Set default costumes
    Character.set_default_costumes(Character.id.BOSHI, 0, 1, 3, 7, 1, 0, 7)
    Teams.add_team_costume(YELLOW, BOSHI, 0x3)

    // Set default costume shield colors
    Character.set_costume_shield_colors(BOSHI, AZURE, RED, CYAN, YELLOW, PINK, BLUE, BLACK, LIME, ORANGE, PURPLE, NA, NA)
}