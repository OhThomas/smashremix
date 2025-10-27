// MSSonic.asm

// This file contains file inclusions, action edits, and assembly for Metal Sonic.

scope MSSonic {

    insert USP_GROUND_MOVE,"moveset/UP_SPECIAL_GROUND_MOVE.bin" // no end command, transitions into USP_LOOP
    insert USP_LOOP,"moveset/UP_SPECIAL_LOOP.bin"; Moveset.GO_TO(USP_LOOP)
    insert USP_AIR_MOVE,"moveset/UP_SPECIAL_AIR_MOVE.bin" ; Moveset.GO_TO(USP_LOOP)
    insert NSP_GROUND,"moveset/NSP_GROUND.bin"
    insert DSP_EMERALDS, "moveset/DSP_EMERALDS.bin"
	insert DSP_EMERALDS_GROUND,"moveset/DSP_EMERALDS_GROUND.bin"
    
    insert FSMASH_HIGH,"moveset/FSMASH_HIGH.bin"
    insert FSMASH_MID_HIGH,"moveset/FSMASH_MID_HIGH.bin"
    insert FSMASH,"moveset/FSMASH.bin"
    insert FSMASH_MID_LOW,"moveset/FSMASH_MID_LOW.bin"
    insert FSMASH_LOW,"moveset/FSMASH_LOW.bin"
    insert USMASH,"moveset/UP_SMASH.bin"

    insert UAIR,"moveset/UP_AERIAL.bin"


    // Modify Action Parameters              // Action               // Animation                // Moveset Data             // Flags
    Character.edit_action_parameters(MSSONIC, Action.Idle,            File.SSONIC_IDLE,           SSonic.IDLE,                       -1)
    Character.edit_action_parameters(MSSONIC, 0x06,                   File.SSONIC_IDLE,           SSonic.IDLE,                       -1)
    Character.edit_action_parameters(MSSONIC, Action.Entry,           File.SSONIC_IDLE,           SSonic.IDLE,                       -1)
    Character.edit_action_parameters(MSSONIC, Action.ReviveWait,      File.SSONIC_IDLE,           SSonic.IDLE,                       -1)
    Character.edit_action_parameters(MSSONIC, Action.EggLay,          File.SSONIC_IDLE,           SSonic.IDLE,                       -1)
    Character.edit_action_parameters(MSSONIC, Action.Tech,            File.SONIC_TECH,            Sonic.TECH_STAND,           -1)
    Character.edit_action_parameters(MSSONIC, Action.TechF,           File.SONIC_TECHF,           Sonic.TECH_ROLL,            -1)
    Character.edit_action_parameters(MSSONIC, Action.TechB,           File.SONIC_TECHB,           Sonic.TECH_ROLL,            -1)
    Character.edit_action_parameters(MSSONIC, Action.RollF,           -1,                         Sonic.FROLL,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.RollB,           -1,                         Sonic.BROLL,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.CliffCatch,      File.SONIC_CLIFF_CATCH,     -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.CliffSlow,       File.SONIC_CLIFF_SLOW,      -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.CliffWait,       File.SONIC_CLIFF_WAIT,      -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.CliffQuick,      File.SONIC_CLIFF_QUICK,     -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.CliffClimbQuick1, File.SONIC_CLIFF_CLIMB_QUICK1, -1,                     -1)
    Character.edit_action_parameters(MSSONIC, Action.CliffClimbQuick2, File.SONIC_CLIFF_CLIMB_QUICK2, -1,                     -1)
    Character.edit_action_parameters(MSSONIC, Action.CliffAttackQuick1, File.SONIC_CLIFF_CLIMB_QUICK1, -1,                    -1)
    Character.edit_action_parameters(MSSONIC, Action.CliffAttackQuick2, File.SONIC_CLIFF_ATTACK_QUICK2, Sonic.EDGEATTACKF,    -1)
    Character.edit_action_parameters(MSSONIC, Action.CliffEscapeQuick1, File.SONIC_CLIFF_CLIMB_QUICK1, -1,                    -1)
    Character.edit_action_parameters(MSSONIC, Action.CliffEscapeQuick2, File.SONIC_CLIFF_ESCAPE_QUICK2, Sonic.CLIFF_ESCAPE2,  -1)
    Character.edit_action_parameters(MSSONIC, Action.DeadU,           File.SONIC_TUMBLE,          Sonic.DMG_1,                -1)
    Character.edit_action_parameters(MSSONIC, Action.ScreenKO,        File.SONIC_TUMBLE,          Sonic.DMG_1,                -1)
    Character.edit_action_parameters(MSSONIC, Action.Tumble,          File.SONIC_TUMBLE,          Sonic.DMG_1,                -1)
    Character.edit_action_parameters(MSSONIC, Action.WallBounce,      File.SONIC_TUMBLE,          Sonic.DMG_1,                -1)
    Character.edit_action_parameters(MSSONIC, Action.Tornado,         File.SONIC_TUMBLE,          -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.ShieldBreakFall, File.SONIC_TUMBLE,          -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.ShieldBreak,     -1,                         Sonic.SHIELD_BREAK,         -1)
    Character.edit_action_parameters(MSSONIC, Action.InhalePulled,    File.SONIC_TUMBLE,          Sonic.DMG_1,                -1)
    Character.edit_action_parameters(MSSONIC, Action.InhaleSpat,      File.SONIC_TUMBLE,          -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.InhaleCopied,    File.SONIC_TUMBLE,          -1,                         -1)
    Character.edit_action_parameters(MSSONIC, 0xB4,                   File.SONIC_TUMBLE,          Sonic.UNKNOWN_0B4,          -1)
    Character.edit_action_parameters(MSSONIC, Action.FalconDivePulled, -1,                        Sonic.FALCON_DIVE_PULLED,   -1)

    Character.edit_action_parameters(MSSONIC, Action.ThrownDK,        -1,                         Sonic.DMG_1,                -1)
    Character.edit_action_parameters(MSSONIC, Action.ThrownDKPulled,  -1,                         Sonic.DMG_1,                -1)
    Character.edit_action_parameters(MSSONIC, Action.ThrownMarioBros, -1,                         Sonic.DMG_1,                -1)
    Character.edit_action_parameters(MSSONIC, Action.Thrown1,         -1,                         Sonic.DMG_1,                -1)
    Character.edit_action_parameters(MSSONIC, Action.Thrown2,         -1,                         Sonic.DMG_1,                -1)
    Character.edit_action_parameters(MSSONIC, Action.ThrownFoxB,      0x2C8,                      Sonic.DMG_1,                -1)
    Character.edit_action_parameters(MSSONIC, Action.EggLayPulled,    -1,                         Sonic.DMG_1,                -1)
    Character.edit_action_parameters(MSSONIC, Action.CapturePulled,   -1,                         Sonic.DMG_1,                -1)

    Character.edit_action_parameters(MSSONIC, Action.Stun,            File.SONIC_STUN,            Sonic.STUN,                 -1)
    Character.edit_action_parameters(MSSONIC, Action.Sleep,           File.SONIC_STUN,            Sonic.ASLEEP,               -1)
    Character.edit_action_parameters(MSSONIC, Action.ShieldDrop,      File.SONIC_SHIELD_DROP,     -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.Pass,            File.SONIC_SHIELD_DROP,     -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.Crouch,          File.SONIC_CROUCH,          -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.CrouchIdle,      File.SONIC_CROUCH_IDLE,     -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.CrouchEnd,       File.SONIC_CROUCH_END,      -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.Walk1,           File.SONIC_WALK1,           -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.Walk2,           File.SONIC_WALK2,           -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.Walk3,           File.SONIC_WALK3,           -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.Dash,            File.SSONIC_DASH,           -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.Run,             File.SSONIC_RUN,            Sonic.RUN,                        -1)
    Character.edit_action_parameters(MSSONIC, Action.RunBrake,        File.SONIC_RUN_BRAKE,       Sonic.RUNSTOP,              -1)
    Character.edit_action_parameters(MSSONIC, Action.TurnRun,         File.SONIC_RUN_TURN,        -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.JumpF,           File.SONIC_JUMP_F,          Sonic.JUMP,                 -1)
    Character.edit_action_parameters(MSSONIC, Action.JumpB,           File.SONIC_JUMP_B,          Sonic.JUMP,                 -1)
    Character.edit_action_parameters(MSSONIC, Action.JumpAerialF,     File.SONIC_JUMP_AF,         Sonic.JUMP_2,               -1)
    Character.edit_action_parameters(MSSONIC, Action.JumpAerialB,     File.SONIC_JUMP_AB,         Sonic.JUMP_2,               -1)
    Character.edit_action_parameters(MSSONIC, Action.Fall,            File.SONIC_FALL,            -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.FallAerial,      File.SONIC_FALL2,           -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.JumpSquat,       File.SONIC_JUMPSQUAT,       -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.ShieldJumpSquat, File.SONIC_JUMPSQUAT,       -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.LandingLight,    File.SONIC_JUMPSQUAT,       -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.LandingHeavy,    File.SONIC_JUMPSQUAT,       -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.LandingSpecial,  File.SONIC_JUMPSQUAT,       -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.LandingAirX,     File.SONIC_JUMPSQUAT,       -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.FallSpecial,     File.SONIC_SFALL,           -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.Taunt,           File.SONIC_TAUNT,           Sonic.TAUNT,                -1)
    Character.edit_action_parameters(MSSONIC, Action.Grab,            File.SONIC_GRAB,            -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.GrabPull,        File.SONIC_GRAB_PULL,       -1,                         -1)
    Character.edit_action_parameters(MSSONIC, Action.ThrowF,          File.SONIC_THROWF,          Sonic.FTHROW,               -1)
    Character.edit_action_parameters(MSSONIC, Action.ThrowB,          File.SONIC_THROWB,          Sonic.BTHROW,                     -1)

    Character.edit_action_parameters(MSSONIC, Action.Jab1,            File.SONIC_JAB1,            Sonic.JAB1,                       -1)
    Character.edit_action_parameters(MSSONIC, Action.Jab2,            File.SONIC_JAB2,            Sonic.JAB2,                       -1)
    Character.edit_action_parameters(MSSONIC, 0xDC,                   File.SONIC_JAB3,            Sonic.JAB3,                       -1)
    Character.edit_action_parameters(MSSONIC, Action.DashAttack,      File.SONIC_DASH_ATTACK,     SSonic.DASH_ATTACK,                -1)
    Character.edit_action_parameters(MSSONIC, Action.FTiltHigh,       File.SONIC_FTILT_HIGH,      Sonic.FTILT_HIGH,                 -1)
    Character.edit_action_parameters(MSSONIC, Action.FTiltMidHigh,    0,                          0x80000000,                  0)
    Character.edit_action_parameters(MSSONIC, Action.FTilt,           File.SONIC_FTILT,           Sonic.FTILT,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.FTiltMidLow,     0,                          0x80000000,                  0)
    Character.edit_action_parameters(MSSONIC, Action.FTiltLow,        File.SONIC_FTILT_LOW,       Sonic.FTILT_LOW,                  -1)
    Character.edit_action_parameters(MSSONIC, Action.UTilt,           File.SONIC_UTILT,           Sonic.UTILT,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.DTilt,           File.SONIC_DTILT,           Sonic.DTILT,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.FSmashHigh,      File.SONIC_FSMASH_HIGH,     FSMASH_HIGH,                0x00000000)
    Character.edit_action_parameters(MSSONIC, Action.FSmashMidHigh,   File.SONIC_FSMASH_MID_HIGH, FSMASH_MID_HIGH,            0x00000000)
    Character.edit_action_parameters(MSSONIC, Action.FSmash,          File.SONIC_FSMASH,          FSMASH,                     0x00000000)
    Character.edit_action_parameters(MSSONIC, Action.FSmashMidLow,    File.SONIC_FSMASH_MID_LOW,  FSMASH_MID_LOW,             0x00000000)
    Character.edit_action_parameters(MSSONIC, Action.FSmashLow,       File.SONIC_FSMASH_LOW,      FSMASH_LOW,                 0x00000000)
    Character.edit_action_parameters(MSSONIC, Action.USmash,          File.SONIC_USMASH,          USMASH,                     -1)
    Character.edit_action_parameters(MSSONIC, Action.DSmash,          File.SONIC_DSMASH,          Sonic.DSMASH,                     -1)
    Character.edit_action_parameters(MSSONIC, Action.AttackAirN,      File.SONIC_NAIR,            Sonic.NAIR,                       -1)
    // Character.edit_action_parameters(MSSONIC, Action.AttackAirF,      File.SONIC_FAIR,            Sonic.FAIR,                       -1)
    // Character.edit_action_parameters(MSSONIC, Action.AttackAirB,      File.SONIC_BAIR,            Sonic.BAIR,                       -1)
    Character.edit_action_parameters(MSSONIC, Action.AttackAirB,      File.LUCAS_BAIR,            Lucas.BAIR,                       -1)
    Character.edit_action_parameters(MSSONIC, Action.AttackAirU,      File.SONIC_UAIR,            UAIR,                       -1)
    Character.edit_action_parameters(MSSONIC, Action.AttackAirD,      File.SONIC_DAIR,            Sonic.DAIR,                       -1)

    Character.edit_action_parameters(MSSONIC, Action.EnterPipe,       File.SONIC_ENTER_PIPE,      -1,                        -1)
    Character.edit_action_parameters(MSSONIC, Action.ExitPipe,        File.SONIC_EXIT_PIPE,       -1,                        -1)
    Character.edit_action_parameters(MSSONIC, Action.DownStandU,      File.SONIC_DOWNSTANDU,      -1,                        -1)
    Character.edit_action_parameters(MSSONIC, Action.StunLandU,       File.SONIC_DOWNBOUNCEU,      -1,                       -1)
    Character.edit_action_parameters(MSSONIC, Action.StunStartU,      File.SONIC_DOWNSTANDU,      -1,                        -1)
    Character.edit_action_parameters(MSSONIC, Action.Revive1,         File.SONIC_DOWNBOUNCED,      -1,                       -1)
    Character.edit_action_parameters(MSSONIC, Action.Revive2,         File.SONIC_DOWNSTANDD,      -1,                        -1)
    Character.edit_action_parameters(MSSONIC, Action.DownStandD,      File.SONIC_DOWNSTANDD,      -1,                        -1)
    Character.edit_action_parameters(MSSONIC, Action.StunLandD,       File.SONIC_DOWNBOUNCED,      -1,                       -1)
    Character.edit_action_parameters(MSSONIC, Action.StunStartD,      File.SONIC_DOWNSTANDD,      -1,                        -1)
    Character.edit_action_parameters(MSSONIC, Action.DownBounceU,     File.SONIC_DOWNBOUNCEU,     Sonic.DOWNBOUNCE,          -1)
    Character.edit_action_parameters(MSSONIC, Action.DownBounceD,     File.SONIC_DOWNBOUNCED,     Sonic.DOWNBOUNCE,          -1)
    Character.edit_action_parameters(MSSONIC, Action.DownAttackU,     File.SONIC_DOWNATTACKU,     Sonic.DOWNATTACKU,         -1)
    Character.edit_action_parameters(MSSONIC, Action.DownBackU,       File.SONIC_DOWNBACKU,       -1,                        -1)
    Character.edit_action_parameters(MSSONIC, Action.DownBackD,       File.SONIC_DOWNBACKD,       -1,                        -1)
    Character.edit_action_parameters(MSSONIC, Action.DownForwardD,    File.SONIC_DOWNFORWARDD,    -1,                        -1)
    Character.edit_action_parameters(MSSONIC, Action.DownForwardU,    File.SONIC_DOWNFORWARDU,    -1,                        -1)
    // Character.edit_action_parameters(MSSONIC, 0xE4,                   File.SONIC_USP_SPRING,      Sonic.USP,                  0x00000000)
    Character.edit_action_parameters(MSSONIC, 0xEC,                   File.SSONIC_DSP,            DSP_EMERALDS_GROUND,              0)
    // Character.edit_action_parameters(MSSONIC, 0xF1,                   File.SSONIC_DSPA,           SSonic.DSP_EMERALDS,              0)

    Character.edit_action_parameters(MSSONIC, Action.Teeter,          File.SSONIC_TEETER,         SSonic.TEETERING,                  -1)
    Character.edit_action_parameters(MSSONIC, Action.TeeterStart,     File.SSONIC_TEETER_START,   -1,                         -1)

    Character.edit_action_parameters(MSSONIC, 0xDF,                   File.SSONIC_ENTRY_RIGHT,    SSonic.ENTRY,                      -1)
    Character.edit_action_parameters(MSSONIC, 0xE0,                   File.SSONIC_ENTRY_LEFT,     SSonic.ENTRY,                      -1)

    Character.edit_action_parameters(MSSONIC, Action.DamageHigh1,     -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.DamageHigh2,     -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.DamageHigh3,     -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.DamageMid1,      -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.DamageMid2,      -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.DamageMid3,      -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.DamageLow1,      -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.DamageLow2,      -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.DamageLow3,      -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.DamageAir1,      -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.DamageAir2,      -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.DamageAir3,      -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.DamageElec1,     -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.DamageElec2,     -1,                         Sonic.DMG_1,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.DamageFlyHigh,   -1,                         Sonic.DMG_2,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.DamageFlyMid,    -1,                         Sonic.DMG_2,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.DamageFlyLow,    -1,                         Sonic.DMG_2,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.DamageFlyTop,    -1,                         Sonic.DMG_2,                      -1)
    Character.edit_action_parameters(MSSONIC, Action.DamageFlyRoll,   -1,                         Sonic.DMG_2,                      -1)



    // Add Action Parameters                // Action Name      // Base Action  // Animation                // Moveset Data             // Flags
    // Character.add_new_action_params(MSSONIC,  DSP_Ground_Charge,  -1,             File.SONIC_CHARGE_LOOP,    Sonic.DSP_CHARGE,           0)
    // Character.add_new_action_params(MSSONIC,  DSP_Ground_Move,    -1,             File.SONIC_SPIN_LOOP_FAST, Sonic.DSP_MOVE,             0x10000000)
    // Character.add_new_action_params(MSSONIC,  DSP_Ground_End,     -1,             File.SONIC_CROUCH_END,     0x80000000,                 0)
    // Character.add_new_action_params(MSSONIC,  DSP_Air_Charge,     -1,             File.SONIC_CHARGE_LOOP,    Sonic.DSP_AIR_CHARGE,       0)
    // Character.add_new_action_params(MSSONIC,  DSP_Air_Move,       -1,             File.SONIC_JUMP_F,         Sonic.DSP_AIR_MOVE,         0)
    // Character.add_new_action_params(MSSONIC,  DSP_Air_Jump,       -1,             File.SONIC_JUMP_F,         Sonic.DSP_AIR_JUMP,         0)
    // Character.add_new_action_params(MSSONIC,  DSP_Air_End,        -1,             File.SONIC_CROUCH_END,     0x80000000,                 0)
    // Character.add_new_action_params(MSSONIC,  NSP_Begin,          -1,             File.SSONIC_NSP_BEGIN,     SSonic.NSP_CHARGE,                 0)
    // Character.add_new_action_params(MSSONIC,  NSP_Move,           -1,             File.SSONIC_NSP_MOVE,      SSonic.NSP_MOVE,                   0x10000000)
    // Character.add_new_action_params(MSSONIC,  NSP_Locked_Move,    -1,             File.SSONIC_NSP_MOVE,      SSonic.NSP_MOVE,                   0x10000000)
    // Character.add_new_action_params(MSSONIC,  USP_Ground_Begin,   -1,             File.SSONIC_USPG_BEGIN,    SSonic.USP_BEGIN,                  0)
    // Character.add_new_action_params(MSSONIC,  USP_Ground_End,     -1,             File.SSONIC_USPG_END,      SSonic.USP_END,                    0)
    // Character.add_new_action_params(MSSONIC,  USP_Air_Begin,      -1,             File.SSONIC_USPA_BEGIN,    SSonic.USP_BEGIN,                  0)
    // Character.add_new_action_params(MSSONIC,  USP_Air_End,        -1,             File.SSONIC_USPA_END,      SSonic.USP_END_A,                  0)


    // Modify Actions            // Action          // Staling ID   // Main ASM                 // Interrupt/Other ASM          // Movement/Physics ASM         // Collision ASM
    Character.edit_action(MSSONIC, 0xDC,              -1,             0x8014FE40,                0x00000000,                     0x800D8CCC,                     0x800DDF44)
    Character.edit_action(MSSONIC, 0xEC,              -1,             0x800D94C4,                0,                              -1,                             -1)
    Character.edit_action(MSSONIC, 0xF1,              -1,             0x800D94E8,                0,                              -1,                             -1)

    // Add Actions                   // Action Name     // Base Action  //Parameters                        // Staling ID   // Main ASM                     // Interrupt/Other ASM          // Movement/Physics ASM             // Collision ASM
    // Character.add_new_action(MSSONIC,  DSP_Ground_Charge, -1,             ActionParams.DSP_Ground_Charge,     0x1E,           SonicDSP.ground_charge_main_,   0,                              0x800D8BB4,                         SonicDSP.ground_charge_collision_)
    // Character.add_new_action(MSSONIC,  DSP_Ground_Move,   -1,             ActionParams.DSP_Ground_Move,       0x1E,           SonicDSP.ground_move_main_,     0,                              SonicDSP.ground_move_physics_,      SonicDSP.ground_move_collision_)
    // Character.add_new_action(MSSONIC,  DSP_Ground_End,    -1,             ActionParams.DSP_Ground_End,        0x1E,           0x800D94C4,                     0,                              0x800D8BB4,                         SonicDSP.ground_end_collision_)
    // Character.add_new_action(MSSONIC,  DSP_Air_Charge,    -1,             ActionParams.DSP_Air_Charge,        0x1E,           SonicDSP.air_charge_main_,      0,                              0x800D91EC,                         SonicDSP.air_charge_collision_)
    // Character.add_new_action(MSSONIC,  DSP_Air_Move,      -1,             ActionParams.DSP_Air_Move,          0x1E,           SonicDSP.air_move_main_,        SonicDSP.air_move_interrupt_,   SonicDSP.air_movement_physics_,     SonicDSP.air_move_collision_)
    // Character.add_new_action(MSSONIC,  DSP_Air_Jump,      -1,             ActionParams.DSP_Air_Jump,          0x1E,           SonicDSP.air_move_main_,        SonicDSP.air_move_interrupt_,   SonicDSP.air_movement_physics_,     SonicDSP.air_move_collision_)
    // Character.add_new_action(MSSONIC,  DSP_Air_End,       -1,             ActionParams.DSP_Air_End,           0x1E,           0x800D94E8,                     0,                              0x800D91EC,                         SonicDSP.air_end_collision_)
    // Character.add_new_action(MSSONIC,  NSP_Begin,         -1,             ActionParams.NSP_Begin,             0x11,           SonicNSP.ssonic_begin_main_,    0,                              0,                                  0x800DE958)
    // Character.add_new_action(MSSONIC,  NSP_Move,          -1,             ActionParams.NSP_Move,              0x11,           SonicNSP.ssonic_move_main_,     0,                              SonicNSP.move_physics_,             SonicNSP.ssonic_move_collision_)
    // Character.add_new_action(MSSONIC,  NSP_Locked_Move,   -1,             ActionParams.NSP_Locked_Move,       0x11,           SonicNSP.ssonic_move_main_,     0,                              SonicNSP.move_physics_,             SonicNSP.ssonic_move_collision_)
    // Character.add_new_action(MSSONIC,  USP_Ground_Begin,  -1,             ActionParams.USP_Ground_Begin,      0x11,           SSonicUSP.begin_main_,          0,                              0x800D8BB4,                         SSonicUSP.ground_begin_collision_)
    // Character.add_new_action(MSSONIC,  USP_Ground_Move,   -1,             -1,                                 0x11,           SSonicUSP.move_main_,           0,                              SSonicUSP.move_physics_,            SSonicUSP.ground_move_collision_)
    // Character.add_new_action(MSSONIC,  USP_Ground_End,    -1,             ActionParams.USP_Ground_End,        0x11,           SSonicUSP.ground_end_main_,     SSonicUSP.ground_end_interrupt_, 0x800D8BB4,                        SSonicUSP.end_collision_)
    // Character.add_new_action(MSSONIC,  USP_Air_Begin,     -1,             ActionParams.USP_Air_Begin,         0x11,           SSonicUSP.begin_main_,          0,                              0x800D91EC,                         SSonicUSP.air_begin_collision_)
    // Character.add_new_action(MSSONIC,  USP_Air_Move,      -1,             -1,                                 0x11,           SSonicUSP.move_main_,           0,                              SSonicUSP.move_physics_,            SSonicUSP.air_move_collision_)
    // Character.add_new_action(MSSONIC,  USP_Air_End,       -1,             ActionParams.USP_Air_End,           0x11,           SSonicUSP.air_end_main_,        SSonicUSP.air_end_interrupt_,   0x800D9160,                         SSonicUSP.end_collision_)

    // Modify Menu Action Parameters              // Action          // Animation                // Moveset Data             // Flags
    Character.edit_menu_action_parameters(MSSONIC, 0x0,               File.SSONIC_IDLE,           SSonic.IDLE,                       -1)
    Character.edit_menu_action_parameters(MSSONIC, 0x1,               File.SSONIC_VICTORY1,       0x80000000,                 -1)
    Character.edit_menu_action_parameters(MSSONIC, 0x2,               File.SSONIC_VICTORY2,       0x80000000,                 -1)
    Character.edit_menu_action_parameters(MSSONIC, 0x3,               File.SSONIC_CSS,            SSonic.CSS,                        -1)
    Character.edit_menu_action_parameters(MSSONIC, 0x4,               File.SSONIC_CSS,            SSonic.CSS,                        -1)
    Character.edit_menu_action_parameters(MSSONIC, 0x5,               File.SONIC_CLAP,            Sonic.CLAP,                 -1)
    Character.edit_menu_action_parameters(MSSONIC, 0x9,               File.SONIC_PUPPET_FALL,     -1,                         -1)
    Character.edit_menu_action_parameters(MSSONIC, 0xA,               File.SONIC_PUPPET_UP,       -1,                         -1)
    Character.edit_menu_action_parameters(MSSONIC, 0xD,               File.SSONIC_1P_POSE,        0x80000000,                 -1)
    Character.edit_menu_action_parameters(MSSONIC, 0xE,               File.SSONIC_1P_CPU_POSE,    0x80000000,                 -1)

    // USP
    Character.edit_action_parameters(MSSONIC, 0xE7,                   -1,                         USP_GROUND_MOVE,            -1)
    Character.edit_action_parameters(MSSONIC, 0xE8,                   -1,                         USP_AIR_MOVE,               -1)

    // NSP
    Character.edit_action_parameters(MSSONIC, 0xE1,                   File.SSONIC_DSPA,           NSP_GROUND,                 0) // Ground NSP
 	Character.edit_action_parameters(MSSONIC, 0xE2,                   File.SSONIC_USPG_END,       -1,                         0) // Air NSP

    // DSP
	// Character.edit_action_parameters(MSSONIC,  0xEC,                       -1,         		        Wolf.DSP_INITIAL,               	-1)
	Character.edit_action_parameters(MSSONIC,  0xEE,                  File.WOLF_DSP_END_GRND,     -1,               	      -1)
    Character.edit_action_parameters(MSSONIC,  0xF1,          		  File.SSONIC_DSPA,           DSP_EMERALDS,               -1)
    Character.edit_action_parameters(MSSONIC,  0xF3,                  File.WOLF_DSP_END_AIR,      -1,               	      -1)
	Character.edit_action(MSSONIC,  0xF4,              -1,             -1,                         -1,                             WolfDSP.physics_,                     -1)
    Character.edit_action(MSSONIC,  0xF3,              -1,             -1,                         -1,                             WolfDSP.physics_,                     -1)
    Character.edit_action(MSSONIC,  0xF5,              -1,             -1,                         -1,                             WolfDSP.physics_,                     -1)

    Character.table_patch_start(variant_original, Character.id.MSSONIC, 0x4)
    dw      Character.id.SONIC // set Sonic as original character (not Fox, who MSSONIC is a clone of)
    OS.patch_end()

    // Set menu zoom size.
    Character.table_patch_start(menu_zoom, Character.id.MSSONIC, 0x4)
    float32 0.95
    OS.patch_end()

    // Set crowd chant FGM.
    Character.table_patch_start(crowd_chant_fgm, Character.id.MSSONIC, 0x2)
    dh  0x03F9
    OS.patch_end()

    // Set Kirby copy power and hat_id
    Character.table_patch_start(kirby_inhale_struct, Character.id.MSSONIC, 0xC)
    dh Character.id.FOX
    dh 0x2F
    OS.patch_end()

    // Set default costumes
    Character.set_default_costumes(Character.id.MSSONIC, 0, 1, 4, 5, 3, 1, 2)
    Teams.add_team_costume(YELLOW, MSSONIC, 0x4)

    // Set default costume shield colors
    Character.set_costume_shield_colors(MSSONIC, BLUE, AZURE, LIME, RED, YELLOW, BLACK, NA, NA)

    // Character.table_patch_start(ground_usp, Character.id.MSSONIC, 0x4)
    // dw      SSonicUSP.ground_begin_initial_
    // OS.patch_end()
    // Character.table_patch_start(air_usp, Character.id.MSSONIC, 0x4)
    // dw      SSonicUSP.air_begin_initial_
    // OS.patch_end()

    // Character.table_patch_start(ground_nsp, Character.id.MSSONIC, 0x4)
    // dw      SonicNSP.ssonic_begin_initial_
    // OS.patch_end()
    // Character.table_patch_start(air_nsp, Character.id.MSSONIC, 0x4)
    // dw      SonicNSP.ssonic_begin_initial_
    // OS.patch_end()

    Character.table_patch_start(ground_dsp, Character.id.MSSONIC, 0x4)
    dw      SSonicDSP.ground_initial_
    OS.patch_end()
    Character.table_patch_start(air_dsp, Character.id.MSSONIC, 0x4)
    dw      SSonicDSP.air_initial_
    OS.patch_end()

    // Use Mario's initial/grounded script.
    Character.table_patch_start(initial_script, Character.id.MSSONIC, 0x4)
    dw 0x800D7DCC
    OS.patch_end()
    Character.table_patch_start(grounded_script, Character.id.MSSONIC, 0x4)
    dw 0x800DE428
    OS.patch_end()

    // Set action strings
    Character.table_patch_start(action_string, Character.id.MSSONIC, 0x4)
    dw  Action.action_string_table
    OS.patch_end()

    // Adds Tails to entry.
    Character.table_patch_start(entry_script, Character.id.MSSONIC, 0x4)
    dw 0x8013DD68                           // skips entry script
    OS.patch_end()

    // @ Description
    // Super Sonic's extra actions
    scope Action {
        constant Jab3(0x0DC)
        constant Appear1(0x0DF)
        constant Appear2(0x0E0)
        constant Laser(0x0E1)
        constant LaserAir(0x0E2)
        // constant Spring(0x0E4)
        constant SpinDashChargeGround(0xF6)
        constant SpinDashGround(0xF7)
        constant SpinDashEndGround(0xF8)
        constant SpinDashChargeAir(0xF9)
        constant SpinDashAir(0xFA)
        constant SpinDashJumpAir(0xFB)
        constant SpinDashendAir(0xFC)
        constant SonicRushStart(0xFD)
        constant SonicRush(0xFE)
        constant SonicRush2(0xFF)
        constant SonicSpeedBegin(0x100)
        constant SonicSpeedMove(0x101)
        constant SonicSpeedEnd(0x102)
        constant SonicSpeedBeginAir(0x103)
        constant SonicSpeedMoveAir(0x104)
        constant SonicSpeedEndAir(0x105)

        // strings!
        string_0xE1:; String.insert("SonicLaser")
        string_0xE2:; String.insert("SonicLaserAir")
        string_0xEC:; String.insert("SonicChaos")
        string_0xF1:; String.insert("SonicChaosAir")
        string_0xFD:; String.insert("SonicRushBegin")
        string_0xFE:; String.insert("SonicRush")
        string_0xFF:; String.insert("SonicRush")
        string_0x100:; String.insert("SonicSpeedBegin")
        string_0x101:; String.insert("SonicSpeedMove")
        string_0x102:; String.insert("SonicSpeedEnd")
        string_0x103:; String.insert("SonicSpeedBeginAir")
        string_0x104:; String.insert("SonicSpeedMoveAir")
        string_0x105:; String.insert("SonicSpeedEndAir")

        action_string_table:
        dw Action.COMMON.string_jab3
        dw 0
        dw 0
        dw 0
        dw 0
        dw string_0xE1
        dw string_0xE2
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw string_0xEC
        dw 0
        dw 0
        dw 0
        dw 0
        dw string_0xF1
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
        dw string_0xFD
        dw string_0xFE
        dw string_0xFF
        dw string_0x100
        dw string_0x101
        dw string_0x102
        dw string_0x103
        dw string_0x104
        dw string_0x105
    }

    // Set Remix 1P ending music
    Character.table_patch_start(remix_1p_end_bgm, Character.id.MSSONIC, 0x2)
    dh {MIDI.id.EVERYTHING}
    OS.patch_end()
}
