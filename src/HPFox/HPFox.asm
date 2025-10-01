// HPFox.asm

// This file contains file inclusions, action edits, and assembly for HPFox.

scope HPFox {
    // Set crowd chant FGM.
     Character.table_patch_start(crowd_chant_fgm, Character.id.HPFOX, 0x2)
     dh  0x031A
     OS.patch_end()

    // Set action strings
    Character.table_patch_start(action_string, Character.id.HPFOX, 0x4)
    dw  Action.FOX.action_string_table
    OS.patch_end()

    // Set Remix 1P ending music
    Character.table_patch_start(remix_1p_end_bgm, Character.id.HPFOX, 0x2)
    dh {MIDI.id.STARFOX_MEDLEY}
    OS.patch_end()

    // Setting Yellow costume
    Teams.add_team_costume(YELLOW, HPFOX, 0x6)
}