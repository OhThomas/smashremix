// DLuigi.asm

// This file contains file inclusions, action edits, and assembly for Dale Luigi.

scope DLuigi {
    // Set crowd chant FGM.
    Character.table_patch_start(crowd_chant_fgm, Character.id.DLUIGI, 0x2)
    dh  0x031C
    OS.patch_end()

    // Set action strings
    Character.table_patch_start(action_string, Character.id.DLUIGI, 0x4)
    dw  Action.LUIGI.action_string_table
    OS.patch_end()

    // Set Remix 1P ending music
    Character.table_patch_start(remix_1p_end_bgm, Character.id.DLUIGI, 0x2)
    dh {MIDI.id.SMB2_MEDLEY}
    OS.patch_end()
}
