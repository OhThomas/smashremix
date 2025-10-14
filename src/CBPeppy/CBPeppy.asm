// CBPeppy.asm

// This file contains file inclusions, action edits, and assembly for CBPeppy.

scope CBPeppy {
    // @ Description
    // Peppy's extra actions
    scope Action {
        constant JabLoopStart(0x0DC)
        constant JabLoop(0x0DD)
        constant JabLoopEnd(0x0DE)
        constant Appear1(0x0DF)
        constant Appear2(0x0E0)
        constant NSPG_BEGIN(0xE1)
        constant NSPG_CHARGE(0xE2)
        constant FireHareStart(0x0E3)
        constant FireHareStartAir(0x0E4)
        constant ReadyingFireHare(0x0E5)
        constant ReadyingFireHareAir(0x0E6)
        constant FireHare(0x0E7)
        constant FireHareAir(0x0E8)
        constant FireHareEnd(0x0E9)
        constant FireHareEndAir(0x0EA)
        constant FireHareBounce(0x0EB)
        constant ReflectorStart(0x0EC)
        constant NSPG_SHOOT(0xED)
        constant NSPA_BEGIN(0xEE)
        constant ReflectorLoop(0x0EF)
        constant ReflectorSwitchDirection(0x0F0)
        constant ReflectorStartAir(0x0F1)
        constant NSPA_CHARGE(0xF2)
        constant NSPA_SHOOT(0xF3)
        constant ReflectorAir(0x0F4)
        constant ReflectorSwitchDirectionAir(0x0F5)

        // strings!
        //string_0x0DC:; String.insert("JabLoopStart")
        //string_0x0DD:; String.insert("JabLoop")
        //string_0x0DE:; String.insert("JabLoopEnd")
        //string_0x0DF:; String.insert("Appear1")
        //string_0x0E0:; String.insert("Appear2")
        string_0x0E1:; String.insert("RevolverBeginGround")
        string_0x0E2:; String.insert("RevolverChargeGround")
        string_0x0E3:; String.insert("FireHareStart")
        string_0x0E4:; String.insert("FireHareStartAir")
        string_0x0E5:; String.insert("ReadyingFireHare")
        string_0x0E6:; String.insert("ReadyingFireHareAir")
        string_0x0E7:; String.insert("FireHare")
        string_0x0E8:; String.insert("FireHareAir")
        string_0x0E9:; String.insert("FireHareEnd")
        string_0x0EA:; String.insert("FireHareEndAir")
        string_0x0EB:; String.insert("FireHareBounce")
        string_0x0EC:; String.insert("FlashBombThrow")
        string_0x0ED:; String.insert("RevolverShootGround")
        string_0x0EE:; String.insert("RevolverBeginAir")
        string_0x0EF:; String.insert("FlashBombDetonate")
        //string_0x0F0:; String.insert("FlashBombDetonateAir")
        string_0x0F1:; String.insert("FlashBombThrowAir")
        string_0x0F2:; String.insert("RevolverChargeAir")
        string_0x0F3:; String.insert("RevolverShootAir")
        //string_0x0F4:; String.insert("ReflectorAir")
        string_0x0F5:; String.insert("FlashBombDetonateAir")

        action_string_table:
        dw Action.COMMON.string_jabloopstart
        dw Action.COMMON.string_jabloop
        dw Action.COMMON.string_jabloopend
        dw Action.COMMON.string_appear1
        dw Action.COMMON.string_appear2
        dw string_0x0E1
        dw string_0x0E2
        dw string_0x0E3
        dw string_0x0E4
        dw string_0x0E5
        dw string_0x0E6
        dw string_0x0E7
        dw string_0x0E8
        dw string_0x0E9
        dw string_0x0EA
        dw string_0x0EB
        dw string_0x0EC
        dw string_0x0ED
        dw string_0x0EE
        dw string_0x0EF
        dw Action.FOX.string_0x0F0
        dw string_0x0F1
        dw string_0x0F2
        dw string_0x0F3
        dw Action.FOX.string_0x0F4
        dw string_0x0F5
    }

    // Modify Action Parameters             // Action               // Animation                // Moveset Data             // Flags
    Character.edit_action_parameters(CBPEPPY, Action.Dash,            File.PEPPY_DASH,            -1,                         -1)
    Character.edit_action_parameters(CBPEPPY, Action.Run,             File.PEPPY_RUN,             -1,                         -1)
    Character.edit_action_parameters(CBPEPPY, Action.RunBrake,        File.PEPPY_RUN_BRAKE,       -1,                         -1)
    Character.edit_action_parameters(CBPEPPY, Action.TurnRun,         File.PEPPY_TURN_RUN,        -1,                         -1)

    Character.edit_action_parameters(CBPEPPY, Action.Grab,            -1,                         Peppy.GRAB,                       -1)
    Character.edit_action_parameters(CBPEPPY, Action.ThrowF,          -1,                         Peppy.FTHROW,                     -1)
    Character.edit_action_parameters(CBPEPPY, Action.ThrowB,          -1,                         Peppy.BTHROW,                     -1)
    Character.edit_action_parameters(CBPEPPY, Action.Crouch,          File.WOLF_CROUCH,          -1,                          -1)
    Character.edit_action_parameters(CBPEPPY, Action.CrouchIdle,      File.WOLF_CROUCH_IDLE,     -1,                          -1)
    Character.edit_action_parameters(CBPEPPY, Action.CrouchEnd,       File.WOLF_CROUCH_END,      -1,                          -1)
    Character.edit_action_parameters(CBPEPPY, Action.JumpAerialF,     -1,                         Peppy.JUMP2,                      -1)
    Character.edit_action_parameters(CBPEPPY, Action.JumpAerialB,     -1,                         Peppy.JUMP2,                      -1)
    Character.edit_action_parameters(CBPEPPY, Action.Teeter,          -1,                         Peppy.TEETERING,                  -1)
    Character.edit_action_parameters(CBPEPPY, Action.TeeterStart,     -1,                         0x80000000,                 -1)
    Character.edit_action_parameters(CBPEPPY, Action.RollF,           -1,                         Peppy.FROLL,                      -1)
    Character.edit_action_parameters(CBPEPPY, Action.RollB,           -1,                         Peppy.BROLL,                      -1)
    Character.edit_action_parameters(CBPEPPY, Action.TechF,           -1,                         Peppy.TECH_ROLL,                  -1)
    Character.edit_action_parameters(CBPEPPY, Action.TechB,           -1,                         Peppy.TECH_ROLL,                  -1)
    Character.edit_action_parameters(CBPEPPY, Action.Tech,            -1,                         Peppy.TECH_STAND,                 -1)
    Character.edit_action_parameters(CBPEPPY, Action.ShieldBreak,     -1,                         Peppy.SHIELD_BREAK,               -1)
    Character.edit_action_parameters(CBPEPPY, Action.Stun,            -1,                         Peppy.STUN,                       -1)
    Character.edit_action_parameters(CBPEPPY, Action.Sleep,           -1,                         Peppy.ASLEEP,                     -1)
    Character.edit_action_parameters(CBPEPPY, Action.Taunt,           File.PEPPY_TAUNT,           Peppy.TAUNT,                      -1)
    Character.edit_action_parameters(CBPEPPY, Action.DashAttack,      File.PEPPY_DASH_ATTACK,     Peppy.DASH_ATTACK,                -1)
    Character.edit_action_parameters(CBPEPPY, Action.UTilt,           File.PEPPY_UTILT,           Peppy.UTILT,                      -1)
    Character.edit_action_parameters(CBPEPPY, Action.DTilt,           File.WOLF_DTILT,            Peppy.DTILT,                      -1)
    Character.edit_action_parameters(CBPEPPY, Action.FSmash,          File.FALCO_FSMASH,          Peppy.FSMASH,                     -1)
    Character.edit_action_parameters(CBPEPPY, Action.USmash,          -1,                         Peppy.USMASH,                     -1)
    Character.edit_action_parameters(CBPEPPY, Action.AttackAirN,      -1,                         Peppy.NAIR,                       -1)
    Character.edit_action_parameters(CBPEPPY, Action.AttackAirF,      File.PEPPY_FAIR,            Peppy.FAIR,                       -1)
    Character.edit_action_parameters(CBPEPPY, Action.AttackAirB,      File.PEPPY_BAIR,            Peppy.BAIR,                       -1)
    Character.edit_action_parameters(CBPEPPY, Action.AttackAirU,      File.PEPPY_UAIR,            Peppy.UAIR,                       -1)
    Character.edit_action_parameters(CBPEPPY, Action.AttackAirD,      -1,                         Peppy.DAIR,                       -1)


    Character.edit_action_parameters(CBPEPPY, Action.NSPG_BEGIN,      File.PEPPY_NSP_CHARGESTART, Peppy.NSP_BEGIN,                   0)
    Character.edit_action_parameters(CBPEPPY, Action.NSPG_CHARGE,     File.PEPPY_NSP_CHARGELOOP,  Peppy.NSP_CHARGE,                  0)
    Character.edit_action_parameters(CBPEPPY, Action.NSPG_SHOOT,      0x30B,                      Peppy.NSP_SHOOT,                   0)
    Character.edit_action_parameters(CBPEPPY, Action.NSPA_BEGIN,      File.PEPPY_NSP_CHARGESTART_AIR, Peppy.NSP_BEGIN,               0)
    Character.edit_action_parameters(CBPEPPY, Action.NSPA_CHARGE,     File.PEPPY_NSP_CHARGELOOP_AIR,  Peppy.NSP_CHARGE,              0)
    Character.edit_action_parameters(CBPEPPY, Action.NSPA_SHOOT,      File.PEPPY_NSP_SHOOT_AIR,   Peppy.NSP_SHOOT,                   0)
    Character.edit_action_parameters(CBPEPPY, Action.FOX.ReadyingFireFox,     -1,                 Peppy.USP_READY,                  -1)
    Character.edit_action_parameters(CBPEPPY, Action.FOX.ReadyingFireFoxAir,  -1,                 Peppy.USP_READY,                  -1)
    Character.edit_action_parameters(CBPEPPY, Action.FOX.FireFox,     File.PEPPY_BARREL_ROLL,     Peppy.USP_GROUND_MOVE,             0)
    Character.edit_action_parameters(CBPEPPY, Action.FOX.FireFoxAir,  File.PEPPY_BARREL_ROLL,     Peppy.USP_AIR_MOVE,                0)
    Character.edit_action_parameters(CBPEPPY, 0xEC,                   File.PEPPY_DSP_GROUND,      Peppy.DSP_GROUND,                 -1)
    Character.edit_action_parameters(CBPEPPY, 0xEF,                   File.PEPPY_DSP_IGNITE_GROUND, Peppy.DSP_DETONATE,     0x00000000)
    Character.edit_action_parameters(CBPEPPY, 0xF1,                   File.PEPPY_DSP_AIR,         Peppy.DSP_GROUND,                 -1)
    Character.edit_action_parameters(CBPEPPY, 0xF5,                   File.PEPPY_DSP_IGNITE_AIR,  Peppy.DSP_DETONATE,       0x00000000)
	Character.edit_action_parameters(CBPEPPY, Action.CliffCatch,      -1,                         Peppy.CLIFF_CATCH,                -1)
    Character.edit_action_parameters(CBPEPPY, Action.CliffWait,       -1,                         Peppy.CLIFF_WAIT,                 -1)

    // Modify Actions               // Action           // Staling ID   // Main ASM                 // Interrupt/Other ASM          // Movement/Physics ASM         // Collision ASM

    Character.edit_action(CBPEPPY,    Action.NSPG_BEGIN,  0x12,           PeppyNSP.begin_main_,       PeppyNSP.ground_begin_interrupt_, 0x800D8BB4,                   PeppyNSP.ground_begin_collision_)  //NSP_Ground_Begin
    Character.edit_action(CBPEPPY,    Action.NSPG_CHARGE, 0x12,           PeppyNSP.charge_main_,      PeppyNSP.ground_charge_interrupt_, 0x800D8BB4,                  PeppyNSP.ground_charge_collision_) //NSP_Ground_Charge
    Character.edit_action(CBPEPPY,    Action.NSPG_SHOOT,  0x12,           PeppyNSP.shoot_main_,       0,                              0x800D8BB4,                     PeppyNSP.ground_shoot_collision_)  //NSP_Ground_Shoot
    Character.edit_action(CBPEPPY,    Action.NSPA_BEGIN,  0x12,           PeppyNSP.begin_main_,       PeppyNSP.air_begin_interrupt_,  0x800D90E0,                     PeppyNSP.air_begin_collision_)     //NSP_Air_Begin
    Character.edit_action(CBPEPPY,    Action.NSPA_CHARGE, 0x12,           PeppyNSP.charge_main_,      PeppyNSP.air_charge_interrupt_, 0x800D90E0,                     PeppyNSP.air_charge_collision_)    //NSP_Air_Charge
    Character.edit_action(CBPEPPY,    Action.NSPA_SHOOT,  0x12,           PeppyNSP.shoot_main_,       0,                              0x800D90E0,                     PeppyNSP.air_shoot_collision_)
    Character.edit_action(CBPEPPY,   0xEC,                -1,             PeppyDSP.main,              0,                              0x800D8CCC,                     PeppyDSP.ground_collision)
    Character.edit_action(CBPEPPY,   0xEF,                -1,             PeppyDSP.detonate_main_ground, 0x00000000,                  0x800D8CCC,                     PeppyDSP.ground_collision_fail)
    Character.edit_action(CBPEPPY,   0xF1,                -1,             PeppyDSP.main,              0,                              0x800D90E0,                     PeppyDSP.air_collision)
    Character.edit_action(CBPEPPY,   0xF5,                -1,             PeppyDSP.detonate_main_air, 0x00000000,                     0x800D90E0,                     PeppyDSP.air_collision_fail)

    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags
    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags
    Character.edit_menu_action_parameters(CBPEPPY, 0x1,               -1,                         Peppy.VICTORY_2,                  -1)
    Character.edit_menu_action_parameters(CBPEPPY, 0x2,               File.PEPPY_CSS,             Peppy.CSS,                        -1)
    Character.edit_menu_action_parameters(CBPEPPY, 0x3,               File.PEPPY_VICTORY_1,       Peppy.VICTORY_1,                  -1)
    Character.edit_menu_action_parameters(CBPEPPY, 0x4,               File.PEPPY_CSS,             Peppy.CSS,                        -1)
    Character.edit_menu_action_parameters(CBPEPPY, 0xD,               File.PEPPY_1P_POSE,         -1,                         -1)
	

    Character.table_patch_start(variant_original, Character.id.CBPEPPY, 0x4)
    dw      Character.id.PEPPY
    OS.patch_end()

    Character.table_patch_start(ground_nsp, Character.id.CBPEPPY, 0x4)
    dw      PeppyNSP.ground_begin_initial_
    OS.patch_end()

    Character.table_patch_start(air_nsp, Character.id.CBPEPPY, 0x4)
    dw      PeppyNSP.air_begin_initial_
    OS.patch_end()

    Character.table_patch_start(ground_dsp, Character.id.CBPEPPY, 0x4)
    dw      PeppyDSP.initial_
    OS.patch_end()

    Character.table_patch_start(air_dsp, Character.id.CBPEPPY, 0x4)
    dw      PeppyDSP.air_initial_
    OS.patch_end()

    // Set menu zoom size.
    Character.table_patch_start(menu_zoom, Character.id.CBPEPPY, 0x4)
    float32 1.0
    OS.patch_end()

    // Set crowd chant FGM.
    Character.table_patch_start(crowd_chant_fgm, Character.id.CBPEPPY, 0x2)
    dh  0x0433
    OS.patch_end()

    // Set Kirby hat_id
    Character.table_patch_start(kirby_inhale_struct, 0x2, Character.id.CBPEPPY, 0xC)
    dh 0x24
    OS.patch_end()

    // Set default costumes
    Character.set_default_costumes(Character.id.CBPEPPY, 0, 1, 4, 5, 1, 3, 2)
    Teams.add_team_costume(YELLOW, CBPEPPY, 0x0)

    // Patches for full charge Neutral B effect removal.
    Character.table_patch_start(gfx_routine_end, Character.id.CBPEPPY, 0x4)
    dw      Peppy.charge_gfx_routine_
    OS.patch_end()

    // For spawning, clears out charges of nsp
    Character.table_patch_start(initial_script, Character.id.CBPEPPY, 0x4)
    dw      0x800D7DEC                      // use samus jump
    OS.patch_end()

    // Set Remix 1P ending music
    Character.table_patch_start(remix_1p_end_bgm, Character.id.CBPEPPY, 0x2)
    dh {MIDI.id.AREA6}
    OS.patch_end()

    // Shield colors for costume matching
    Character.set_costume_shield_colors(CBPEPPY, BROWN, RED, BROWN, AZURE, BLACK, ORANGE, NA, NA)

    // Set action strings
    Character.table_patch_start(action_string, Character.id.CBPEPPY, 0x4)
    dw  Action.action_string_table
    OS.patch_end()
}
