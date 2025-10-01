// CBGoemon.asm

// This file contains file inclusions, action edits, and assembly for CBGoemon.

scope CBGoemon {

    // @ Description
    // Goemon's extra actions
    scope Action {
        constant Jab3(0x0DC)
        constant Entry_R(0x0DD)
        constant Entry_L(0x0DE)
        constant USP(0x0DF)
        // constant USPTurn(0x0E0)
        constant USPAttack(0x0E0)
        constant USPJump(0x0E1)
        constant USPEscape(0x0E2)

        // strings!
        string_0x0DC:; String.insert("Jab3")
        string_0x0DE:; String.insert("Entry")
        string_0x0DF:; String.insert("MagicCloudRide")
        string_0x0E0:; String.insert("MagicCloudAttack")
        string_0x0E1:; String.insert("MagicCloudJump")
        string_0x0E2:; String.insert("MagicCloudEscape")
        string_0x0E5:; String.insert("RyoTossGroundBegin")
        string_0x0E6:; String.insert("RyoTossGroundWait")
        string_0x0E7:; String.insert("RyoTossGroundWalk1")
        string_0x0E8:; String.insert("RyoTossGroundWalk2")
        string_0x0E9:; String.insert("RyoTossGroundBWalk1")
        string_0x0EA:; String.insert("RyoTossGroundBWalk2")
        string_0x0EB:; String.insert("RyoTossGroundEnd")
        string_0x0EC:; String.insert("RyoTossAirBegin")
        string_0x0ED:; String.insert("RyoTossAirIdle")
        string_0x0EE:; String.insert("RyoTossAirEnd")
        string_0x0EF:; String.insert("ChainPipeGround")
        string_0x0F0:; String.insert("ChainPipeGroundPull")
        string_0x0F1:; String.insert("ChainPipeGroundWallPull")
        string_0x0F2:; String.insert("ChainPipeAttack")
        string_0x0F3:; String.insert("ChainPipeBreak")
        string_0x0F4:; String.insert("ChainPipeAir")
        string_0x0F5:; String.insert("ChainPipeAirPull")
        string_0x0F6:; String.insert("ChainPipeAirWallPull")
        string_0x0F7:; String.insert("ChainPipeAirAttack")
        string_0x0F8:; String.insert("ChainPipeAirBreak")
        string_0x0F9:; String.insert("ChainPipeEnd")


        action_string_table:
        dw string_0x0DC
        dw Action.COMMON.string_jabloop
        dw string_0x0DE
        dw string_0x0DF
        dw string_0x0E0
        dw string_0x0E1
        dw string_0x0E2
        dw Action.COMMON.string_jabloop
        dw Action.COMMON.string_jabloop
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
        dw string_0x0F0
        dw string_0x0F1
        dw string_0x0F2
        dw string_0x0F3
        dw string_0x0F4
        dw string_0x0F5
        dw string_0x0F6
        dw string_0x0F7
        dw string_0x0F8
        dw string_0x0F9
    }

    // Modify Action Parameters                 // Action               // Animation                // Moveset Data             // Flags
    Character.edit_action_parameters(CBGOEMON,    Action.Entry,           File.GOEMON_IDLE,           Goemon.ENTRY,                       -1)
    Character.edit_action_parameters(CBGOEMON,    0x006,                  File.GOEMON_IDLE,           Goemon.IDLE,                       -1)
    Character.edit_action_parameters(CBGOEMON,    Action.Idle,            File.GOEMON_IDLE,           Goemon.IDLE,                       -1)
    Character.edit_action_parameters(CBGOEMON,    Action.ReviveWait,      File.GOEMON_IDLE,           Goemon.IDLE,                       -1)
    Character.edit_action_parameters(CBGOEMON,    Action.Crouch,          File.GOEMON_CROUCH_BEGIN,   -1,                         -1)
    Character.edit_action_parameters(CBGOEMON,    Action.CrouchIdle,      File.GOEMON_CROUCH_IDLE,    -1,                         -1)
    Character.edit_action_parameters(CBGOEMON,    Action.CrouchEnd,       File.GOEMON_CROUCH_END,     -1,                         -1)
    Character.edit_action_parameters(CBGOEMON,    Action.JumpF,           File.GOEMON_JUMP_F,         Goemon.JUMP_1,                     -1)
    Character.edit_action_parameters(CBGOEMON,    Action.JumpB,           File.GOEMON_JUMP_B,         Goemon.JUMP_1,                     -1)
    Character.edit_action_parameters(CBGOEMON,    Action.JumpAerialF,     File.GOEMON_JUMP_AIR_F,     Goemon.JUMP_2,                     -1)
    Character.edit_action_parameters(CBGOEMON,    Action.JumpAerialB,     File.GOEMON_JUMP_AIR_B,     Goemon.JUMP_2,                     -1)
    Character.edit_action_parameters(CBGOEMON,    Action.Fall,            File.GOEMON_FALL,           -1,                         -1)
    Character.edit_action_parameters(CBGOEMON,    Action.FallAerial,      File.GOEMON_FALL_AERIAL,    -1,                         -1)
    Character.edit_action_parameters(CBGOEMON,    Action.FallSpecial,     File.GOEMON_SFALL,          -1,                         -1)
    Character.edit_action_parameters(CBGOEMON,    Action.Teeter,          File.GOEMON_TEETER,         Goemon.TEETER,                     -1)
    Character.edit_action_parameters(CBGOEMON,    Action.TeeterStart,     File.GOEMON_TEETER_START,   -1,                         -1)
    Character.edit_action_parameters(CBGOEMON,    Action.TechF,           -1,                         Goemon.TECH_ROLL,                  -1)
    Character.edit_action_parameters(CBGOEMON,    Action.TechB,           -1,                         Goemon.TECH_ROLL,                  -1)
    Character.edit_action_parameters(CBGOEMON,    Action.Tech,            -1,                         Goemon.TECH,                       -1)
    Character.edit_action_parameters(CBGOEMON,    Action.ShieldBreak,     -1,                         Goemon.SHIELD_BREAK,               -1)
    Character.edit_action_parameters(CBGOEMON,    Action.Stun,            File.GOEMON_STUN,           Goemon.STUN,                       -1)
    Character.edit_action_parameters(CBGOEMON,    Action.Sleep,           File.GOEMON_STUN,           Goemon.ASLEEP,                     -1)
    Character.edit_action_parameters(CBGOEMON,    Action.Taunt,           File.GOEMON_TAUNT,          Goemon.TAUNT,                      -1)
    Character.edit_action_parameters(CBGOEMON,    Action.Dash,            File.GOEMON_DASH,           -1,                         -1)
    Character.edit_action_parameters(CBGOEMON,    Action.Run,             File.GOEMON_RUN,            -1,                         -1)
    Character.edit_action_parameters(CBGOEMON,    Action.RunBrake,        File.GOEMON_RUN_BRAKE,      -1,                         -1)
    //Character.edit_action_parameters(CBGOEMON,    Action.Turn,            File.GOEMON_TURN,           -1,                         -1)
    Character.edit_action_parameters(CBGOEMON,    Action.TurnRun,         File.GOEMON_TURN_RUN,       -1,                         -1)

    Character.edit_action_parameters(CBGOEMON,    Action.JumpSquat,       File.GOEMON_JUMPSQUAT,      -1,                         0)
    Character.edit_action_parameters(CBGOEMON,    Action.ShieldJumpSquat, File.GOEMON_JUMPSQUAT,      -1,                         0)
    Character.edit_action_parameters(CBGOEMON,    Action.LandingLight,    File.GOEMON_JUMPSQUAT,      -1,                         0)
    Character.edit_action_parameters(CBGOEMON,    Action.LandingHeavy,    File.GOEMON_JUMPSQUAT,      -1,                         0)
    Character.edit_action_parameters(CBGOEMON,    Action.LandingSpecial,  File.GOEMON_JUMPSQUAT,      -1,                         0)
    Character.edit_action_parameters(CBGOEMON,    Action.LandingAirB,     File.GOEMON_JUMPSQUAT,      -1,                         0)
    Character.edit_action_parameters(CBGOEMON,    Action.LandingAirU,     File.GOEMON_JUMPSQUAT,      -1,                         0)
    Character.edit_action_parameters(CBGOEMON,    Action.LandingAirD,     File.GOEMON_JUMPSQUAT,      -1,                         0)
    Character.edit_action_parameters(CBGOEMON,    Action.LandingAirX,     File.GOEMON_JUMPSQUAT,      -1,                         0)

    Character.edit_action_parameters(CBGOEMON, Action.EnterPipe,              File.GOEMON_ENTER_PIPE,             -1,             -1)
    Character.edit_action_parameters(CBGOEMON, Action.ExitPipe,               File.GOEMON_EXIT_PIPE,              -1,             -1)
    Character.edit_action_parameters(CBGOEMON, Action.CliffWait,              File.GOEMON_CLIFF_WAIT,             -1,             -1)
    Character.edit_action_parameters(CBGOEMON, Action.CliffClimbQuick2,       File.GOEMON_CLIFF_CLIMB_QUICK_2,    -1,             -1)
    Character.edit_action_parameters(CBGOEMON, Action.CliffClimbSlow2,        File.GOEMON_CLIFF_CLIMB_SLOW_2,     -1,             -1)
    Character.edit_action_parameters(CBGOEMON, Action.CliffAttackQuick1,      File.GOEMON_CLIFF_ATTACK_QUICK_1,   -1,             -1)
    Character.edit_action_parameters(CBGOEMON, Action.CliffAttackQuick2,      File.GOEMON_CLIFF_ATTACK_QUICK_2,   Goemon.CLIFF_ATTACK_F,             -1)
    Character.edit_action_parameters(CBGOEMON, Action.CliffAttackSlow2,       File.GOEMON_CLIFF_ATTACK_SLOW_2,    Goemon.CLIFF_ATTACK_S,             -1)
    Character.edit_action_parameters(CBGOEMON, Action.CliffEscapeQuick2,      File.GOEMON_CLIFF_ESCAPE_QUICK_2,   -1,             -1)
    Character.edit_action_parameters(CBGOEMON, Action.CliffEscapeSlow1,       File.GOEMON_CLIFF_ESCAPE_SLOW_1,    -1,             -1)
    Character.edit_action_parameters(CBGOEMON, Action.CliffEscapeSlow2,       File.GOEMON_CLIFF_ESCAPE_SLOW_2,    Goemon.CLIFF_ESCAPE_S2,            -1)
    Character.edit_action_parameters(CBGOEMON, Action.DownAttackD,            File.GOEMON_DOWN_ATTACK_D,          Goemon.DOWN_ATTACK_D,  -1)
    Character.edit_action_parameters(CBGOEMON, Action.DownAttackU,            File.GOEMON_DOWN_ATTACK_U,          Goemon.DOWN_ATTACK_U,  -1)
    Character.edit_action_parameters(CBGOEMON, Action.DownStandD,             File.GOEMON_DOWN_STAND_D,           -1,             -1)
    Character.edit_action_parameters(CBGOEMON, Action.DownStandU,             File.GOEMON_DOWN_STAND_U,           -1,             -1)
    Character.edit_action_parameters(CBGOEMON, Action.DownForwardD,           File.GOEMON_DOWN_FORWARD_D,         -1,             -1)
    Character.edit_action_parameters(CBGOEMON, Action.DownForwardU,           File.GOEMON_DOWN_FORWARD_U,         -1,             -1)
    Character.edit_action_parameters(CBGOEMON, Action.DownBackD,              File.GOEMON_DOWN_BACK_D,            -1,             -1)
    Character.edit_action_parameters(CBGOEMON, Action.DownBackU,              File.GOEMON_DOWN_BACK_U,            -1,             -1)


    Character.edit_action_parameters(CBGOEMON,    Action.EggLay,          File.GOEMON_IDLE,           -1,                         -1)

    Character.edit_action_parameters(CBGOEMON,    Action.Jab1,            File.GOEMON_JAB1,           Goemon.JAB_1,                      -1)
    Character.edit_action_parameters(CBGOEMON,    Action.Jab2,            File.GOEMON_JAB2,           Goemon.JAB_2,                      -1)
    Character.edit_action_parameters(CBGOEMON,    Action.DashAttack,      File.GOEMON_DASH_ATTACK,    Goemon.DASH_ATTACK,                0x40000000)
    Character.edit_action_parameters(CBGOEMON,    Action.FTiltHigh,       File.GOEMON_FTILT_HIGH,     Goemon.FTILT_HIGH,                 0x10000000)
    Character.edit_action_parameters(CBGOEMON,    Action.FTilt,           File.GOEMON_FTILT,          Goemon.FTILT,                      0x10000000)
    Character.edit_action_parameters(CBGOEMON,    Action.FTiltLow,        File.GOEMON_FTILT_LOW,      Goemon.FTILT_LOW,                  0x10000000)
    Character.edit_action_parameters(CBGOEMON,    Action.UTilt,           File.GOEMON_UTILT,          Goemon.UTILT,                      0x00000000)
    Character.edit_action_parameters(CBGOEMON,    Action.DTilt,           File.GOEMON_DTILT,          Goemon.DTILT,                      0x00000000)
    Character.edit_action_parameters(CBGOEMON,    Action.FSmashHigh,      0,                          0x80000000,                 0x00000000)
    Character.edit_action_parameters(CBGOEMON,    Action.FSmashMidHigh,   0,                          0x80000000,                 0x00000000)
    Character.edit_action_parameters(CBGOEMON,    Action.FSmash,          File.GOEMON_FSMASH,         Goemon.FSMASH,                     0x00000000)
    Character.edit_action_parameters(CBGOEMON,    Action.FSmashMidLow,    0,                          0x80000000,                 0x00000000)
    Character.edit_action_parameters(CBGOEMON,    Action.FSmashLow,       0,                          0x80000000,                 0x00000000)
    Character.edit_action_parameters(CBGOEMON,    Action.USmash,          File.GOEMON_USMASH,         Goemon.USMASH,                     0x00000000)
    Character.edit_action_parameters(CBGOEMON,    Action.DSmash,          File.GOEMON_DSMASH,         Goemon.DSMASH,                     0x00000000)
    Character.edit_action_parameters(CBGOEMON,    Action.AttackAirN,      File.GOEMON_NAIR,           Goemon.NAIR,                       -1)
    Character.edit_action_parameters(CBGOEMON,    Action.AttackAirF,      File.GOEMON_FAIR,           Goemon.FAIR,                       -1)
    Character.edit_action_parameters(CBGOEMON,    Action.AttackAirB,      File.GOEMON_BAIR,           Goemon.BAIR,                       -1)
    Character.edit_action_parameters(CBGOEMON,    Action.AttackAirU,      File.GOEMON_UAIR,           Goemon.UAIR,                       -1)
    Character.edit_action_parameters(CBGOEMON,    Action.AttackAirD,      File.GOEMON_DAIR,           Goemon.DAIR,                       0x00000000)
    Character.edit_action_parameters(CBGOEMON,    Action.BatSmash,        -1,                         Goemon.BAT_SMASH,                  -1)
    Character.edit_action_parameters(CBGOEMON,    Action.HeavyItemThrowF, -1,                         Goemon.HEAVY_ITEM_THROW_F,         -1)
    Character.edit_action_parameters(CBGOEMON,    Action.HeavyItemThrowB, -1,                         Goemon.HEAVY_ITEM_THROW_B,         -1)
    Character.edit_action_parameters(CBGOEMON,    Action.HeavyItemThrowSmashF, -1,                    Goemon.HEAVY_ITEM_THROW_SMASH_F,   -1)
    Character.edit_action_parameters(CBGOEMON,    Action.HeavyItemThrowSmashB, -1,                    Goemon.HEAVY_ITEM_THROW_SMASH_B,   -1)
    Character.edit_action_parameters(CBGOEMON,    Action.Grab,            File.GOEMON_GRAB,           Goemon.GRAB,                         -1)
    Character.edit_action_parameters(CBGOEMON,    Action.GrabPull,        File.GOEMON_GRAB_PULL,      -1,                         -1)
    Character.edit_action_parameters(CBGOEMON,    Action.ThrowF,          File.GOEMON_THROW_FORWARD,  Goemon.FTHROW,                     -1)
    Character.edit_action_parameters(CBGOEMON,    Action.ThrowB,          File.GOEMON_THROW_BACKWARD, Goemon.BTHROW,                     -1)
    Character.edit_action_parameters(CBGOEMON,    Action.Jab3,            File.GOEMON_JAB3,           Goemon.JAB_3,                      -1)
    Character.edit_action_parameters(CBGOEMON,    Action.USP,             File.GOEMON_USP_LOOP,       Goemon.USP_IDLE,                    0)
    // Character.edit_action_parameters(CBGOEMON,    Action.USPTurn,         0x1FB,                      0x80000000,               0)
    Character.edit_action_parameters(CBGOEMON,    Action.USPAttack,       File.GOEMON_USP_ATTACK,     Goemon.USP_ATTACK,                  0)
    Character.edit_action_parameters(CBGOEMON,    Action.USPJump,         File.GOEMON_USP_JUMP,       Goemon.USP_JUMP,                    0)
    Character.edit_action_parameters(CBGOEMON,    Action.USPEscape,       File.GOEMON_USP_ESCAPE,     Goemon.USP_ESCAPE,                  0)
    Character.edit_action_parameters(CBGOEMON,    Action.Entry_R,         File.GOEMON_ENTRY,          Goemon.ENTRY,                 -1)
    Character.edit_action_parameters(CBGOEMON,    Action.Entry_L,         File.GOEMON_ENTRY,          Goemon.ENTRY,                 -1)
    Character.edit_action_parameters(CBGOEMON,    Action.ShieldOn, 		File.GOEMON_SHIELD_ON,   	-1,                         -1)
	Character.edit_action_parameters(CBGOEMON,    Action.ShieldOff, 		File.GOEMON_SHIELD_OFF,   	-1,                         -1)


    // Modify Actions             // Action             // Staling ID   // Main ASM                     // Interrupt/Other ASM          // Movement/Physics ASM         // Collision ASM
    Character.edit_action(CBGOEMON, Action.USP,           0x11,           GoemonUSP.main_,                GoemonUSP.interrupt_,           GoemonUSP.physics_,             GoemonUSP.collision_)
    // Character.edit_action(CBGOEMON, Action.USPTurn,       0x11,           GoemonUSP.turn_main_,           GoemonUSP.interrupt_,           GoemonUSP.physics_,             GoemonUSP.collision_)
    Character.edit_action(CBGOEMON, Action.USPAttack,     0x11,           GoemonUSP.attack_main_,         0,                              GoemonUSP.physics_,             GoemonUSP.collision_)
    Character.edit_action(CBGOEMON, Action.USPJump,       0x11,           GoemonUSP.jump_main_,           0,                              GoemonUSP.jump_physics_,        GoemonUSP.collision_)
    Character.edit_action(CBGOEMON, Action.USPEscape,     0x11,           GoemonUSP.escape_main_,         0,                              0x800D9160,                     GoemonUSP.collision_)

    // Add Action Parameters                // Action Name      // Base Action  // Animation                // Moveset Data             // Flags
    Character.add_new_action_params(CBGOEMON, DSPGround,          -1,             File.GOEMON_DSPG,           Goemon.DSP,                        0x1FF00000)
    Character.add_new_action_params(CBGOEMON, DSPGroundPull,      -1,             File.GOEMON_DSP_PULL,       Goemon.DSP_PULL,                   0x5FF00000)
    Character.add_new_action_params(CBGOEMON, DSPGAttack,         -1,             File.GOEMON_DSPG_ATTACK,    Goemon.DSP_ATTACK,                 0x00000000)
    Character.add_new_action_params(CBGOEMON, DSPGBreak,          -1,             File.GOEMON_DSPG_BREAK,     Goemon.DSP_BREAK,                  0x1FF00000)
    Character.add_new_action_params(CBGOEMON, DSPAir,             -1,             File.GOEMON_DSPA,           Goemon.DSP_AIR,                    0x1FF00000)
    Character.add_new_action_params(CBGOEMON, DSPAirPull,         -1,             File.GOEMON_DSP_PULL,       Goemon.DSP_PULL,                   0x5FF00000)
    Character.add_new_action_params(CBGOEMON, DSPAAttack,         -1,             File.GOEMON_DSPA_ATTACK,    Goemon.DSP_ATTACK,                 0x00000000)
    Character.add_new_action_params(CBGOEMON, DSPABreak,          -1,             File.GOEMON_DSPA_BREAK,     Goemon.DSP_BREAK,                  0x1FF00000)
    Character.add_new_action_params(CBGOEMON, DSPEnd,             -1,             File.GOEMON_DSP_END,        0x80000000,                 0x00000000)
    Character.add_new_action_params(CBGOEMON, NSP_Ground_Begin,   -1,             File.GOEMON_NSPG_BEGIN,     Goemon.NSP_BEGIN,                  0)
    Character.add_new_action_params(CBGOEMON, NSP_Ground_Wait,    -1,             File.GOEMON_NSPG_IDLE,      Goemon.NSP_WAIT,                   0)
    Character.add_new_action_params(CBGOEMON, NSP_Ground_Walk1,   -1,             File.GOEMON_NSPG_WALK_1,    Goemon.NSP_WAIT,                   0)
    Character.add_new_action_params(CBGOEMON, NSP_Ground_Walk2,   -1,             File.GOEMON_NSPG_WALK_2,    Goemon.NSP_WAIT,                   0)
    Character.add_new_action_params(CBGOEMON, NSP_Ground_BWalk1,  -1,             File.GOEMON_NSPG_BWALK_1,   Goemon.NSP_WAIT,                   0)
    Character.add_new_action_params(CBGOEMON, NSP_Ground_BWalk2,  -1,             File.GOEMON_NSPG_BWALK_2,   Goemon.NSP_WAIT,                   0)
    Character.add_new_action_params(CBGOEMON, NSP_Ground_End,     -1,             File.GOEMON_NSPG_END,       Goemon.NSP_END,                    0)
    Character.add_new_action_params(CBGOEMON, NSP_Air_Begin,      -1,             File.GOEMON_NSPG_BEGIN,     Goemon.NSP_BEGIN,                  0)
    Character.add_new_action_params(CBGOEMON, NSP_Air_Wait,       -1,             File.GOEMON_NSPG_IDLE,      Goemon.NSP_WAIT,                   0)
    Character.add_new_action_params(CBGOEMON, NSP_Air_End,        -1,             File.GOEMON_NSPA_END,       Goemon.NSP_END,                    0)

    // Add Actions                   // Action Name     // Base Action  //Parameters                    // Staling ID   // Main ASM                     // Interrupt/Other ASM          // Movement/Physics ASM             // Collision ASM
    Character.add_new_action(CBGOEMON, NSP_Ground_Begin,  -1,             ActionParams.NSP_Ground_Begin,  0x12,           GoemonNSP.ground_begin_main_,   0,                              0x800D8BB4,                         GoemonNSP.ground_collision_)
    Character.add_new_action(CBGOEMON, NSP_Ground_Wait,   -1,             ActionParams.NSP_Ground_Wait,   0x12,           GoemonNSP.ground_wait_main_,    GoemonNSP.ground_interrupt_,    0x800D8BB4,                         GoemonNSP.ground_collision_)
    Character.add_new_action(CBGOEMON, NSP_Ground_Walk1,  -1,             ActionParams.NSP_Ground_Walk1,  0x12,           GoemonNSP.ground_wait_main_,    GoemonNSP.ground_interrupt_,    GoemonNSP.ground_walk_physics_,     GoemonNSP.ground_collision_)
    Character.add_new_action(CBGOEMON, NSP_Ground_Walk2,  -1,             ActionParams.NSP_Ground_Walk2,  0x12,           GoemonNSP.ground_wait_main_,    GoemonNSP.ground_interrupt_,    GoemonNSP.ground_walk_physics_,     GoemonNSP.ground_collision_)
    Character.add_new_action(CBGOEMON, NSP_Ground_BWalk1, -1,             ActionParams.NSP_Ground_BWalk1, 0x12,           GoemonNSP.ground_wait_main_,    GoemonNSP.ground_interrupt_,    GoemonNSP.ground_back_walk_physics_, GoemonNSP.ground_collision_)
    Character.add_new_action(CBGOEMON, NSP_Ground_BWalk2, -1,             ActionParams.NSP_Ground_BWalk2, 0x12,           GoemonNSP.ground_wait_main_,    GoemonNSP.ground_interrupt_,    GoemonNSP.ground_back_walk_physics_, GoemonNSP.ground_collision_)
    Character.add_new_action(CBGOEMON, NSP_Ground_End,    -1,             ActionParams.NSP_Ground_End,    0x12,           GoemonNSP.end_main_,            0,                              0x800D8BB4,                         GoemonNSP.ground_collision_)
    Character.add_new_action(CBGOEMON, NSP_Air_Begin,     -1,             ActionParams.NSP_Air_Begin,     0x12,           GoemonNSP.air_begin_main_,      0,                              GoemonNSP.air_physics_,             GoemonNSP.air_collision_)
    Character.add_new_action(CBGOEMON, NSP_Air_Wait,      -1,             ActionParams.NSP_Air_Wait,      0x12,           GoemonNSP.air_wait_main_,       0,                              GoemonNSP.air_physics_,             GoemonNSP.air_collision_)
    Character.add_new_action(CBGOEMON, NSP_Air_End,       -1,             ActionParams.NSP_Air_End,       0x12,           GoemonNSP.end_main_,            0,                              GoemonNSP.air_physics_,             GoemonNSP.air_collision_)
    Character.add_new_action(CBGOEMON, DSPGround,         -1,             ActionParams.DSPGround,         0x1E,           GoemonDSP.main_,                0,                              0x800D8BB4,                         GoemonDSP.ground_collision_)
    Character.add_new_action(CBGOEMON, DSPGroundPull,     -1,             ActionParams.DSPGroundPull,     0x1E,           GoemonDSP.pull_main_,           0,                              0x800D8C14,                         GoemonDSP.shared_ground_collision_)
    Character.add_new_action(CBGOEMON, DSPGroundWallPull, -1,             ActionParams.DSPGroundPull,     0x1E,           GoemonDSP.wall_pull_main_,      0,                              0x800D8C14,                         GoemonDSP.shared_ground_collision_)
    Character.add_new_action(CBGOEMON, DSPGAttack,        -1,             ActionParams.DSPGAttack,        0x1E,           0x800D94C4,                     0,                              0x800D8BB4,                         GoemonDSP.shared_ground_collision_)
    Character.add_new_action(CBGOEMON, DSPGBreak,         -1,             ActionParams.DSPGBreak,         0x1E,           0x800D94C4,                     0,                              0x800D8BB4,                         GoemonDSP.shared_ground_collision_)
    Character.add_new_action(CBGOEMON, DSPAir,            -1,             ActionParams.DSPAir,            0x1E,           GoemonDSP.main_,                0,                              0x800D90E0,                         GoemonDSP.air_collision_)
    Character.add_new_action(CBGOEMON, DSPAirPull,        -1,             ActionParams.DSPAirPull,        0x1E,           GoemonDSP.pull_main_,           0,                              0x800D93E4,                         GoemonDSP.shared_air_collision_)
    Character.add_new_action(CBGOEMON, DSPAirWallPull,    -1,             ActionParams.DSPAirPull,        0x1E,           GoemonDSP.wall_pull_main_,      0,                              0x800D93E4,                         GoemonDSP.shared_air_collision_)
    Character.add_new_action(CBGOEMON, DSPAAttack,        -1,             ActionParams.DSPAAttack,        0x1E,           0x800D94E8,                     0,                              0x800D91EC,                         GoemonDSP.shared_air_collision_)
    Character.add_new_action(CBGOEMON, DSPABreak,         -1,             ActionParams.DSPABreak,         0x1E,           0x800D94E8,                     0,                              0x800D90E0,                         GoemonDSP.shared_air_collision_)
    Character.add_new_action(CBGOEMON, DSPEnd,            -1,             ActionParams.DSPEnd,            0x1E,           0x800D94E8,                     0,                              0x800D9160,                         GoemonDSP.end_collision_)

    // Modify Menu Action Parameters                    // Action       // Animation                    // Moveset Data    // Flags
    Character.edit_menu_action_parameters(CBGOEMON,       0x0,            File.GOEMON_IDLE,               Goemon.IDLE,           -1)
    Character.edit_menu_action_parameters(CBGOEMON,       0x1,            File.GOEMON_CSS,                Goemon.CSS,            -1)
    Character.edit_menu_action_parameters(CBGOEMON,       0x2,            File.GOEMON_VICTORY_2,          Goemon.VICTORY_2,      -1)
    Character.edit_menu_action_parameters(CBGOEMON,       0x3,            File.GOEMON_VICTORY_3,          Goemon.SUDDEN_IMPACT,  -1)
    Character.edit_menu_action_parameters(CBGOEMON,       0x4,            File.GOEMON_CSS,                Goemon.CSS,            -1)
    Character.edit_menu_action_parameters(CBGOEMON,       0x5,            File.GOEMON_CLAP,                -1,            -1)
    Character.edit_menu_action_parameters(CBGOEMON,       0xD,            File.GOEMON_1P_POSE,            Goemon.ONEP,           -1)
    Character.edit_menu_action_parameters(CBGOEMON,       0xE,            File.GOEMON_1P_CPU,             Goemon.CPU,            -1)
    Character.edit_menu_action_parameters(CBGOEMON,       0xA,            File.GOEMON_PUPPET_UP,          -1,             -1)

    Character.table_patch_start(ground_nsp, Character.id.CBGOEMON, 0x4)
    dw      GoemonNSP.ground_begin_initial_
    OS.patch_end()
    Character.table_patch_start(air_nsp, Character.id.CBGOEMON, 0x4)
    dw      GoemonNSP.air_begin_initial_
    OS.patch_end()
    Character.table_patch_start(ground_usp, Character.id.CBGOEMON, 0x4)
    dw      GoemonUSP.ground_initial_
    OS.patch_end()
    Character.table_patch_start(air_usp, Character.id.CBGOEMON, 0x4)
    dw      GoemonUSP.air_initial_
    OS.patch_end()
    Character.table_patch_start(ground_dsp, Character.id.CBGOEMON, 0x4)
    dw      GoemonDSP.ground_initial_
    OS.patch_end()
    Character.table_patch_start(air_dsp, Character.id.CBGOEMON, 0x4)
    dw      GoemonDSP.air_initial_
    OS.patch_end()
    
    // Setting original variant to Goemon
    Character.table_patch_start(variant_original, Character.id.CBGOEMON, 0x4)
    dw      Character.id.GOEMON
    OS.patch_end()

    // Allows Goemon to use his entry which is similar to Link
    Character.table_patch_start(entry_action, Character.id.CBGOEMON, 0x8)
    dw Action.Entry_R, Action.Entry_L
    OS.patch_end()
    Character.table_patch_start(entry_script, Character.id.CBGOEMON, 0x4)
    dw Goemon.goemon_entry_routine_
    OS.patch_end()

    // Set crowd chant FGM.
    Character.table_patch_start(crowd_chant_fgm, Character.id.CBGOEMON, 0x2)
    dh  0x0557
    OS.patch_end()

    // Set Kirby hat_id
    Character.table_patch_start(kirby_inhale_struct, 0x2, Character.id.CBGOEMON, 0xC)
    dh 0x22
    OS.patch_end()

    // Set default costumes
    Character.set_default_costumes(Character.id.CBGOEMON, 0, 1, 2, 3, 4, 1, 2)
    Teams.add_team_costume(YELLOW, CBGOEMON, 0x0)

    // Shield colors for costume matching
    Character.set_costume_shield_colors(CBGOEMON, BROWN, BLUE, GREEN, WHITE, PINK, BLACK, NA, NA)

    // Set action strings
    Character.table_patch_start(action_string, Character.id.CBGOEMON, 0x4)
    dw  Action.action_string_table
    OS.patch_end()

    // Set Remix 1P ending music
    Character.table_patch_start(remix_1p_end_bgm, Character.id.CBGOEMON, 0x2)
    dh {MIDI.id.KAI_HIGHWAY}
    OS.patch_end()
}
