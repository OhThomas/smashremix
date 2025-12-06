// Isaac.asm

// This file contains file inclusions, action edits, and assembly for Isaac.

scope Isaac {
    // @ Description
    // Isaac's extra actions
    scope Action {
        constant Entry_R(0xDC)
        constant Entry_L(0xDD)
        constant USPG(0xDE)
        constant USPA(0xDF)
        constant NSPG_1(0xE0)
        constant NSPG_2_High(0xE1)
        constant NSPG_2_Mid(0xE2)
        constant NSPG_2_Low(0xE3)
        constant NSPG_3_High(0xE4)
        constant NSPG_3_Mid(0xE5)
        constant NSPG_3_Low(0xE6)
        constant NSPA_1(0xE7)
        constant NSPA_2_High(0xE8)
        constant NSPA_2_Mid(0xE9)
        constant NSPA_2_Low(0xEA)
        constant NSPA_3_High(0xEB)
        constant NSPA_3_Mid(0xEC)
        constant NSPA_3_Low(0xED)
        //constant ?(0xEE)
        constant DSPG(0xEF)
        constant DSPG_Attack(0xF0)
        constant DSPGA(0xF1)
        constant DSPGA_Attack(0xF2)


        // strings!
        string_0x0DE:; String.insert("DolphinSlash")
        string_0x0DF:; String.insert("DolphinSlashAir")
        string_0x0E0:; String.insert("DancingBlade1")
        string_0x0E1:; String.insert("DancingBlade2High")
        string_0x0E2:; String.insert("DancingBlade2Mid")
        string_0x0E3:; String.insert("DancingBlade2Low")
        string_0x0E4:; String.insert("DancingBlade3High")
        string_0x0E5:; String.insert("DancingBlade3Mid")
        string_0x0E6:; String.insert("DancingBlade3Low")
        string_0x0E7:; String.insert("DancingBlade1Air")
        string_0x0E8:; String.insert("DancingBlade2HighAir")
        string_0x0E9:; String.insert("DancingBlade2MidAir")
        string_0x0EA:; String.insert("DancingBlade2LowAir")
        string_0x0EB:; String.insert("DancingBlade3HighAir")
        string_0x0EC:; String.insert("DancingBlade3MidAir")
        string_0x0ED:; String.insert("DancingBlade3LowAir")
        // string_0x0EE;: String.insert("?")
        string_0x0EF:; String.insert("Counter")
        string_0x0F0:; String.insert("CounterAttack")
        string_0x0F1:; String.insert("CounterAir")
        string_0x0F2:; String.insert("CounterAttackAir")

        action_string_table:
        dw Action.COMMON.string_appear1
        dw Action.COMMON.string_appear2
        dw string_0x0DE
        dw string_0x0DF
        dw string_0x0E0
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
        dw 0 //dw string_0x0EE
        dw string_0x0EF
        dw string_0x0F0
        dw string_0x0F1
        dw string_0x0F2
    }

    // Modify Action Parameters             // Action                       // Animation                        // Moveset Data             // Flags
    Character.edit_action_parameters(ISAAC, Action.DeadU,                   File.MARTH_TUMBLE,                  Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.ScreenKO,                File.MARTH_TUMBLE,                  Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.Entry,                   File.MARTH_IDLE,                    -1,                         -1)
    Character.edit_action_parameters(ISAAC, 0x006,                          File.MARTH_IDLE,                    -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.Revive1,                 File.MARTH_DOWN_BOUNCE_D,           -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.Revive2,                 File.MARTH_DOWN_STAND_D,            -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ReviveWait,              File.MARTH_IDLE,                    Marth.IDLE,                       -1)
    Character.edit_action_parameters(ISAAC, Action.Idle,                    File.MARTH_IDLE,                    Marth.IDLE,                       -1)
    Character.edit_action_parameters(ISAAC, Action.Walk1,                   File.MARTH_WALK_1,                  -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.Walk2,                   File.MARTH_WALK_2,                  -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.Walk3,                   File.MARTH_WALK_3,                  -1,                         -1)
    Character.edit_action_parameters(ISAAC, 0x00E,                          File.MARTH_WALK_END,                -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.Dash,                    File.MARTH_DASH,                    -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.Run,                     File.MARTH_RUN,                     -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.RunBrake,                File.MARTH_RUN_BRAKE,               -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.Turn,                    File.MARTH_TURN,                    -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.TurnRun,                 File.MARTH_TURN_RUN,                -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.JumpSquat,               File.MARTH_LANDING,                 -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ShieldJumpSquat,         File.MARTH_LANDING,                 -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.JumpF,                   File.MARTH_JUMP_F,                  Marth.JUMP,                       -1)
    Character.edit_action_parameters(ISAAC, Action.JumpB,                   File.MARTH_JUMP_B,                  Marth.JUMP,                       -1)
    Character.edit_action_parameters(ISAAC, Action.JumpAerialF,             File.MARTH_JUMP_AERIAL_F,           Marth.JUMP_AERIAL,                -1)
    Character.edit_action_parameters(ISAAC, Action.JumpAerialB,             File.MARTH_JUMP_AERIAL_B,           Marth.JUMP_AERIAL,                -1)
    Character.edit_action_parameters(ISAAC, Action.Fall,                    File.MARTH_FALL,                    -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.FallAerial,              File.MARTH_FALL_AERIAL,             -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.Crouch,                  File.MARTH_CROUCH,                  -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.CrouchIdle,              File.MARTH_CROUCH_IDLE,             -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.CrouchEnd,               File.MARTH_CROUCH_END,              -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.LandingLight,            File.MARTH_LANDING,                 -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.LandingHeavy,            File.MARTH_LANDING,                 -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.Pass,                    File.MARTH_PASS,                    -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ShieldDrop,              File.MARTH_PASS,                    -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.Teeter,                  File.MARTH_TEETER,                  Marth.TEETER,                     -1)
    Character.edit_action_parameters(ISAAC, Action.TeeterStart,             File.MARTH_TEETER_START,            Marth.TEETER_START,               -1)
    Character.edit_action_parameters(ISAAC, Action.DamageHigh1,             File.MARTH_DAMAGE_HIGH_1,           Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.DamageHigh2,             File.MARTH_DAMAGE_HIGH_2,           Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.DamageHigh3,             File.MARTH_DAMAGE_HIGH_3,           Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.DamageMid1,              File.MARTH_DAMAGE_MID_1,            Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.DamageMid2,              File.MARTH_DAMAGE_MID_2,            Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.DamageMid3,              File.MARTH_DAMAGE_MID_3,            Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.DamageLow1,              File.MARTH_DAMAGE_LOW_1,            Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.DamageLow2,              File.MARTH_DAMAGE_LOW_2,            Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.DamageLow3,              File.MARTH_DAMAGE_LOW_3,            Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.DamageAir1,              File.MARTH_DAMAGE_AIR_1,            Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.DamageAir2,              File.MARTH_DAMAGE_AIR_2,            Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.DamageAir3,              File.MARTH_DAMAGE_AIR_3,            Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.DamageElec1,             File.MARTH_DAMAGE_ELEC,             Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.DamageElec2,             File.MARTH_DAMAGE_ELEC,             Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.DamageFlyHigh,           File.MARTH_DAMAGE_FLY_HIGH,         Marth.DMG_2,                      -1)
    Character.edit_action_parameters(ISAAC, Action.DamageFlyMid,            File.MARTH_DAMAGE_FLY_MID,          Marth.DMG_2,                      -1)
    Character.edit_action_parameters(ISAAC, Action.DamageFlyLow,            File.MARTH_DAMAGE_FLY_LOW,          Marth.DMG_2,                      -1)
    Character.edit_action_parameters(ISAAC, Action.DamageFlyTop,            File.MARTH_DAMAGE_FLY_TOP,          Marth.DMG_2,                      -1)
    Character.edit_action_parameters(ISAAC, Action.DamageFlyRoll,           File.MARTH_DAMAGE_FLY_ROLL,         Marth.DMG_2,                      -1)
    Character.edit_action_parameters(ISAAC, Action.WallBounce,              File.MARTH_TUMBLE,                  Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.Tumble,                  File.MARTH_TUMBLE,                  Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.FallSpecial,             File.MARTH_FALL_SPECIAL,            -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.LandingSpecial,          File.MARTH_LANDING,                 -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.Tornado,                 File.MARTH_TUMBLE,                  -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.EnterPipe,               File.MARTH_ENTER_PIPE,              -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ExitPipe,                File.MARTH_EXIT_PIPE,               -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ExitPipeWalk,            File.MARTH_EXIT_PIPE_WALK,          -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.CeilingBonk,             File.MARTH_CEILING_BONK,            -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.DownBounceD,             File.MARTH_DOWN_BOUNCE_D,           Marth.DOWN_BOUNCE,                -1)
    Character.edit_action_parameters(ISAAC, Action.DownBounceU,             File.MARTH_DOWN_BOUNCE_U,           Marth.DOWN_BOUNCE,                -1)
    Character.edit_action_parameters(ISAAC, Action.DownStandD,              File.MARTH_DOWN_STAND_D,            Marth.DOWN_STAND,                 -1)
    Character.edit_action_parameters(ISAAC, Action.DownStandU,              File.MARTH_DOWN_STAND_U,            Marth.DOWN_STAND,                 -1)
    Character.edit_action_parameters(ISAAC, Action.TechF,                   File.MARTH_TECH_F,                  Marth.TECH_ROLL,                  -1)
    Character.edit_action_parameters(ISAAC, Action.TechB,                   File.MARTH_TECH_B,                  Marth.TECH_ROLL,                  -1)
    Character.edit_action_parameters(ISAAC, Action.DownForwardD,            File.MARTH_DOWN_FORWARD_D,          -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.DownForwardU,            File.MARTH_DOWN_FORWARD_U,          -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.DownBackD,               File.MARTH_DOWN_BACK_D,             -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.DownBackU,               File.MARTH_DOWN_BACK_U,             -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.DownAttackD,             File.MARTH_DOWN_ATTACK_D,           Marth.DOWN_ATTACK_D,              -1)
    Character.edit_action_parameters(ISAAC, Action.DownAttackU,             File.MARTH_DOWN_ATTACK_U,           Marth.DOWN_ATTACK_U,              -1)
    Character.edit_action_parameters(ISAAC, Action.Tech,                    File.MARTH_TECH,                    Marth.TECH,                       -1)
    Character.edit_action_parameters(ISAAC, 0x053,                          File.MARTH_UNKNOWN_053,             -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.CliffCatch,              File.MARTH_CLIFF_CATCH,             Marth.EDGE_GRAB,                  -1)
    Character.edit_action_parameters(ISAAC, Action.CliffWait,               File.MARTH_CLIFF_WAIT,              Marth.EDGE_IDLE,                  -1)
    Character.edit_action_parameters(ISAAC, Action.CliffQuick,              File.MARTH_CLIFF_QUICK,             -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.CliffClimbQuick1,        File.MARTH_CLIFF_CLIMB_QUICK_1,     -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.CliffClimbQuick2,        File.MARTH_CLIFF_CLIMB_QUICK_2,     -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.CliffSlow,               File.MARTH_CLIFF_SLOW,              -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.CliffClimbSlow1,         File.MARTH_CLIFF_CLIMB_SLOW_1,      -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.CliffClimbSlow2,         File.MARTH_CLIFF_CLIMB_SLOW_2,      -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.CliffAttackQuick1,       File.MARTH_CLIFF_ATTACK_QUICK_1,    -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.CliffAttackQuick2,       File.MARTH_CLIFF_ATTACK_QUICK_2,    Marth.EDGE_ATTACK_QUICK_2,        -1)
    Character.edit_action_parameters(ISAAC, Action.CliffAttackSlow1,        File.MARTH_CLIFF_ATTACK_SLOW_1,     -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.CliffAttackSlow2,        File.MARTH_CLIFF_ATTACK_SLOW_2,     Marth.EDGE_ATTACK_SLOW_2,         -1)
    Character.edit_action_parameters(ISAAC, Action.CliffEscapeQuick1,       File.MARTH_CLIFF_ESCAPE_QUICK_1,    -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.CliffEscapeQuick2,       File.MARTH_CLIFF_ESCAPE_QUICK_2,    -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.CliffEscapeSlow1,        File.MARTH_CLIFF_ESCAPE_SLOW_1,     -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.CliffEscapeSlow2,        File.MARTH_CLIFF_ESCAPE_SLOW_2,     -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.LightItemPickup,         File.MARTH_LIGHT_ITEM_PICKUP,       -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.HeavyItemPickup,         File.MARTH_HEAVY_ITEM_PICKUP,       -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ItemDrop,                File.MARTH_ITEM_DROP,               -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ItemThrowDash,           File.MARTH_ITEM_THROW_DASH,         -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ItemThrowF,              File.MARTH_ITEM_THROW,              -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ItemThrowB,              File.MARTH_ITEM_THROW,              -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ItemThrowU,              File.MARTH_ITEM_THROW_U,            -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ItemThrowD,              File.MARTH_ITEM_THROW_D,            -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ItemThrowSmashF,         File.MARTH_ITEM_THROW,              -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ItemThrowSmashB,         File.MARTH_ITEM_THROW,              -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ItemThrowSmashU,         File.MARTH_ITEM_THROW_U,            -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ItemThrowSmashD,         File.MARTH_ITEM_THROW_D,            -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ItemThrowAirF,           File.MARTH_ITEM_THROW_AIR,          -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ItemThrowAirB,           File.MARTH_ITEM_THROW_AIR,          -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ItemThrowAirU,           File.MARTH_ITEM_THROW_AIR_U,        -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ItemThrowAirD,           File.MARTH_ITEM_THROW_AIR_D,        -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ItemThrowAirSmashF,      File.MARTH_ITEM_THROW_AIR,          -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ItemThrowAirSmashB,      File.MARTH_ITEM_THROW_AIR,          -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ItemThrowAirSmashU,      File.MARTH_ITEM_THROW_AIR_U,        -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ItemThrowAirSmashD,      File.MARTH_ITEM_THROW_AIR_D,        -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.HeavyItemThrowF,         File.MARTH_HEAVY_ITEM_THROW,        -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.HeavyItemThrowB,         File.MARTH_HEAVY_ITEM_THROW,        -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.HeavyItemThrowSmashF,    File.MARTH_HEAVY_ITEM_THROW,        -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.HeavyItemThrowSmashB,    File.MARTH_HEAVY_ITEM_THROW,        -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.BeamSwordNeutral,        File.MARTH_ITEM_NEUTRAL,            Marth.BEAMSWORD_JAB,              -1)
    Character.edit_action_parameters(ISAAC, Action.BeamSwordTilt,           File.MARTH_ITEM_TILT,               Marth.BEAMSWORD_TILT,             -1)
    Character.edit_action_parameters(ISAAC, Action.BeamSwordSmash,          File.MARTH_ITEM_SMASH,              Marth.BEAMSWORD_SMASH,            -1)
    Character.edit_action_parameters(ISAAC, Action.BeamSwordDash,           File.MARTH_ITEM_DASH_ATTACK,        Marth.BEAMSWORD_DASH,             -1)
    Character.edit_action_parameters(ISAAC, Action.BatNeutral,              File.MARTH_ITEM_NEUTRAL,            Marth.BAT_JAB,                    -1)
    Character.edit_action_parameters(ISAAC, Action.BatTilt,                 File.MARTH_ITEM_TILT,               Marth.BAT_TILT,                   -1)
    Character.edit_action_parameters(ISAAC, Action.BatSmash,                File.MARTH_ITEM_SMASH,              Marth.BAT_SMASH,                  -1)
    Character.edit_action_parameters(ISAAC, Action.BatDash,                 File.MARTH_ITEM_DASH_ATTACK,        Marth.BAT_DASH,                   -1)
    Character.edit_action_parameters(ISAAC, Action.FanNeutral,              File.MARTH_ITEM_NEUTRAL,            Marth.FAN_JAB,                    -1)
    Character.edit_action_parameters(ISAAC, Action.FanTilt,                 File.MARTH_ITEM_TILT,               Marth.FAN_TILT,                   -1)
    Character.edit_action_parameters(ISAAC, Action.FanSmash,                File.MARTH_ITEM_SMASH,              Marth.FAN_SMASH,                  -1)
    Character.edit_action_parameters(ISAAC, Action.FanDash,                 File.MARTH_ITEM_DASH_ATTACK,        Marth.FAN_DASH,                   -1)
    Character.edit_action_parameters(ISAAC, Action.StarRodNeutral,          File.MARTH_ITEM_NEUTRAL,            Marth.STARROD_JAB,                -1)
    Character.edit_action_parameters(ISAAC, Action.StarRodTilt,             File.MARTH_ITEM_TILT,               Marth.STARROD_TILT,               -1)
    Character.edit_action_parameters(ISAAC, Action.StarRodSmash,            File.MARTH_ITEM_SMASH,              Marth.STARROD_SMASH,              -1)
    Character.edit_action_parameters(ISAAC, Action.StarRodDash,             File.MARTH_ITEM_DASH_ATTACK,        Marth.STARROD_DASH,               -1)
    Character.edit_action_parameters(ISAAC, Action.RayGunShoot,             File.MARTH_ITEM_SHOOT,              -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.RayGunShootAir,          File.MARTH_ITEM_SHOOT_AIR,          -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.FireFlowerShoot,         File.MARTH_ITEM_SHOOT,              -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.FireFlowerShootAir,      File.MARTH_ITEM_SHOOT_AIR,          -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.HammerIdle,              File.MARTH_HAMMER_IDLE,             Marth.HAMMER,                     -1)
    Character.edit_action_parameters(ISAAC, Action.HammerWalk,              File.MARTH_HAMMER_MOVE,             Marth.HAMMER,                     -1)
    Character.edit_action_parameters(ISAAC, Action.HammerTurn,              File.MARTH_HAMMER_MOVE,             Marth.HAMMER,                     -1)
    Character.edit_action_parameters(ISAAC, Action.HammerJumpSquat,         File.MARTH_HAMMER_MOVE,             Marth.HAMMER,                     -1)
    Character.edit_action_parameters(ISAAC, Action.HammerAir,               File.MARTH_HAMMER_MOVE,             Marth.HAMMER,                     -1)
    Character.edit_action_parameters(ISAAC, Action.HammerLanding,           File.MARTH_HAMMER_MOVE,             Marth.HAMMER,                     -1)
    Character.edit_action_parameters(ISAAC, Action.ShieldOn,                File.MARTH_SHIELD_ON,               -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ShieldOff,               File.MARTH_SHIELD_OFF,              -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.RollF,                   File.MARTH_ROLL_F,                  Marth.ROLL_F,                     -1)
    Character.edit_action_parameters(ISAAC, Action.RollB,                   File.MARTH_ROLL_B,                  Marth.ROLL_B,                     -1)
    Character.edit_action_parameters(ISAAC, Action.ShieldBreak,             File.MARTH_DAMAGE_FLY_TOP,          Marth.SHIELD_BREAK,               -1)
    Character.edit_action_parameters(ISAAC, Action.ShieldBreakFall,         File.MARTH_TUMBLE,                  Marth.SPARKLE,                    -1)
    Character.edit_action_parameters(ISAAC, Action.StunLandD,               File.MARTH_DOWN_BOUNCE_D,           -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.StunLandU,               File.MARTH_DOWN_BOUNCE_U,           -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.StunStartD,              File.MARTH_DOWN_STAND_D,            -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.StunStartU,              File.MARTH_DOWN_STAND_U,            -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.Stun,                    File.MARTH_STUN,                    Marth.STUN,                       -1)
    Character.edit_action_parameters(ISAAC, Action.Sleep,                   File.MARTH_STUN,                    Marth.ASLEEP,                     -1)
    Character.edit_action_parameters(ISAAC, Action.Grab,                    File.MARTH_GRAB,                    Marth.GRAB,                       -1)
    Character.edit_action_parameters(ISAAC, Action.GrabPull,                File.MARTH_GRAB_PULL,               -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ThrowF,                  File.MARTH_THROW_F,                 Marth.THROW_F,                    -1)
    Character.edit_action_parameters(ISAAC, Action.ThrowB,                  File.MARTH_THROW_B,                 Marth.THROW_B,                    -1)
    Character.edit_action_parameters(ISAAC, Action.CapturePulled,           File.MARTH_CAPTURE_PULLED,          Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.InhalePulled,            File.MARTH_TUMBLE,                  Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.InhaleSpat,              File.MARTH_TUMBLE,                  -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.InhaleCopied,            File.MARTH_TUMBLE,                  -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.EggLayPulled,            File.MARTH_CAPTURE_PULLED,          Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.EggLay,                  File.MARTH_IDLE,                    -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.FalconDivePulled,        File.MARTH_DAMAGE_HIGH_3,           Marth.FALCON_DIVE_PULLED,         -1)
    Character.edit_action_parameters(ISAAC, 0x0B4,                          File.MARTH_TUMBLE,                  Marth.UNKNOWN_0B4,                -1)
    Character.edit_action_parameters(ISAAC, Action.ThrownDKPulled,          File.MARTH_THROWN_DK_PULLED,        Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.ThrownMarioBros,         File.MARTH_THROWN_MARIO_BROS,       Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, 0x0B7,                          -1,                                 -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.ThrownDK,                File.MARTH_THROWN_DK,               Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.Thrown1,                 File.MARTH_THROWN_1,                Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.Thrown2,                 File.MARTH_THROWN_2,                Marth.DMG_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.Thrown3,                 -1,                                 -1,                         -1)
    Character.edit_action_parameters(ISAAC, 0x0BC,                          -1,                                 -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.Taunt,                   File.MARTH_TAUNT,                   Marth.TAUNT,                      -1)
    Character.edit_action_parameters(ISAAC, Action.Jab1,                    File.MARTH_JAB_1,                   Marth.JAB_1,                      -1)
    Character.edit_action_parameters(ISAAC, Action.Jab2,                    File.MARTH_JAB_2,                   Marth.JAB_2,                      -1)
    Character.edit_action_parameters(ISAAC, Action.DashAttack,              File.MARTH_DASH_ATTACK,             Marth.DASH_ATTACK,                -1)
    Character.edit_action_parameters(ISAAC, Action.FTiltHigh,               0,                                  0x80000000,                 0)
    Character.edit_action_parameters(ISAAC, Action.FTiltMidHigh,            0,                                  0x80000000,                 0)
    Character.edit_action_parameters(ISAAC, Action.FTilt,                   File.MARTH_F_TILT,                  Marth.F_TILT,                     -1)
    Character.edit_action_parameters(ISAAC, Action.FTiltMidLow,             0,                                  0x80000000,                 0)
    Character.edit_action_parameters(ISAAC, Action.FTiltLow,                0,                                  0x80000000,                 0)
    Character.edit_action_parameters(ISAAC, Action.UTilt,                   File.MARTH_U_TILT,                  Marth.U_TILT,                     -1)
    Character.edit_action_parameters(ISAAC, Action.DTilt,                   File.MARTH_D_TILT,                  Marth.D_TILT,                     -1)
    Character.edit_action_parameters(ISAAC, Action.FSmashHigh,              0,                                  0x80000000,                 0)
    Character.edit_action_parameters(ISAAC, Action.FSmashMidHigh,           0,                                  0x80000000,                 0)
    Character.edit_action_parameters(ISAAC, Action.FSmash,                  File.MARTH_F_SMASH,                 Marth.F_SMASH,                    -1)
    Character.edit_action_parameters(ISAAC, Action.FSmashMidLow,            0,                                  0x80000000,                 0)
    Character.edit_action_parameters(ISAAC, Action.FSmashLow,               0,                                  0x80000000,                 0)
    Character.edit_action_parameters(ISAAC, Action.USmash,                  File.MARTH_U_SMASH,                 Marth.U_SMASH,                    0)
    Character.edit_action_parameters(ISAAC, Action.DSmash,                  File.MARTH_D_SMASH,                 Marth.D_SMASH,                    -1)
    Character.edit_action_parameters(ISAAC, Action.AttackAirN,              File.MARTH_ATTACK_AIR_N,            Marth.ATTACK_AIR_N,               -1)
    Character.edit_action_parameters(ISAAC, Action.AttackAirF,              File.MARTH_ATTACK_AIR_F,            Marth.ATTACK_AIR_F,               -1)
    Character.edit_action_parameters(ISAAC, Action.AttackAirB,              File.MARTH_ATTACK_AIR_B,            Marth.ATTACK_AIR_B,               -1)
    Character.edit_action_parameters(ISAAC, Action.AttackAirU,              File.MARTH_ATTACK_AIR_U,            Marth.ATTACK_AIR_U,               -1)
    Character.edit_action_parameters(ISAAC, Action.AttackAirD,              File.MARTH_ATTACK_AIR_D,            Marth.ATTACK_AIR_D,               -1)
    Character.edit_action_parameters(ISAAC, Action.LandingAirN,             -1,                                 -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.LandingAirF,             File.MARTH_LANDING_AIR_F,           -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.LandingAirB,             File.MARTH_LANDING_AIR_B,           -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.LandingAirU,             -1,                                 -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.LandingAirD,             -1,                                 -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.LandingAirX,             File.MARTH_LANDING,                 -1,                         -1)
    Character.edit_action_parameters(ISAAC, Action.Entry_R,                 File.MARTH_ENTRY,                   Marth.ENTRY,                      0x40000000)
    Character.edit_action_parameters(ISAAC, Action.Entry_L,                 File.MARTH_ENTRY,                   Marth.ENTRY,                      0x40000000)
    Character.edit_action_parameters(ISAAC, Action.USPG,                    File.MARTH_USP_GROUND,              Marth.USP,                        0)
    Character.edit_action_parameters(ISAAC, Action.USPA,                    File.MARTH_USP_AIR,                 Marth.USP,                        0)
    Character.edit_action_parameters(ISAAC, Action.NSPG_1,                  File.MARTH_NSPG_1,                  Marth.NSP_1,                      0)
    Character.edit_action_parameters(ISAAC, Action.NSPG_2_High,             File.MARTH_NSPG_2_HI,               Marth.NSP_2_HIGH,                 0)
    Character.edit_action_parameters(ISAAC, Action.NSPG_2_Mid,              File.MARTH_NSPG_2,                  Marth.NSP_2,                      0)
    Character.edit_action_parameters(ISAAC, Action.NSPG_2_Low,              File.MARTH_NSPG_2_LO,               Marth.NSP_2_LOW,                  0)
    Character.edit_action_parameters(ISAAC, Action.NSPG_3_High,             File.MARTH_NSPG_3_HI,               Marth.NSP_3_HIGH,                 0x40000000)
    Character.edit_action_parameters(ISAAC, Action.NSPG_3_Mid,              File.MARTH_NSPG_3,                  Marth.NSP_3,                      0x40000000)
    Character.edit_action_parameters(ISAAC, Action.NSPG_3_Low,              File.MARTH_NSPG_3_LO,               Marth.NSP_3_LOW,                  0x40000000)
    Character.edit_action_parameters(ISAAC, Action.NSPA_1,                  File.MARTH_NSPA_1,                  Marth.NSP_1,                      0)
    Character.edit_action_parameters(ISAAC, Action.NSPA_2_High,             File.MARTH_NSPA_2_HI,               Marth.NSP_2_HIGH,                 0)
    Character.edit_action_parameters(ISAAC, Action.NSPA_2_Mid,              File.MARTH_NSPA_2,                  Marth.NSP_2,                      0)
    Character.edit_action_parameters(ISAAC, Action.NSPA_2_Low,              File.MARTH_NSPA_2_LO,               Marth.NSP_2_LOW,                  0)
    Character.edit_action_parameters(ISAAC, Action.NSPA_3_High,             File.MARTH_NSPA_3_HI,               Marth.NSP_3_HIGH,                 0)
    Character.edit_action_parameters(ISAAC, Action.NSPA_3_Mid,              File.MARTH_NSPA_3,                  Marth.NSP_3,                      0)
    Character.edit_action_parameters(ISAAC, Action.NSPA_3_Low,              File.MARTH_NSPA_3_LO,               Marth.NSP_3_LOW,                  0)
    Character.edit_action_parameters(ISAAC, 0x0EE,                          0,                                  0x80000000,                 0)

    // Modify Actions            // Action              // Staling ID   // Main ASM                 // Interrupt/Other ASM          // Movement/Physics ASM         // Collision ASM
    Character.edit_action(ISAAC, Action.Entry_R,        0,              0x8013DA94,                 0,                              0x8013DB2C,                     0x800DE348)
    Character.edit_action(ISAAC, Action.Entry_L,        0,              0x8013DA94,                 0,                              0x8013DB2C,                     0x800DE348)
    Character.edit_action(ISAAC, Action.USPG,           0x11,           MarthUSP.main_,             MarthUSP.change_direction_,     MarthUSP.physics_,              MarthUSP.collision_)
    Character.edit_action(ISAAC, Action.USPA,           0x11,           MarthUSP.main_,             MarthUSP.change_direction_,     MarthUSP.physics_,              MarthUSP.collision_)
    Character.edit_action(ISAAC, Action.NSPG_1,         0x12,           MarthNSP.ground_main_,      0,                              0x800D8CCC,                     MarthNSP.ground_collision_)
    Character.edit_action(ISAAC, Action.NSPG_2_High,    0x12,           MarthNSP.ground_main_,      0,                              0x800D8CCC,                     MarthNSP.ground_collision_)
    Character.edit_action(ISAAC, Action.NSPG_2_Mid,     0x12,           MarthNSP.ground_main_,      0,                              0x800D8CCC,                     MarthNSP.ground_collision_)
    Character.edit_action(ISAAC, Action.NSPG_2_Low,     0x12,           MarthNSP.ground_main_,      0,                              0x800D8CCC,                     MarthNSP.ground_collision_)
    Character.edit_action(ISAAC, Action.NSPG_3_High,    0x12,           MarthNSP.ground_main_,      0,                              0x800D8CCC,                     MarthNSP.ground_collision_)
    Character.edit_action(ISAAC, Action.NSPG_3_Mid,     0x12,           MarthNSP.ground_main_,      0,                              0x800D8CCC,                     MarthNSP.ground_collision_)
    Character.edit_action(ISAAC, Action.NSPG_3_Low,     0x12,           MarthNSP.ground_main_,      0,                              0x800D8CCC,                     MarthNSP.ground_collision_)
    Character.edit_action(ISAAC, Action.NSPA_1,         0x12,           MarthNSP.air_main_,         0,                              0x800D91EC,                     MarthNSP.air_collision_)
    Character.edit_action(ISAAC, Action.NSPA_2_High,    0x12,           MarthNSP.air_main_,         0,                              0x800D91EC,                     MarthNSP.air_collision_)
    Character.edit_action(ISAAC, Action.NSPA_2_Mid,     0x12,           MarthNSP.air_main_,         0,                              0x800D91EC,                     MarthNSP.air_collision_)
    Character.edit_action(ISAAC, Action.NSPA_2_Low,     0x12,           MarthNSP.air_main_,         0,                              0x800D91EC,                     MarthNSP.air_collision_)
    Character.edit_action(ISAAC, Action.NSPA_3_High,    0x12,           MarthNSP.air_main_,         0,                              0x800D91EC,                     MarthNSP.air_collision_)
    Character.edit_action(ISAAC, Action.NSPA_3_Mid,     0x12,           MarthNSP.air_main_,         0,                              0x800D91EC,                     MarthNSP.air_collision_)
    Character.edit_action(ISAAC, Action.NSPA_3_Low,     0x12,           MarthNSP.air_main_,         0,                              0x800D91EC,                     MarthNSP.air_collision_)

    // Modify Menu Action Parameters             // Action      // Animation                // Moveset Data             // Flags
    // TODO: add game over and continue
    Character.edit_menu_action_parameters(ISAAC, 0x0,           File.MARTH_MENU_IDLE,       Marth.IDLE,                       -1)
    Character.edit_menu_action_parameters(ISAAC, 0x1,           File.MARTH_VICTORY_1,       Marth.VICTORY_1,                  -1)
    Character.edit_menu_action_parameters(ISAAC, 0x2,           File.MARTH_VICTORY_2,       Marth.VICTORY_2,                  -1)
    Character.edit_menu_action_parameters(ISAAC, 0x3,           File.MARTH_VICTORY_3,       Marth.VICTORY_3,                  -1)
    Character.edit_menu_action_parameters(ISAAC, 0x4,           File.MARTH_VICTORY_1,       Marth.SELECT,                     -1)
    Character.edit_menu_action_parameters(ISAAC, 0x5,           File.MARTH_CLAP,            Marth.CLAP,                       -1)
    Character.edit_menu_action_parameters(ISAAC, 0x9,           File.MARTH_GAME_OVER,       -1,                         -1)
    Character.edit_menu_action_parameters(ISAAC, 0xA,           File.MARTH_GAME_CONTINUE,   -1,                         -1)
    Character.edit_menu_action_parameters(ISAAC, 0xD,           File.MARTH_POSE_1P,         0x80000000,                 -1)
    Character.edit_menu_action_parameters(ISAAC, 0xE,           File.MARTH_POSE_1P_CPU,     0x80000000,                 -1)

    // Add Action Parameters                // Action Name      // Base Action  // Animation                // Moveset Data             // Flags
    Character.add_new_action_params(ISAAC, DSP_Ground,         -1,             File.MARTH_COUNTER_G,       Marth.DSP,                        0)
    Character.add_new_action_params(ISAAC, DSP_Ground_Attack,  -1,             File.MARTH_COUNTER_ATK_G,   Marth.DSP_ATTACK,                 0)
    Character.add_new_action_params(ISAAC, DSP_Air,            -1,             File.MARTH_COUNTER_A,       Marth.DSP,                        0)
    Character.add_new_action_params(ISAAC, DSP_Air_Attack,     -1,             File.MARTH_COUNTER_ATK_A,   Marth.DSP_ATTACK,                 0)

    // Add Actions                   // Action Name     // Base Action  //Parameters                        // Staling ID   // Main ASM                 // Interrupt/Other ASM          // Movement/Physics ASM             // Collision ASM
    Character.add_new_action(ISAAC, DSP_Ground,        -1,             ActionParams.DSP_Ground,            0x1E,            MarthDSP.main_,             0,                              0x800D8BB4,                         MarthDSP.ground_collision_)
    Character.add_new_action(ISAAC, DSP_Ground_Attack, -1,             ActionParams.DSP_Ground_Attack,     0x1E,            0x800D94C4,                 0,                              0x800D8BB4,                         MarthDSP.ground_collision_)
    Character.add_new_action(ISAAC, DSP_Air,           -1,             ActionParams.DSP_Air,               0x1E,            MarthDSP.main_,             0,                              MarthDSP.air_physics_,              MarthDSP.air_collision_)
    Character.add_new_action(ISAAC, DSP_Air_Attack,    -1,             ActionParams.DSP_Air_Attack,        0x1E,            0x800D94E8,                 0,                              MarthDSP.air_physics_,              MarthDSP.air_collision_)

    Character.table_patch_start(air_nsp, Character.id.ISAAC, 0x4)
    dw      MarthNSP.air_1_initial_
    OS.patch_end()
    Character.table_patch_start(ground_nsp, Character.id.ISAAC, 0x4)
    dw      MarthNSP.ground_1_initial_
    OS.patch_end()
    Character.table_patch_start(air_usp, Character.id.ISAAC, 0x4)
    dw      MarthUSP.air_initial_
    OS.patch_end()
    Character.table_patch_start(ground_usp, Character.id.ISAAC, 0x4)
    dw      MarthUSP.ground_initial_
    OS.patch_end()
    Character.table_patch_start(air_dsp, Character.id.ISAAC, 0x4)
    dw      MarthDSP.air_initial_
    OS.patch_end()
    Character.table_patch_start(ground_dsp, Character.id.ISAAC, 0x4)
    dw      MarthDSP.ground_initial_
    OS.patch_end()

    Character.table_patch_start(variant_original, Character.id.ISAAC, 0x4)
    dw      Character.id.MARTH // set Marth as original character 
    OS.patch_end()

    // Use Mario's initial/grounded script.
    Character.table_patch_start(initial_script, Character.id.ISAAC, 0x4)
    dw 0x800D7DCC
    OS.patch_end()
    Character.table_patch_start(grounded_script, Character.id.ISAAC, 0x4)
    dw 0x800DE428
    OS.patch_end()

    // Set menu zoom size.
    Character.table_patch_start(menu_zoom, Character.id.ISAAC, 0x4)
    float32 0.93
    OS.patch_end()

    // Set crowd chant FGM.
    Character.table_patch_start(crowd_chant_fgm, Character.id.ISAAC, 0x2)
    dh  0x0351
    OS.patch_end()

    // Set Kirby hat_id
    Character.table_patch_start(kirby_inhale_struct, 0x2, Character.id.ISAAC, 0xC)
    dh 0x1C
    OS.patch_end()

    // Set default costumes
    Character.set_default_costumes(Character.id.ISAAC, 0, 1, 2, 3, 1, 2, 5)
    Teams.add_team_costume(YELLOW, ISAAC, 0x0)

    // Shield colors for costume matching
    Character.set_costume_shield_colors(ISAAC, BLUE, RED, GREEN, YELLOW, WHITE, ORANGE, NA, NA)

    // Set action strings
    Character.table_patch_start(action_string, Character.id.ISAAC, 0x4)
    dw  Action.action_string_table
    OS.patch_end()

    // Set Magnifying Glass Scale Override
    Character.table_patch_start(magnifying_glass_zoom, Character.id.ISAAC, 0x2)
    dh  0x0068
    OS.patch_end()

    // Allows Marth to use his entry which is similar to Link
    Character.table_patch_start(entry_action, Character.id.ISAAC, 0x8)
    dw 0xDC, 0xDD
    OS.patch_end()
    Character.table_patch_start(entry_script, Character.id.ISAAC, 0x4)
    dw Marth.marth_entry_routine_
    OS.patch_end()

    // Set Remix 1P ending music
    Character.table_patch_start(remix_1p_end_bgm, Character.id.ISAAC, 0x2)
    dh {MIDI.id.FIRE_EMBLEM}
    OS.patch_end()

    // Set CPU SD prevent routine
    Character.table_patch_start(ai_attack_prevent, Character.id.ISAAC, 0x4)
    dw      AI.PREVENT_ATTACK.ROUTINE.MARIO
    OS.patch_end()
}
