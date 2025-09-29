// MPPuff.asm

// This file contains file inclusions, action edits, and assembly for MPPuff.

scope MPPuff {
    // Set crowd chant FGM.
    Character.table_patch_start(crowd_chant_fgm, Character.id.MPPUFF, 0x2)
    dh  0x0579
    OS.patch_end()

    // Set action strings
    Character.table_patch_start(action_string, Character.id.MPPUFF, 0x4)
    dw  Action.JIGGLY.action_string_table
    OS.patch_end()

    // Set Remix 1P ending music
    Character.table_patch_start(remix_1p_end_bgm, Character.id.MPPUFF, 0x2)
    dh {MIDI.id.SS_AQUA}
    OS.patch_end()
}
