// MarioShared.asm

// This file contains shared functions by Mario and others

scope MarioShared {

    // Set pipe turn rotation for Poly Dr Mario
    Character.table_patch_start(pipe_turn, Character.id.NDRM, 0x1)
    db      OS.TRUE;     OS.patch_end();

    // Set pipe turn rotation for Poly Wario
    Character.table_patch_start(pipe_turn, Character.id.NWARIO, 0x1)
    db      OS.TRUE;     OS.patch_end();

    // Set pipe turn rotation for Poly Conker
    Character.table_patch_start(pipe_turn, Character.id.NCONKER, 0x1)
    db      OS.TRUE;     OS.patch_end();

    // Set pipe turn rotation for JMARIO
    Character.table_patch_start(pipe_turn, Character.id.JMARIO, 0x1)
    db      OS.TRUE;     OS.patch_end();

    // Set pipe turn rotation for JLUIGI
    Character.table_patch_start(pipe_turn, Character.id.JLUIGI, 0x1)
    db      OS.TRUE;     OS.patch_end();

    // Set pipe turn rotation for Dale Luigi
    Character.table_patch_start(pipe_turn, Character.id.DLUIGI, 0x1)
    db      OS.TRUE;     OS.patch_end();

    // Set pipe turn rotation for MLUIGI
    Character.table_patch_start(pipe_turn, Character.id.MLUIGI, 0x1)
    db      OS.TRUE;     OS.patch_end();

    // Set pipe turn rotation for WARIO
    Character.table_patch_start(pipe_turn, Character.id.WARIO, 0x1)
    db      OS.TRUE;     OS.patch_end();

    // Set pipe turn rotation for GOEMON
    Character.table_patch_start(pipe_turn, Character.id.GOEMON, 0x1)
    db      OS.TRUE;     OS.patch_end();

    // Set pipe turn rotation for COWBOY GOEMON
    Character.table_patch_start(pipe_turn, Character.id.CBGOEMON, 0x1)
    db      OS.TRUE;     OS.patch_end();

    // Set pipe turn rotation for EBI
    Character.table_patch_start(pipe_turn, Character.id.EBI, 0x1)
    db      OS.TRUE;     OS.patch_end();

    // Set pipe turn rotation for DRM
    Character.table_patch_start(pipe_turn, Character.id.DRM, 0x1)
    db      OS.TRUE;     OS.patch_end();

    // Set pipe turn rotation for CONKER
    Character.table_patch_start(pipe_turn, Character.id.CONKER, 0x1)
    db      OS.TRUE;     OS.patch_end();


    // Hardcoding for when Mario Clones use Pipes, ensures they face the correct way when entering
    scope pipe_turn_enter: {
        OS.patch_start(0xBCC40, 0x80142200)
        j       pipe_turn_enter
        nop                                 // original line 2
        _return:
        OS.patch_end()

        beq     v0, r0, _mario_turn         // modified original line 1, correct turn if Mario
        nop

        // v0 = character id
        li      at, Character.pipe_turn.table
        addu    t0, v0, at                  // t0 = entry in pipe_turn.table
        lb      t0, 0x0000(t0)              // load characters entry in jump table
        bnez    t0, _mario_turn
        nop

        j       _return                     // return
        addiu   at, r0, 0x000D              // reinserting in the interest of caution

        _mario_turn:
        j       0x80142228                  // modified original line 1, routine having Mario properly turn during Pipe animation
        addiu   at, r0, 0x000D              // reinserting in the interest of caution
    }

    // Hardcoding for when Mario Clones use Pipes, ensures they face the correct way when exiting
    scope pipe_turn_exit: {
        OS.patch_start(0xBD19C, 0x8014275C)
        j       pipe_turn_exit
        sw      t5, 0x0B3C(s0)              // original line 2
        _return:
        OS.patch_end()

        beq     v0, r0, _mario_turn         // modified original line 1, correct turn if Mario
        nop
        // v0 = character id
        li      at, Character.pipe_turn.table
        addu    t6, v0, at                  // t6 = entry in pipe_turn.table
        lb      t6, 0x0000(t6)              // load characters entry in jump table
        bnez    t6, _mario_turn
        nop

        j       _return                     // return
        nop

        _mario_turn:
        j       0x801427AC                  // modified original line 1, routine having Mario properly turn during Pipe animation
        nop
    }

}
