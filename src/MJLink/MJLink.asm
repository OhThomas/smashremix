// MJLink.asm

// This file contains file inclusions, action edits, and assembly for MJLink.

scope MJLink {
    // Set crowd chant FGM.
    Character.table_patch_start(crowd_chant_fgm, Character.id.MJLINK, 0x2)
    dh  0x025F
    OS.patch_end()

    // Set action strings
    Character.table_patch_start(action_string, Character.id.MJLINK, 0x4)
    dw  Action.LINK.action_string_table
    OS.patch_end()

    // Set Remix 1P ending music
    Character.table_patch_start(remix_1p_end_bgm, Character.id.MJLINK, 0x2)
    dh {MIDI.id.HYRULE_TEMPLE}
    OS.patch_end()

    // Setting Yellow costume
    Teams.add_team_costume(YELLOW, MJLINK, 0x5)
}
