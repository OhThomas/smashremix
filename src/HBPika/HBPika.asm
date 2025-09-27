// HBPika.asm

// This file contains file inclusions, action edits, and assembly for HBPika.

scope HBPika {

    // Set crowd chant FGM.
    Character.table_patch_start(crowd_chant_fgm, Character.id.HBPIKA, 0x2)
    dh  0x0263
    OS.patch_end()

    // Set action strings
    Character.table_patch_start(action_string, Character.id.HBPIKA, 0x4)
    dw  Action.PIKACHU.action_string_table
    OS.patch_end()

    // Set Remix 1P ending music
    Character.table_patch_start(remix_1p_end_bgm, Character.id.HBPIKA, 0x2)
    dh {MIDI.id.POKEFLOATS}
    OS.patch_end()

}