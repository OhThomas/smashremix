// PSonic.asm

// This file contains file inclusions, action edits, and assembly for PSonic.

scope PSonic {

    // Modify Action Parameters             // Action               // Animation                // Moveset Data             // Flags
    Character.edit_action_parameters(PSONIC, Action.Idle,            File.SONIC_IDLE,            Sonic.IDLE,                       -1)
    Character.edit_action_parameters(PSONIC, 0x06,                   File.SONIC_IDLE,            Sonic.IDLE,                       -1)
    Character.edit_action_parameters(PSONIC, Action.Entry,           File.SONIC_IDLE,            Sonic.IDLE,                       -1)
    Character.edit_action_parameters(PSONIC, Action.ReviveWait,      File.SONIC_IDLE,            Sonic.IDLE,                       -1)
    Character.edit_action_parameters(PSONIC, Action.EggLay,          File.SONIC_IDLE,            Sonic.IDLE,                       -1)
    Character.edit_action_parameters(PSONIC, Action.Tech,            File.SONIC_TECH,            Sonic.TECH_STAND,                 -1)
    Character.edit_action_parameters(PSONIC, Action.TechF,           File.SONIC_TECHF,           Sonic.TECH_ROLL,                  -1)
    Character.edit_action_parameters(PSONIC, Action.TechB,           File.SONIC_TECHB,           Sonic.TECH_ROLL,                  -1)
    Character.edit_action_parameters(PSONIC, Action.RollF,           -1,                         Sonic.FROLL,                      -1)
    Character.edit_action_parameters(PSONIC, Action.RollB,           -1,                         Sonic.BROLL,                      -1)
    Character.edit_action_parameters(PSONIC, Action.CliffCatch,      File.SONIC_CLIFF_CATCH,     -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.CliffSlow,       File.SONIC_CLIFF_SLOW,      -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.CliffWait,       File.SONIC_CLIFF_WAIT,      -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.CliffQuick,      File.SONIC_CLIFF_QUICK,     -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.CliffClimbQuick1, File.SONIC_CLIFF_CLIMB_QUICK1, -1,                     -1)
    Character.edit_action_parameters(PSONIC, Action.CliffClimbQuick2, File.SONIC_CLIFF_CLIMB_QUICK2, -1,                     -1)
    Character.edit_action_parameters(PSONIC, Action.CliffAttackQuick1, File.SONIC_CLIFF_CLIMB_QUICK1, -1,                    -1)
    Character.edit_action_parameters(PSONIC, Action.CliffAttackQuick2, File.SONIC_CLIFF_ATTACK_QUICK2, Sonic.EDGEATTACKF,          -1)
    Character.edit_action_parameters(PSONIC, Action.CliffEscapeQuick1, File.SONIC_CLIFF_CLIMB_QUICK1, -1,                    -1)
    Character.edit_action_parameters(PSONIC, Action.CliffEscapeQuick2, File.SONIC_CLIFF_ESCAPE_QUICK2, -1,                   -1)
    Character.edit_action_parameters(PSONIC, Action.CliffEscapeSlow2, -1,                        Sonic.CLIFF_ESCAPE2,              -1)
    Character.edit_action_parameters(PSONIC, Action.ShieldBreak,     -1,                         Sonic.SHIELD_BREAK,               -1)
    Character.edit_action_parameters(PSONIC, Action.DeadU,           File.SONIC_TUMBLE,          Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.ScreenKO,        File.SONIC_TUMBLE,          Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.Tumble,          File.SONIC_TUMBLE,          Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.WallBounce,      File.SONIC_TUMBLE,          Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.Tornado,         File.SONIC_TUMBLE,          -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.ShieldBreakFall, File.SONIC_TUMBLE,          -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.EggLayPulled,    -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.InhalePulled,    File.SONIC_TUMBLE,          Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.InhaleSpat,      File.SONIC_TUMBLE,          -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.InhaleCopied,    File.SONIC_TUMBLE,          -1,                         -1)
    Character.edit_action_parameters(PSONIC, 0xB4,                   File.SONIC_TUMBLE,          Sonic.UNKNOWN_0B4,                -1)
    Character.edit_action_parameters(PSONIC, Action.FalconDivePulled, -1,                        Sonic.FALCON_DIVE_PULLED,         -1)
    Character.edit_action_parameters(PSONIC, Action.ThrownDK,        -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.ThrownDKPulled,  -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.ThrownMarioBros, -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.CapturePulled,   -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.Thrown1,         -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.Thrown2,         -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.ThrownFoxB,      0x2C8,                      Sonic.DMG_1,                      -1)

    Character.edit_action_parameters(PSONIC, Action.Stun,            File.SONIC_STUN,            Sonic.STUN,                       -1)
    Character.edit_action_parameters(PSONIC, Action.Sleep,           File.SONIC_STUN,            Sonic.ASLEEP,                     -1)
    Character.edit_action_parameters(PSONIC, Action.ShieldDrop,      File.SONIC_SHIELD_DROP,     -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.Pass,            File.SONIC_SHIELD_DROP,     -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.Crouch,          File.SONIC_CROUCH,          -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.CrouchIdle,      File.SONIC_CROUCH_IDLE,     -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.CrouchEnd,       File.SONIC_CROUCH_END,      -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.Walk1,           File.SONIC_WALK1,           -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.Walk2,           File.SONIC_WALK2,           -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.Walk3,           File.SONIC_WALK3,           -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.Run,             File.SONIC_RUN,             Sonic.RUN,                        -1)
    Character.edit_action_parameters(PSONIC, Action.RunBrake,        File.SONIC_RUN_BRAKE,       Sonic.RUNSTOP,                    -1)
    Character.edit_action_parameters(PSONIC, Action.TurnRun,         File.SONIC_RUN_TURN,        Sonic.TURNRUN,                    -1)
    Character.edit_action_parameters(PSONIC, Action.JumpF,           File.SONIC_JUMP_F,          Sonic.JUMP,                       -1)
    Character.edit_action_parameters(PSONIC, Action.JumpB,           File.SONIC_JUMP_B,          Sonic.JUMP,                       -1)
    Character.edit_action_parameters(PSONIC, Action.JumpAerialF,     File.SONIC_JUMP_AF,         Sonic.JUMP_2,                     -1)
    Character.edit_action_parameters(PSONIC, Action.JumpAerialB,     File.SONIC_JUMP_AB,         Sonic.JUMP_2,                     -1)
    Character.edit_action_parameters(PSONIC, Action.Fall,            File.SONIC_FALL,            -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.FallAerial,      File.SONIC_FALL2,           -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.JumpSquat,       File.SONIC_JUMPSQUAT,       -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.ShieldJumpSquat, File.SONIC_JUMPSQUAT,       -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.LandingLight,    File.SONIC_JUMPSQUAT,       -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.LandingHeavy,    File.SONIC_JUMPSQUAT,       -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.LandingSpecial,  File.SONIC_JUMPSQUAT,       -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.LandingAirX,     File.SONIC_JUMPSQUAT,       -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.FallSpecial,     File.SONIC_SFALL,           -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.Taunt,           File.SONIC_TAUNT,           Sonic.TAUNT,                      -1)
    Character.edit_action_parameters(PSONIC, Action.Grab,            File.SONIC_GRAB,            -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.GrabPull,        File.SONIC_GRAB_PULL,       -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.ThrowF,          File.SONIC_THROWF,          Sonic.FTHROW,                     -1)
    Character.edit_action_parameters(PSONIC, Action.ThrowB,          File.SONIC_THROWB,          Sonic.BTHROW,                     -1)
    Character.edit_action_parameters(PSONIC, Action.Jab1,            File.SONIC_JAB1,            Sonic.JAB1,                       -1)
    Character.edit_action_parameters(PSONIC, Action.Jab2,            File.SONIC_JAB2,            Sonic.JAB2,                       -1)
    Character.edit_action_parameters(PSONIC, 0xDC,                   File.SONIC_JAB3,            Sonic.JAB3,                       -1)
    Character.edit_action_parameters(PSONIC, Action.DashAttack,      File.SONIC_DASH_ATTACK,     Sonic.DASH_ATTACK,                -1)
    Character.edit_action_parameters(PSONIC, Action.FTiltHigh,       File.SONIC_FTILT_HIGH,      Sonic.FTILT_HIGH,                 -1)
    Character.edit_action_parameters(PSONIC, Action.FTiltMidHigh,    0,                          0x80000000,                  0)
    Character.edit_action_parameters(PSONIC, Action.FTilt,           File.SONIC_FTILT,           Sonic.FTILT,                      -1)
    Character.edit_action_parameters(PSONIC, Action.FTiltMidLow,     0,                          0x80000000,                  0)
    Character.edit_action_parameters(PSONIC, Action.FTiltLow,        File.SONIC_FTILT_LOW,       Sonic.FTILT_LOW,                  -1)
    Character.edit_action_parameters(PSONIC, Action.UTilt,           File.SONIC_UTILT,           Sonic.UTILT,                      -1)
    Character.edit_action_parameters(PSONIC, Action.DTilt,           File.SONIC_DTILT,           Sonic.DTILT,                      -1)
    Character.edit_action_parameters(PSONIC, Action.FSmashHigh,      File.SONIC_FSMASH_HIGH,     Sonic.FSMASH_HIGH,                0x00000000)
    Character.edit_action_parameters(PSONIC, Action.FSmashMidHigh,   File.SONIC_FSMASH_MID_HIGH, Sonic.FSMASH_MID_HIGH,            0x00000000)
    Character.edit_action_parameters(PSONIC, Action.FSmash,          File.SONIC_FSMASH,          Sonic.FSMASH,                     0x00000000)
    Character.edit_action_parameters(PSONIC, Action.FSmashMidLow,    File.SONIC_FSMASH_MID_LOW,  Sonic.FSMASH_MID_LOW,             0x00000000)
    Character.edit_action_parameters(PSONIC, Action.FSmashLow,       File.SONIC_FSMASH_LOW,      Sonic.FSMASH_LOW,                 0x00000000)
    Character.edit_action_parameters(PSONIC, Action.USmash,          File.SONIC_USMASH,          Sonic.USMASH,                     -1)
    Character.edit_action_parameters(PSONIC, Action.DSmash,          File.SONIC_DSMASH,          Sonic.DSMASH,                     -1)
    Character.edit_action_parameters(PSONIC, Action.AttackAirN,      File.SONIC_NAIR,            Sonic.NAIR,                       -1)
    Character.edit_action_parameters(PSONIC, Action.AttackAirF,      File.SONIC_FAIR,            Sonic.FAIR,                       -1)
    Character.edit_action_parameters(PSONIC, Action.AttackAirB,      File.SONIC_BAIR,            Sonic.BAIR,                       -1)
    Character.edit_action_parameters(PSONIC, Action.AttackAirU,      File.SONIC_UAIR,            Sonic.UAIR,                       -1)
    Character.edit_action_parameters(PSONIC, Action.AttackAirD,      File.SONIC_DAIR,            Sonic.DAIR,                       -1)
    Character.edit_action_parameters(PSONIC, Action.EnterPipe,       File.SONIC_ENTER_PIPE,      -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.ExitPipe,        File.SONIC_EXIT_PIPE,       -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.DownStandU,      File.SONIC_DOWNSTANDU,      -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.StunLandU,       File.SONIC_DOWNBOUNCEU,      -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.StunStartU,      File.SONIC_DOWNSTANDU,      -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.Revive1,         File.SONIC_DOWNBOUNCED,      -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.Revive2,         File.SONIC_DOWNSTANDD,      -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.DownStandD,      File.SONIC_DOWNSTANDD,      -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.StunLandD,       File.SONIC_DOWNBOUNCED,      -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.StunStartD,      File.SONIC_DOWNSTANDD,      -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.DownBounceU,     File.SONIC_DOWNBOUNCEU,     Sonic.DOWNBOUNCE,                 -1)
    Character.edit_action_parameters(PSONIC, Action.DownBounceD,     File.SONIC_DOWNBOUNCED,     Sonic.DOWNBOUNCE,                 -1)
    Character.edit_action_parameters(PSONIC, Action.DownAttackU,     File.SONIC_DOWNATTACKU,     Sonic.DOWNATTACKU,                -1)
    Character.edit_action_parameters(PSONIC, Action.DownBackU,       File.SONIC_DOWNBACKU,       -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.DownBackD,       File.SONIC_DOWNBACKD,       -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.DownForwardD,    File.SONIC_DOWNFORWARDD,    -1,                         -1)
    Character.edit_action_parameters(PSONIC, Action.DownForwardU,    File.SONIC_DOWNFORWARDU,    -1,                         -1)
    Character.edit_action_parameters(PSONIC, 0xE4,                   File.SONIC_USP_SPRING,      Sonic.USP,                        0x00000000)

    Character.edit_action_parameters(PSONIC, Action.Teeter,          File.SONIC_TEETER,          Sonic.TEETERING,                  -1)
    Character.edit_action_parameters(PSONIC, Action.TeeterStart,     File.SONIC_TEETER_START,    -1,                         -1)

    Character.edit_action_parameters(PSONIC, 0xDF,                   File.SONIC_ENTRY_RIGHT,     Sonic.ENTRY,                      -1)
    Character.edit_action_parameters(PSONIC, 0xE0,                   File.SONIC_ENTRY_LEFT,      Sonic.ENTRY,                      -1)

    Character.edit_action_parameters(PSONIC, Action.DamageHigh1,     -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.DamageHigh2,     -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.DamageHigh3,     -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.DamageMid1,      -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.DamageMid2,      -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.DamageMid3,      -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.DamageLow1,      -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.DamageLow2,      -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.DamageLow3,      -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.DamageAir1,      -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.DamageAir2,      -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.DamageAir3,      -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.DamageElec1,     -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.DamageElec2,     -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(PSONIC, Action.DamageFlyHigh,   -1,                         Sonic.DMG_2,                      -1)
    Character.edit_action_parameters(PSONIC, Action.DamageFlyMid,    -1,                         Sonic.DMG_2,                      -1)
    Character.edit_action_parameters(PSONIC, Action.DamageFlyLow,    -1,                         Sonic.DMG_2,                      -1)
    Character.edit_action_parameters(PSONIC, Action.DamageFlyTop,    -1,                         Sonic.DMG_2,                      -1)
    Character.edit_action_parameters(PSONIC, Action.DamageFlyRoll,   -1,                         Sonic.DMG_2,                      -1)

    // Add Action Parameters                // Action Name      // Base Action  // Animation                // Moveset Data             // Flags
    Character.add_new_action_params(PSONIC,  DSP_Ground_Charge,  -1,             File.SONIC_CHARGE_LOOP,     Sonic.DSP_CHARGE,                 0)
    Character.add_new_action_params(PSONIC,  DSP_Ground_Move,    -1,             File.SONIC_SPIN_LOOP_FAST,  Sonic.DSP_MOVE,                   0x10000000)
    Character.add_new_action_params(PSONIC,  DSP_Ground_End,     -1,             File.SONIC_CROUCH_END,      0x80000000,                 0)
    Character.add_new_action_params(PSONIC,  DSP_Air_Charge,     -1,             File.SONIC_CHARGE_LOOP,     Sonic.DSP_AIR_CHARGE,             0)
    Character.add_new_action_params(PSONIC,  DSP_Air_Move,       -1,             File.SONIC_JUMP_F,          Sonic.DSP_AIR_MOVE,               0)
    Character.add_new_action_params(PSONIC,  DSP_Air_Jump,       -1,             File.SONIC_JUMP_F,          Sonic.DSP_AIR_JUMP,               0)
    Character.add_new_action_params(PSONIC,  DSP_Air_End,        -1,             File.SONIC_NSP_FINISH,      0x80000000,                 0)
    Character.add_new_action_params(PSONIC,  NSP_Begin,          -1,             File.SONIC_SPIN_LOOP,       Sonic.NSP_CHARGE,                 0)
    Character.add_new_action_params(PSONIC,  NSP_Move,           -1,             File.SONIC_SPIN_LOOP_FAST,  Sonic.NSP_MOVE,                   0x10000000)
    Character.add_new_action_params(PSONIC,  NSP_Locked_Move,    -1,             File.SONIC_SPIN_LOOP_FAST,  Sonic.NSP_MOVE,                   0x10000000)
    Character.add_new_action_params(PSONIC,  NSP_Ground_End,     -1,             File.SONIC_NSP_GROUND_END,  0x80000000,                 0)
    Character.add_new_action_params(PSONIC,  NSP_Air_End,        -1,             File.SONIC_JUMP_F,          0x80000000,                 0)
    Character.add_new_action_params(PSONIC,  NSP_Ground_Recoil,  -1,             File.SONIC_NSP_GROUND_RECOIL, 0x80000000,               0)
    Character.add_new_action_params(PSONIC,  NSP_Air_Recoil,     -1,             File.SONIC_JUMP_B,          0x80000000,                 0)
    Character.add_new_action_params(PSONIC,  NSP_Bounce,         -1,             File.SONIC_JUMP_F,          Sonic.NSP_BOUNCE,                 0)


    // Modify Actions            // Action          // Staling ID   // Main ASM                 // Interrupt/Other ASM          // Movement/Physics ASM         // Collision ASM
    Character.edit_action(PSONIC, 0xDC,              -1,             0x8014FE40,                 0x00000000,                     0x800D8CCC,                     0x800DDF44)
    Character.edit_action(PSONIC, 0xE4,              -1,             SonicUSP.main_air_,         SonicUSP.interrupt_,            SonicUSP.air_physics_,          0x800DE99C)
    //Character.edit_action(PSONIC, 0xEA,              -1,             0x00000000,                 SonicUSP.special_fall_interrupt_, -1,                           0x800DE99C)
    //Character.edit_action(PSONIC, 0xDF,              -1,             0x00000000,               0x00000000,                     0x00000000,                     0x00000000)
    //Character.edit_action(PSONIC, 0xE0,              -1,             0x00000000,               0x00000000,                     0x00000000,                     0x00000000)

    // Add Actions                   // Action Name     // Base Action  //Parameters                        // Staling ID   // Main ASM                     // Interrupt/Other ASM          // Movement/Physics ASM             // Collision ASM
    Character.add_new_action(PSONIC,  DSP_Ground_Charge, -1,             ActionParams.DSP_Ground_Charge,     0x1E,           SonicDSP.ground_charge_main_,   0,                              0x800D8BB4,                         SonicDSP.ground_charge_collision_)
    Character.add_new_action(PSONIC,  DSP_Ground_Move,   -1,             ActionParams.DSP_Ground_Move,       0x1E,           SonicDSP.ground_move_main_,     0,                              SonicDSP.ground_move_physics_,      SonicDSP.ground_move_collision_)
    Character.add_new_action(PSONIC,  DSP_Ground_End,    -1,             ActionParams.DSP_Ground_End,        0x1E,           0x800D94C4,                     0,                              0x800D8BB4,                         SonicDSP.ground_end_collision_)
    Character.add_new_action(PSONIC,  DSP_Air_Charge,    -1,             ActionParams.DSP_Air_Charge,        0x1E,           SonicDSP.air_charge_main_,      0,                              0x800D91EC,                         SonicDSP.air_charge_collision_)
    Character.add_new_action(PSONIC,  DSP_Air_Move,      -1,             ActionParams.DSP_Air_Move,          0x1E,           SonicDSP.air_move_main_,        SonicDSP.air_move_interrupt_,   SonicDSP.air_movement_physics_,     SonicDSP.air_move_collision_)
    Character.add_new_action(PSONIC,  DSP_Air_Jump,      -1,             ActionParams.DSP_Air_Jump,          0x1E,           SonicDSP.air_move_main_,        SonicDSP.air_move_interrupt_,   SonicDSP.air_movement_physics_,     SonicDSP.air_move_collision_)
    Character.add_new_action(PSONIC,  DSP_Air_End,       -1,             ActionParams.DSP_Air_End,           0x1E,           0x800D94E8,                     0,                              0x800D91EC,                         SonicDSP.air_end_collision_)
    Character.add_new_action(PSONIC,  NSP_Begin,         -1,             ActionParams.NSP_Begin,             0x12,           SonicNSP.begin_main_,           0,                              0,                                  0x800DE6B0)
    Character.add_new_action(PSONIC,  NSP_Move,          -1,             ActionParams.NSP_Move,              0x12,           SonicNSP.move_main_,            0,                              SonicNSP.move_physics_,             SonicNSP.move_collision_)
    Character.add_new_action(PSONIC,  NSP_Locked_Move,   -1,             ActionParams.NSP_Locked_Move,       0x12,           SonicNSP.move_main_,            0,                              SonicNSP.move_physics_,             SonicNSP.move_collision_)
    Character.add_new_action(PSONIC,  NSP_Ground_End,    -1,             ActionParams.NSP_Ground_End,        0x12,           0x800D94C4,                     0,                              0x800D8BB4,                         SonicNSP.ground_end_collision_)
    Character.add_new_action(PSONIC,  NSP_Air_End,       -1,             ActionParams.NSP_Air_End,           0x12,           0x800D94E8,                     0,                              0x800D91EC,                         SonicNSP.air_end_collision_)
    Character.add_new_action(PSONIC,  NSP_Ground_Recoil, -1,             ActionParams.NSP_Ground_Recoil,     0x12,           0x800D94C4,                     0,                              0x800D8BB4,                         SonicNSP.ground_recoil_collision_)
    Character.add_new_action(PSONIC,  NSP_Air_Recoil,    -1,             ActionParams.NSP_Air_Recoil,        0x12,           0x800D94E8,                     0,                              0x800D91EC,                         SonicNSP.air_recoil_collision_)
    Character.add_new_action(PSONIC,  NSP_Bounce,        -1,             ActionParams.NSP_Bounce,            0x12,           0x800D94E8,                     0,                              0x800D91EC,                         0x800DE99C)

    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags
    Character.edit_menu_action_parameters(PSONIC, 0x0,               File.SONIC_IDLE,            Sonic.IDLE,                       -1)
    Character.edit_menu_action_parameters(PSONIC, 0x1,               File.SONIC_VICTORY1,        Sonic.VICTORY1,                 -1)
    Character.edit_menu_action_parameters(PSONIC, 0x2,               File.SONIC_VICTORY2,        0x80000000,                 -1)
    Character.edit_menu_action_parameters(PSONIC, 0x3,               File.SONIC_CSS,             Sonic.CSS,                 -1)
    Character.edit_menu_action_parameters(PSONIC, 0x4,               File.SONIC_CSS,             Sonic.CSS,                 -1)
    Character.edit_menu_action_parameters(PSONIC, 0x5,               File.SONIC_CLAP,            Sonic.CLAP,                       -1)
    Character.edit_menu_action_parameters(PSONIC, 0x9,               File.SONIC_PUPPET_FALL,     -1,                         -1)
    Character.edit_menu_action_parameters(PSONIC, 0xA,               File.SONIC_PUPPET_UP,       -1,                         -1)
    Character.edit_menu_action_parameters(PSONIC, 0xD,               File.SONIC_1P_POSE,         Sonic.SPPOSE,                 -1)
    Character.edit_menu_action_parameters(PSONIC, 0xE,               File.SONIC_1P_CPU_POSE,     0x80000000,                 -1)

    // Setting Sonic as original variant
    Character.table_patch_start(variant_original, Character.id.PSONIC, 0x4)
    dw      Character.id.SONIC
    OS.patch_end()

    // Set menu zoom size.
    Character.table_patch_start(menu_zoom, Character.id.PSONIC, 0x4)
    float32 0.95
    OS.patch_end()

    // Set crowd chant FGM.
    Character.table_patch_start(crowd_chant_fgm, Character.id.PSONIC, 0x2)
    dh  0x03F9
    OS.patch_end()

    // Set Kirby hat_id
    Character.table_patch_start(kirby_inhale_struct, 0x2, Character.id.PSONIC, 0xC)
    dh 0x1D
    OS.patch_end()

    // Set default costumes
    Character.set_default_costumes(Character.id.PSONIC, 0, 1, 4, 5, 2, 0, 3)
    Teams.add_team_costume(YELLOW, PSONIC, 0x5)

    // Set default costume shield colors
    // Character.set_costume_shield_colors(PSONIC, BLUE, BLACK, RED, GREEN, PURPLE, YELLOW, BLUE, YELLOW, RED, GREEN, PINK, ORANGE)
    Character.set_costume_shield_colors(PSONIC, BLUE, BLACK, RED, GREEN, PURPLE, YELLOW, NA, NA)

    Character.table_patch_start(ground_usp, Character.id.PSONIC, 0x4)
    dw      SonicUSP.ground_initial_
    OS.patch_end()
    Character.table_patch_start(air_usp, Character.id.PSONIC, 0x4)
    dw      SonicUSP.air_initial_
    OS.patch_end()

    Character.table_patch_start(ground_nsp, Character.id.PSONIC, 0x4)
    dw      SonicNSP.begin_initial_
    OS.patch_end()
    Character.table_patch_start(air_nsp, Character.id.PSONIC, 0x4)
    dw      SonicNSP.begin_initial_
    OS.patch_end()

    Character.table_patch_start(ground_dsp, Character.id.PSONIC, 0x4)
    dw      SonicDSP.ground_charge_initial_
    OS.patch_end()
    Character.table_patch_start(air_dsp, Character.id.PSONIC, 0x4)
    dw      SonicDSP.air_charge_initial_
    OS.patch_end()

    // Use Mario's initial/grounded script.
    Character.table_patch_start(initial_script, Character.id.PSONIC, 0x4)
    dw 0x800D7DCC
    OS.patch_end()
    Character.table_patch_start(grounded_script, Character.id.PSONIC, 0x4)
    dw 0x800DE428
    OS.patch_end()

    // Adds Tails to entry.
    Character.table_patch_start(entry_script, Character.id.PSONIC, 0x4)
    dw 0x8013DCAC                         // routine typically used by DK to load Barrel, now used for Tails
    OS.patch_end()

    // @ Description
    // Sonic's extra actions
    scope Action {
        constant Jab3(0x0DC)
        constant Appear1(0x0DF)
        constant Appear2(0x0E0)
        constant Spring(0x0E4)
        constant SpinDashChargeGround(0xF6)
        constant SpinDashGround(0xF7)
        constant SpinDashEndGround(0xF8)
        constant SpinDashChargeAir(0xF9)
        constant SpinDashAir(0xFA)
        constant SpinDashJumpAir(0xFB)
        constant SpinDashendAir(0xFC)
        constant HomingStart(0xFD)
        constant HomingMove(0xFE)
        constant HomingLockedMove(0xFF)
        constant HomingEndGround(0x100)
        constant HomingEndAir(0x101)
        constant HomingRecoilGround(0x102)
        constant HomingRecoilAir(0x103)
        constant HomingBounce(0x104)

        // strings!
        string_0x0E4:; String.insert("Spring")
        string_0xF6:; String.insert("SpinDashChargeGround")
        string_0xF7:; String.insert("SpinDashGround")
        string_0xF8:; String.insert("SpinDashEndGround")
        string_0xF9:; String.insert("SpinDashChargeAir")
        string_0xFA:; String.insert("SpinDashAir")
        string_0xFB:; String.insert("SpinDashJumpAir")
        string_0xFC:; String.insert("SpinDashEndAir")
        string_0xFD:; String.insert("HomingAttackStart")
        string_0xFE:; String.insert("HomingAttackMove")
        string_0xFF:; String.insert("HomingAttackLockedMove")
        string_0x100:; String.insert("HomingAttackEndGround")
        string_0x101:; String.insert("HomingAttackEndAir")
        string_0x102:; String.insert("HomingAttackRecoilGround")
        string_0x103:; String.insert("HomingAttackRecoilAir")
        string_0x104:; String.insert("HomingAttackBounce")

        action_string_table:
        dw Action.COMMON.string_jab3
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw string_0x0E4
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw string_0xF6
        dw string_0xF7
        dw string_0xF8
        dw string_0xF9
        dw string_0xFA
        dw string_0xFB
        dw string_0xFC
        dw string_0xFD
        dw string_0xFE
        dw string_0xFF
        dw string_0x100
        dw string_0x101
        dw string_0x102
        dw string_0x103
        dw string_0x104
    }

    // Set action strings
    Character.table_patch_start(action_string, Character.id.PSONIC, 0x4)
    dw  Action.action_string_table
    OS.patch_end()

    // Set Magnifying Glass Scale Override
    Character.table_patch_start(magnifying_glass_zoom, Character.id.PSONIC, 0x2)
    dh  0x0068
    OS.patch_end()

    // Set Remix 1P ending music
    Character.table_patch_start(remix_1p_end_bgm, Character.id.PSONIC, 0x2)
    dh {MIDI.id.GREEN_HILL_ZONE}
    OS.patch_end()
}
