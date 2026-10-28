// AMewtwo.asm

// This file contains file inclusions, action edits, and assembly for Armored Mewtwo.

scope AMewtwo {
    // Modify Action Parameters             // Action                   // Animation                // Moveset Data             // Flags
    Character.edit_action_parameters(AMTWO,  Action.DeadU,               File.MTWO_TUMBLE,           -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ScreenKO,            File.MTWO_TUMBLE,           -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.Entry,               File.MTWO_IDLE,             -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  0x006,                      File.MTWO_IDLE,             -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.Revive1,             File.MTWO_DOWN_BNCE_D,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.Revive2,             File.MTWO_DOWN_STND_D,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ReviveWait,          File.MTWO_IDLE,             -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.Idle,                File.MTWO_IDLE,             -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.Walk1,               File.MTWO_WALK_1,           -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.Walk2,               File.MTWO_WALK_2,           -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.Walk3,               File.MTWO_WALK_3,           -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  0x00E,                      File.MTWO_WALK_END,         -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.Dash,                File.MTWO_DASH,             -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.Run,                 File.MTWO_RUN,              Mewtwo.RUN_LOOP,            0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.RunBrake,            File.MTWO_RUN_BRAKE,        -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.Turn,                File.MTWO_TURN,             -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.TurnRun,             File.MTWO_TURN_RUN,         Mewtwo.RUN_TURN,            0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.JumpSquat,           File.MTWO_LANDING,          -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ShieldJumpSquat,     File.MTWO_LANDING,          -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.JumpF,               File.MTWO_JUMP_F,           Mewtwo.JUMP_1,              0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.JumpB,               File.MTWO_JUMP_B,           Mewtwo.JUMP_1,              0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.JumpAerialF,         File.MTWO_JUMP_AERIAL_F,    Mewtwo.JUMP_2,              0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.JumpAerialB,         File.MTWO_JUMP_AERIAL_B,    Mewtwo.JUMP_2,              0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.Fall,                File.MTWO_FALL,             -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.FallAerial,          File.MTWO_FALL_AERIAL,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.Crouch,              File.MTWO_CROUCH_BEGIN,     -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.CrouchIdle,          File.MTWO_CROUCH_IDLE,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.CrouchEnd,           File.MTWO_CROUCH_END,       -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.LandingLight,        File.MTWO_LANDING,          -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.LandingHeavy,        File.MTWO_LANDING,          -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.Pass,                File.MTWO_PLAT_DROP,        -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ShieldDrop,          File.MTWO_PLAT_DROP,        -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.Teeter,              File.MTWO_TEETER,           0x80000000,                 0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.TeeterStart,         File.MTWO_TEETER_START,     0x80000000,                 0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DamageHigh1,         File.MTWO_DMG_HIGH_1,       -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DamageHigh2,         File.MTWO_DMG_HIGH_2,       -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DamageHigh3,         File.MTWO_DMG_HIGH_3,       -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DamageMid1,          File.MTWO_DMG_MID_1,        -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DamageMid2,          File.MTWO_DMG_MID_2,        -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DamageMid3,          File.MTWO_DMG_MID_3,        -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DamageLow1,          File.MTWO_DMG_LOW_1,        -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DamageLow2,          File.MTWO_DMG_LOW_2,        -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DamageLow3,          File.MTWO_DMG_LOW_3,        -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DamageAir1,          File.MTWO_DMG_AIR_1,        -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DamageAir2,          File.MTWO_DMG_AIR_2,        -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DamageAir3,          File.MTWO_DMG_AIR_3,        -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DamageElec1,         File.MTWO_DMG_ELEC,         -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DamageElec2,         File.MTWO_DMG_ELEC,         -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DamageFlyHigh,       File.MTWO_DMG_FLY_HIGH,     -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DamageFlyMid,        File.MTWO_DMG_FLY_MID,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DamageFlyLow,        File.MTWO_DMG_FLY_LOW,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DamageFlyTop,        File.MTWO_DMG_FLY_TOP,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DamageFlyRoll,       File.MTWO_DMG_FLY_ROLL,     -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.WallBounce,          File.MTWO_TUMBLE,           -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.Tumble,              File.MTWO_TUMBLE,           -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.FallSpecial,         File.MTWO_FALL_SPECIAL,     -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.LandingSpecial,      File.MTWO_LANDING,          -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.Tornado,             File.MTWO_TUMBLE,           -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.EnterPipe,           File.MTWO_ENTER_PIPE,       -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ExitPipe,            File.MTWO_EXIT_PIPE,        -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ExitPipeWalk,        File.MTWO_EXIT_PIPE_WALK,   -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.CeilingBonk,         File.MTWO_CEILING_BONK,     -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DownBounceD,         File.MTWO_DOWN_BNCE_D,      Mewtwo.DOWN_BOUNCE,         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DownBounceU,         File.MTWO_DOWN_BNCE_U,      Mewtwo.DOWN_BOUNCE,         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DownStandD,          File.MTWO_DOWN_STND_D,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DownStandU,          File.MTWO_DOWN_STND_U,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.TechF,               File.MTWO_TECH_F,           Mewtwo.TECH_ROLL,           0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.TechB,               File.MTWO_TECH_B,           Mewtwo.TECH_ROLL,           0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.DownForwardD,        File.MTWO_DOWN_FWRD_D,      -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.DownForwardU,        File.MTWO_DOWN_FWRD_U,      -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.DownBackD,           File.MTWO_DOWN_BACK_D,      -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.DownBackU,           File.MTWO_DOWN_BACK_U,      -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.DownAttackD,         File.MTWO_DOWN_ATTK_D,      Mewtwo.DOWN_ATTACK_D,       0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DownAttackU,         File.MTWO_DOWN_ATTK_U,      Mewtwo.DOWN_ATTACK_U,       0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.Tech,                File.MTWO_TECH,             Mewtwo.TECH,                0x00000000)
    Character.edit_action_parameters(AMTWO,  0x053,                      File.MTWO_UNKNOWN_053,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.CliffCatch,          File.MTWO_CLF_CATCH,        Mewtwo.EDGE_GRAB,           0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.CliffWait,           File.MTWO_CLF_WAIT,         Mewtwo.EDGE_WAIT,           0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.CliffQuick,          File.MTWO_CLF_QUICK,        -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.CliffClimbQuick1,    File.MTWO_CLF_CLM_Q_1,      -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.CliffClimbQuick2,    File.MTWO_CLF_CLM_Q_2,      -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.CliffSlow,           File.MTWO_CLF_SLOW,         -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.CliffClimbSlow1,     File.MTWO_CLF_CLM_S_1,      -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.CliffClimbSlow2,     File.MTWO_CLF_CLM_S_2,      -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.CliffAttackQuick1,   File.MTWO_CLF_ATK_Q_1,      -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.CliffAttackQuick2,   File.MTWO_CLF_ATK_Q_2,      Mewtwo.EDGE_ATTACK_QUICK_2, 0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.CliffAttackSlow1,    File.MTWO_CLF_ATK_S_1,      -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.CliffAttackSlow2,    File.MTWO_CLF_ATK_S_2,      Mewtwo.EDGE_ATTACK_SLOW_2,  0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.CliffEscapeQuick1,   File.MTWO_CLF_ESC_Q_1,      -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.CliffEscapeQuick2,   File.MTWO_CLF_ESC_Q_2,      -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.CliffEscapeSlow1,    File.MTWO_CLF_ESC_S_1,      -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.CliffEscapeSlow2,    File.MTWO_CLF_ESC_S_2,      -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.LightItemPickup,     File.MTWO_L_ITM_PICKUP,     -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.HeavyItemPickup,     File.MTWO_H_ITM_PICKUP,     -1,                         0x10000000)
    Character.edit_action_parameters(AMTWO,  Action.ItemDrop,            File.MTWO_ITM_DROP,         -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ItemThrowDash,       File.MTWO_ITM_THROW_DASH,   -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.ItemThrowF,          File.MTWO_ITM_THROW_F,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ItemThrowB,          File.MTWO_ITM_THROW_F,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ItemThrowU,          File.MTWO_ITM_THROW_U,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ItemThrowD,          File.MTWO_ITM_THROW_D,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ItemThrowSmashF,     File.MTWO_ITM_THROW_F,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ItemThrowSmashB,     File.MTWO_ITM_THROW_F,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ItemThrowSmashU,     File.MTWO_ITM_THROW_U,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ItemThrowSmashD,     File.MTWO_ITM_THROW_D,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ItemThrowAirF,       File.MTWO_ITM_THROW_AIR_F,  -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ItemThrowAirB,       File.MTWO_ITM_THROW_AIR_F,  -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ItemThrowAirU,       File.MTWO_ITM_THROW_AIR_U,  -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ItemThrowAirD,       File.MTWO_ITM_THROW_AIR_D,  -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ItemThrowAirSmashF,  File.MTWO_ITM_THROW_AIR_F,  -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ItemThrowAirSmashB,  File.MTWO_ITM_THROW_AIR_F,  -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ItemThrowAirSmashU,  File.MTWO_ITM_THROW_AIR_U,  -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ItemThrowAirSmashD,  File.MTWO_ITM_THROW_AIR_D,  -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.HeavyItemThrowF,     File.MTWO_HEAVY_ITM_THROW,  -1,                         0x10000000)
    Character.edit_action_parameters(AMTWO,  Action.HeavyItemThrowB,     File.MTWO_HEAVY_ITM_THROW,  -1,                         0x10000000)
    Character.edit_action_parameters(AMTWO,  Action.HeavyItemThrowSmashF,File.MTWO_HEAVY_ITM_THROW,  -1,                         0x10000000)
    Character.edit_action_parameters(AMTWO,  Action.HeavyItemThrowSmashB,File.MTWO_HEAVY_ITM_THROW,  -1,                         0x10000000)
    Character.edit_action_parameters(AMTWO,  Action.BeamSwordNeutral,    File.MTWO_ITM_NEUTRAL,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.BeamSwordTilt,       File.MTWO_ITM_TILT,         -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.BeamSwordSmash,      File.MTWO_ITM_SMASH,        -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.BeamSwordDash,       File.MTWO_ITM_DASH,         -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.BatNeutral,          File.MTWO_ITM_NEUTRAL,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.BatTilt,             File.MTWO_ITM_TILT,         -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.BatSmash,            File.MTWO_ITM_SMASH,        -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.BatDash,             File.MTWO_ITM_DASH,         -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.FanNeutral,          File.MTWO_ITM_NEUTRAL,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.FanTilt,             File.MTWO_ITM_TILT,         -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.FanSmash,            File.MTWO_ITM_SMASH,        -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.FanDash,             File.MTWO_ITM_DASH,         -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.StarRodNeutral,      File.MTWO_ITM_NEUTRAL,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.StarRodTilt,         File.MTWO_ITM_TILT,         -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.StarRodSmash,        File.MTWO_ITM_SMASH,        -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.StarRodDash,         File.MTWO_ITM_DASH,         -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.RayGunShoot,         File.MTWO_ITM_SHOOT,        Mewtwo.ITEM_SHOOT,          0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.RayGunShootAir,      File.MTWO_ITM_SHOOT_AIR,    Mewtwo.ITEM_SHOOT,          0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.FireFlowerShoot,     File.MTWO_ITM_SHOOT,        Mewtwo.ITEM_SHOOT,          0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.FireFlowerShootAir,  File.MTWO_ITM_SHOOT_AIR,    Mewtwo.ITEM_SHOOT,          0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.HammerIdle,          File.MTWO_HAMMER_IDLE,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.HammerWalk,          File.MTWO_HAMMER_MOVE,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.HammerTurn,          File.MTWO_HAMMER_MOVE,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.HammerJumpSquat,     File.MTWO_HAMMER_MOVE,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.HammerAir,           File.MTWO_HAMMER_MOVE,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.HammerLanding,       File.MTWO_HAMMER_MOVE,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ShieldOn,            File.MTWO_SHIELD_ON,        -1,                         0xA0000000)
    Character.edit_action_parameters(AMTWO,  Action.ShieldOff,           File.MTWO_SHIELD_OFF,       -1,                         0xA0000000)
    Character.edit_action_parameters(AMTWO,  Action.RollF,               File.MTWO_ROLL_F,           -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.RollB,               File.MTWO_ROLL_B,           -1,                         0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.ShieldBreak,         File.MTWO_DMG_FLY_TOP,      Mewtwo.SHIELD_BREAK,               0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ShieldBreakFall,     File.MTWO_TUMBLE,           Mewtwo.SPARKLE,                    0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.StunLandD,           File.MTWO_DOWN_BNCE_D,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.StunLandU,           File.MTWO_DOWN_BNCE_U,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.StunStartD,          File.MTWO_DOWN_STND_D,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.StunStartU,          File.MTWO_DOWN_STND_U,      -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.Stun,                File.MTWO_STUN,             Mewtwo.STUN,                       0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.Sleep,               File.MTWO_STUN,             Mewtwo.ASLEEP,                     0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.Grab,                File.MTWO_CATCH,            Mewtwo.GRAB,                       0x10000000)
    Character.edit_action_parameters(AMTWO,  Action.GrabPull,            File.MTWO_CATCH_PULL,       Mewtwo.GRAB_PULL,                  0x10000000)
    Character.edit_action_parameters(AMTWO,  Action.ThrowF,              File.MTWO_THROW_F,          Mewtwo.FTHROW,                     0x10000000)
    Character.edit_action_parameters(AMTWO,  Action.ThrowB,              File.MTWO_THROW_B,          Mewtwo.BTHROW,                     0x10000000)
    Character.edit_action_parameters(AMTWO,  Action.CapturePulled,       File.MTWO_CAPTURE_PULLED,   -1,                         0x80000000)
    Character.edit_action_parameters(AMTWO,  Action.InhalePulled,        File.MTWO_TUMBLE,           -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.InhaleSpat,          File.MTWO_TUMBLE,           -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.InhaleCopied,        File.MTWO_TUMBLE,           -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.EggLayPulled,        File.MTWO_CAPTURE_PULLED,   -1,                         0x80000000)
    Character.edit_action_parameters(AMTWO,  Action.EggLay,              File.MTWO_IDLE,             -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.FalconDivePulled,    File.MTWO_DMG_HIGH_3,       -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  0x0B4,                      File.MTWO_TUMBLE,           -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.ThrownDKPulled,      File.MTWO_THROWN_DK_PULLED, -1,                         0x80000000)
    Character.edit_action_parameters(AMTWO,  Action.ThrownMarioBros,     File.MTWO_THROWN_BROS,      -1,                         0x80000000)
    Character.edit_action_parameters(AMTWO,  Action.ThrownDK,            File.MTWO_THROWN_DK,        -1,                         0x80000000)
    Character.edit_action_parameters(AMTWO,  Action.Thrown1,             File.MTWO_THROWN_1,         -1,                         0x80000000)
    Character.edit_action_parameters(AMTWO,  Action.Thrown2,             File.MTWO_THROWN_2,         -1,                         0x80000000)
    Character.edit_action_parameters(AMTWO,  Action.Taunt,               File.MTWO_TAUNT,            Mewtwo.TAUNT,                      0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.Jab1,                File.MTWO_JAB_1,            Mewtwo.JAB_1,                      0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.Jab2,                0,                          0x80000000,                 0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DashAttack,          File.MTWO_DASH_ATTACK,      Mewtwo.DASH_ATTACK,                0x40000000)
    Character.edit_action_parameters(AMTWO,  Action.FTiltHigh,           File.MTWO_FTILT_HIGH,       Mewtwo.FTILT_HI,                   0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.FTilt,               File.MTWO_FTILT,            Mewtwo.FTILT,                      0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.FTiltLow,            File.MTWO_FTILT_LOW,        Mewtwo.FTILT_LO,                   0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.UTilt,               File.MTWO_UTILT,            Mewtwo.UTILT,                      0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DTilt,               File.MTWO_DTILT,            Mewtwo.DTILT,                      0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.FSmashHigh,          File.MTWO_FSMASH_HIGH,      Mewtwo.FSMASH_HI,                  0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.FSmash,              File.MTWO_FSMASH,           Mewtwo.FSMASH,                     0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.FSmashLow,           File.MTWO_FSMASH_LOW,       Mewtwo.FSMASH_LO,                  0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.USmash,              File.MTWO_USMASH,           Mewtwo.USMASH,                     0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.DSmash,              File.MTWO_DSMASH,           Mewtwo.DSMASH,                     0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.AttackAirN,          File.MTWO_ATTACK_AIR_N,     Mewtwo.NAIR,                       0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.AttackAirF,          File.MTWO_ATTACK_AIR_F,     Mewtwo.FAIR,                       0x10000000)
    Character.edit_action_parameters(AMTWO,  Action.AttackAirB,          File.MTWO_ATTACK_AIR_B,     Mewtwo.BAIR,                       0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.AttackAirU,          File.MTWO_ATTACK_AIR_U,     Mewtwo.UAIR,                       0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.AttackAirD,          File.MTWO_ATTACK_AIR_D,     Mewtwo.DAIR,                       0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.LandingAirN,         File.MTWO_LANDING_AIR_N,    Mewtwo.NAIR_LANDING,               0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.LandingAirF,         File.MTWO_LANDING_AIR_F,    Mewtwo.FAIR_LANDING,               0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.LandingAirB,         File.MTWO_LANDING,          -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.LandingAirU,         File.MTWO_LANDING,          -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.LandingAirD,         File.MTWO_LANDING,          -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  Action.LandingAirX,         File.MTWO_LANDING,          -1,                         0x00000000)
    Character.edit_action_parameters(AMTWO,  0xDC,                       File.MTWO_ENTRY_R,          Mewtwo.ENTRY,                      0x40000000)
    Character.edit_action_parameters(AMTWO,  0xDD,                       File.MTWO_ENTRY_L,          Mewtwo.ENTRY,                      0x40000000)
    Character.edit_action_parameters(AMTWO,  0xDE,                       File.MTWO_NSPG_BEGIN,       Mewtwo.NSPG_BEGIN,                 0x10000000)
    Character.edit_action_parameters(AMTWO,  0xDF,                       File.MTWO_NSPG_CHARGE,      Mewtwo.NSPG_CHARGE,                0x10000000)
    Character.edit_action_parameters(AMTWO,  0xE0,                       File.MTWO_NSPG_SHOOT,       Mewtwo.NSPG_SHOOT,                 0x10000000)
    Character.edit_action_parameters(AMTWO,  0xE1,                       File.MTWO_NSPA_BEGIN,       Mewtwo.NSPA_BEGIN,                 0x10000000)
    Character.edit_action_parameters(AMTWO,  0xE2,                       File.MTWO_NSPA_CHARGE,      Mewtwo.NSPA_CHARGE,                0x10000000)
    Character.edit_action_parameters(AMTWO,  0xE4,                       File.MTWO_NSPA_SHOOT,       Mewtwo.NSPA_SHOOT,                 0x10000000)
    Character.edit_action_parameters(AMTWO,  0xE5,                       File.MTWO_DSPG,             Mewtwo.DSP,                        0x10000000)
    Character.edit_action_parameters(AMTWO,  0xE6,                       File.MTWO_DSPA,             Mewtwo.DSP,                        0x10000000)
    Character.edit_action_parameters(AMTWO,  0xE7,                       File.MTWO_JAB_2,            Mewtwo.JAB_LOOP_START,             0x00000000)
    Character.edit_action_parameters(AMTWO,  0xE8,                       File.MTWO_JAB_2_LOOP,       Mewtwo.JAB_LOOP,                   0x00000000)
    Character.edit_action_parameters(AMTWO,  0xE9,                       File.MTWO_JAB_2_END,        0x80000000,                 0x00000000)

    // Modify Actions            // Action          // Staling ID   // Main ASM                     // Interrupt/Other ASM              // Movement/Physics ASM         // Collision ASM
    Character.edit_action(AMTWO, 0xDE,               0x12,             MewtwoNSP.begin_main_,        0x8015D464,                         0x800D8BB4,                     MewtwoNSP.ground_begin_collision_)  //NSP_Ground_Begin
    Character.edit_action(AMTWO, 0xDF,               0x12,             MewtwoNSP.charge_main_,       MewtwoNSP.ground_charge_interrupt_, 0x800D8BB4,                     MewtwoNSP.ground_charge_collision_) //NSP_Ground_Charge
    Character.edit_action(AMTWO, 0xE0,               0x12,             MewtwoNSP.shoot_main_,        0,                                  0x800D8BB4,                     MewtwoNSP.ground_shoot_collision_)  //NSP_Ground_Shoot
    Character.edit_action(AMTWO, 0xE1,               0x12,             MewtwoNSP.begin_main_,        0x8015D464,                         0x800D90E0,                     MewtwoNSP.air_begin_collision_)     //NSP_Air_Begin
    Character.edit_action(AMTWO, 0xE2,               0x12,             MewtwoNSP.charge_main_,       MewtwoNSP.air_charge_interrupt_,    0x800D91EC,                     MewtwoNSP.air_charge_collision_)    //NSP_Air_Charge
    Character.edit_action(AMTWO, 0xE4,               0x12,             MewtwoNSP.shoot_main_,        0,                                  0x800D91EC,                     MewtwoNSP.air_shoot_collision_)     //NSP_Air_Shoot
    Character.edit_action(AMTWO, 0xE5,               0x1E,             0x800D94C4,                   0,                                  0x800D8BB4,                     MewtwoDSP.ground_collision_)        //DSP_Ground
    Character.edit_action(AMTWO, 0xE6,               0x1E,             0x800D94E8,                   0,                                  0x800D91EC,                     MewtwoDSP.air_collision_)           //DSP_Air
    Character.edit_action(AMTWO, 0xE5,               0x1E,             0x800D94C4,                   0,                                  0x800D8BB4,                     MewtwoDSP.ground_collision_)        //DSP_Ground_Begin
    Character.edit_action(AMTWO, 0xE6,               0x1E,             0x800D94E8,                   0,                                  0x800D91EC,                     MewtwoDSP.air_collision_)           //DSP_Air
    Character.edit_action(AMTWO, 0xE7,               0x4,              0x8014F0D0,                   0,                                  0x800D8BB4,                     0x800DDF44)                         //RapidJabStart
    Character.edit_action(AMTWO, 0xE8,               0x4,              0x8014F2A8,                   0x8014F388,                         0x800D8BB4,                     0x800DDF44)                         //RapidJabLoop
    Character.edit_action(AMTWO, 0xE9,               0x4,              0x800D94C4,                   0,                                  0x800D8BB4,                     0x800DDF44)                         //RapidJabEnd

    // Add Action Parameters                // Action Name      // Base Action  // Animation                // Moveset Data             // Flags
    Character.add_new_action_params(AMTWO,   USP_Ground_Begin,   -1,             File.MTWO_USPG_BEGIN,       Mewtwo.USP_BEGIN,                  0)
    Character.add_new_action_params(AMTWO,   USP_Ground_End,     -1,             File.MTWO_USPG_END,         Mewtwo.USP_END,                    0)
    Character.add_new_action_params(AMTWO,   USP_Air_Begin,      -1,             File.MTWO_USPA_BEGIN,       Mewtwo.USP_BEGIN,                  0)
    Character.add_new_action_params(AMTWO,   USP_Air_End,        -1,             File.MTWO_USPA_END,         Mewtwo.USP_END,                    0)

    // Add Actions                   // Action Name     // Base Action  //Parameters                        // Staling ID   // Main ASM                     // Interrupt/Other ASM          // Movement/Physics ASM             // Collision ASM
    Character.add_new_action(AMTWO,   USP_Ground_Begin,  -1,             ActionParams.USP_Ground_Begin,      0x11,           MewtwoUSP.begin_main_,          0,                              0x800D8BB4,                         MewtwoUSP.ground_begin_collision_)
    Character.add_new_action(AMTWO,   USP_Ground_Move,   -1,             -1,                                 0x11,           MewtwoUSP.move_main_,           0,                              MewtwoUSP.move_physics_,            MewtwoUSP.ground_move_collision_)
    Character.add_new_action(AMTWO,   USP_Ground_End,    -1,             ActionParams.USP_Ground_End,        0x11,           MewtwoUSP.ground_end_main_,     0,                              0x800D8BB4,                         MewtwoUSP.end_collision_)
    Character.add_new_action(AMTWO,   USP_Air_Begin,     -1,             ActionParams.USP_Air_Begin,         0x11,           MewtwoUSP.begin_main_,          0,                              0x800D91EC,                         MewtwoUSP.air_begin_collision_)
    Character.add_new_action(AMTWO,   USP_Air_Move,      -1,             -1,                                 0x11,           MewtwoUSP.move_main_,           0,                              MewtwoUSP.move_physics_,            MewtwoUSP.air_move_collision_)
    Character.add_new_action(AMTWO,   USP_Air_End,       -1,             ActionParams.USP_Air_End,           0x11,           MewtwoUSP.air_end_main_,        0,                              0x800D91EC,                         MewtwoUSP.end_collision_)

    // Modify Menu Action Parameters                // Action       // Animation                 // Moveset Data             // Flags
    Character.edit_menu_action_parameters(AMTWO,     0x0,            File.MTWO_IDLE,             -1,                         -1)
    Character.edit_menu_action_parameters(AMTWO,     0x1,            File.MTWO_VICTORY_1,        Mewtwo.VICTORY_1,                  -1)
    Character.edit_menu_action_parameters(AMTWO,     0x2,            File.MTWO_VICTORY_2,        Mewtwo.VICTORY_2,                  -1)
    Character.edit_menu_action_parameters(AMTWO,     0x3,            File.MTWO_VICTORY_3,        Mewtwo.VICTORY_3,                  -1)
    Character.edit_menu_action_parameters(AMTWO,     0x4,            File.MTWO_VICTORY_2,        Mewtwo.VICTORY_2,                  -1)
    Character.edit_menu_action_parameters(AMTWO,     0x5,            File.MTWO_CLAP,             0x80000000,                 -1)
    Character.edit_menu_action_parameters(AMTWO,     0x9,            File.MTWO_CONTINUE_FALL,    0x80000000,                 -1)
    Character.edit_menu_action_parameters(AMTWO,     0xA,            File.MTWO_CONTINUE_UP,      0x80000000,                 -1)
    Character.edit_menu_action_parameters(AMTWO,     0xD,            File.MTWO_POSE_1P,          0x80000000,                 -1)
    Character.edit_menu_action_parameters(AMTWO,     0xE,            File.MTWO_1P_CPU_POSE,      0x80000000,                 -1)

    // Set subroutines for special move initiations.
    Character.table_patch_start(ground_nsp, Character.id.AMTWO, 0x4)
    dw      MewtwoNSP.ground_begin_initial_
    OS.patch_end()
    Character.table_patch_start(air_nsp, Character.id.AMTWO, 0x4)
    dw      MewtwoNSP.air_begin_initial_
    OS.patch_end()
    Character.table_patch_start(ground_usp, Character.id.AMTWO, 0x4)
    dw      MewtwoUSP.ground_begin_initial_
    OS.patch_end()
    Character.table_patch_start(air_usp, Character.id.AMTWO, 0x4)
    dw      MewtwoUSP.air_begin_initial_
    OS.patch_end()
    Character.table_patch_start(ground_dsp, Character.id.AMTWO, 0x4)
    dw      MewtwoDSP.ground_initial_
    OS.patch_end()
    Character.table_patch_start(air_dsp, Character.id.AMTWO, 0x4)
    dw      MewtwoDSP.air_initial_
    OS.patch_end()

    // Set subroutines for rapid jab actions.
    Character.table_patch_start(rapid_jab_begin_action, Character.id.AMTWO, 0x4)
    dw      Mewtwo.set_rapid_jab_begin_action_
    OS.patch_end()
    Character.table_patch_start(rapid_jab_loop_action, Character.id.AMTWO, 0x4)
    dw      Mewtwo.set_rapid_jab_loop_action_
    OS.patch_end()
    Character.table_patch_start(rapid_jab_ending_action, Character.id.AMTWO, 0x4)
    dw      Mewtwo.set_rapid_jab_ending_action_
    OS.patch_end()

    Character.table_patch_start(variant_original, Character.id.AMTWO, 0x4)
    dw      Character.id.MTWO
    OS.patch_end()

    // Set menu zoom size.
    Character.table_patch_start(menu_zoom, Character.id.AMTWO, 0x4)
    float32 0.9
    OS.patch_end()

    // Set default costumes
    Character.set_default_costumes(Character.id.AMTWO, 0, 2, 3, 1, 2, 3, 1)
    Teams.add_team_costume(YELLOW, AMTWO, 0x4)

    // Shield colors for costume matching
    Character.set_costume_shield_colors(AMTWO, PURPLE, GREEN, RED, BLUE, YELLOW, CYAN, PINK, NA)

    // Remove entry script.
    Character.table_patch_start(entry_script, Character.id.AMTWO, 0x4)
    dw 0x8013DD68                           // skips entry script
    OS.patch_end()

    // Remove grounded script.
    Character.table_patch_start(grounded_script, Character.id.AMTWO, 0x4)
    dw Character.grounded_script.DISABLED   // skips grounded script
    OS.patch_end()

    // Set crowd chant FGM.
    Character.table_patch_start(crowd_chant_fgm, Character.id.AMTWO, 0x2)
    dh 0x3B1
    OS.patch_end()

    // Set Kirby hat_id
    Character.table_patch_start(kirby_inhale_struct, 0x2, Character.id.AMTWO, 0xC)
    dh 0x1B
    OS.patch_end()

    // Patches for full charge Neutral B effect.
    Character.table_patch_start(gfx_routine_end, Character.id.AMTWO, 0x4)
    dw      Mewtwo.charge_gfx_routine_
    OS.patch_end()
    Character.table_patch_start(initial_script, Character.id.AMTWO, 0x4)
    dw      0x800D7DEC                      // use samus jump
    OS.patch_end()

    // Set Remix 1P ending music
    Character.table_patch_start(remix_1p_end_bgm, Character.id.AMTWO, 0x2)
    dh {MIDI.id.KANTO_WILD_BATTLE}
    OS.patch_end()

    // @ Description
    // Bowser's extra actions
    scope Action {
        constant Appear1(0x0DC)
        constant Appear2(0x0DD)
        constant ShadowBallStart(0x0DE)
        constant ShadowBallCharge(0x0DF)
        constant ShadowBallShoot(0x0E0)
        constant ShadowBallStartAir(0x0E1)
        constant ShadowBallChargeAir(0x0E2)
        //constant x(0x0E3)
        constant ShadowBallShootAir(0x0E4)
        constant Disable(0x0E5)
        constant DisableAir(0x0E6)
        constant JabLoopStart(0x0E7)
        constant JabLoop(0x0E8)
        constant JabLoopEnd(0x0E9)
        constant TeleportStart(0x0EA)
        constant Teleport(0x0EB)
        constant TeleportEnd(0x0EC)
        constant TeleportStartAir(0x0ED)
        constant TeleportAir(0x0EE)
        constant TeleportEndAir(0x0EF)

        // strings!
        string_0x0DE:; String.insert("ShadowBallStart")
        string_0x0DF:; String.insert("ShadowBallCharge")
        string_0x0E0:; String.insert("ShadowBallShoot")
        string_0x0E1:; String.insert("ShadowBallStartAir")
        string_0x0E2:; String.insert("ShadowBallChargeAir")
        //string_0x0E3:; String.insert("x")
        string_0x0E4:; String.insert("ShadowBallShootAir")
        string_0x0E5:; String.insert("Disable")
        string_0x0E6:; String.insert("DisableAir")
        //string_0x0E7:; String.insert("JabLoopStart")
        //string_0x0E8:; String.insert("JabLoop")
        //string_0x0E9:; String.insert("JabLoopEnd")
        string_0x0EA:; String.insert("TeleportStart")
        string_0x0EB:; String.insert("Teleport")
        string_0x0EC:; String.insert("TeleportEnd")
        string_0x0ED:; String.insert("TeleportStartAir")
        string_0x0EE:; String.insert("TeleportAir")
        string_0x0EF:; String.insert("TeleportEndAir")

        action_string_table:
        dw Action.COMMON.string_appear1
        dw Action.COMMON.string_appear2
        dw string_0x0DE
        dw string_0x0DF
        dw string_0x0E0
        dw string_0x0E1
        dw string_0x0E2
        dw 0 //dw string_0x0E3
        dw string_0x0E4
        dw string_0x0E5
        dw string_0x0E6
        dw Action.COMMON.string_jabloopstart
        dw Action.COMMON.string_jabloop
        dw Action.COMMON.string_jabloopend
        dw string_0x0EA
        dw string_0x0EB
        dw string_0x0EC
        dw string_0x0ED
        dw string_0x0EE
        dw string_0x0EF
    }

    // Set action strings
    Character.table_patch_start(action_string, Character.id.AMTWO, 0x4)
    dw  Action.action_string_table
    OS.patch_end()

    // Set Magnifying Glass Scale Override
    Character.table_patch_start(magnifying_glass_zoom, Character.id.AMTWO, 0x2)
    dh  0x006B
    OS.patch_end()

    // Set special Jump2 physics
    Character.table_patch_start(ness_jump, Character.id.AMTWO, 0x1)
    db      OS.TRUE;     OS.patch_end();
    
   }
