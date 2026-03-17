// DKJr.asm

// This file contains file inclusions, action edits, and assembly for Donkey Kong Jr.

scope DKJr {
    // Set crowd chant FGM.
    Character.table_patch_start(crowd_chant_fgm, Character.id.DKJR, 0x2)
    dh  0x0315
    OS.patch_end()

    // Set action strings
    Character.table_patch_start(action_string, Character.id.DKJR, 0x4)
    dw  Action.DK.action_string_table
    OS.patch_end()

    // Set Remix 1P ending music
    Character.table_patch_start(remix_1p_end_bgm, Character.id.DKJR, 0x2)
    dh {MIDI.id.DK_RAP}
    OS.patch_end()

    // Setting Yellow costume
    // Teams.add_team_costume(YELLOW, DKJR, 0x1)
}