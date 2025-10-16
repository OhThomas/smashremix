// CBDedede.asm

// This file contains file inclusions, action edits, and assembly for Cowboy Dedede.

scope CBDedede {

    // Action name constants.
    scope Action {
        constant JUMP_2(0xDF)
        constant JUMP_3(0xE0)
        constant JUMP_4(0xE1)
        constant JUMP_5(0xE2)
        constant JUMP_6(0xE3)
        constant USP_BEGIN(0xE4)
        constant USP_MOVE(0xE5)
        constant USP_LAND(0xE6)

        constant NSP_BEGIN_GROUND(0xE7)
        constant NSP_LOOP_GROUND(0xE8)
        constant USP_CANCEL(0xE9)
        constant NSP_PULL_GROUND(0xEA)
        constant NSP_SWALLOW_GROUND(0xEB)	// unused
        constant NSP_IDLE_GROUND(0xEC)
        constant NSP_SPIT_GROUND(0xED)
        constant NSP_TURN_GROUND(0xEE)
        // NEW ACTIONS
        constant NSP_END_GROUND(0xEF)
        constant NSP_BEGIN_AIR(0xF0)
        constant NSP_LOOP_AIR(0xF1)
        constant NSP_PULL_AIR(0xF2)
        constant NSP_SWALLOW_AIR(0xF3)		// unused
        constant NSP_FALL(0xF4)
        constant NSP_SPIT_AIR(0xF5)
        constant NSP_TURN_AIR(0xF6)
        constant NSP_END_AIR(0xF7)
        constant DSPG_BEGIN(0xF8)
        constant DSPG_CHARGE(0xF9)
        constant DSPG_SHOOT(0xFA)
        constant DSPA_BEGIN(0xFB)
        constant DSPA_CHARGE(0xFC)
        constant DSPA_SHOOT(0xFD)
        constant JAB_3(0xFE)
		constant NSP_WALK_1(0xFF)
		constant NSP_WALK_2(0x100)
		constant NSP_WALK_3(0x101)
        constant USP_CEILING_BONK(0x102)
        //constant DEDEDE_STARRING_LEFT(0x103)
        //constant DEDEDE_STARRING_RIGHT(0x104)

        string_0x0DC:; String.insert("Empty")
        string_0x0DF:; String.insert("Jump2")
        string_0x0E0:; String.insert("Jump3")
        string_0x0E1:; String.insert("Jump4")
        string_0x0E2:; String.insert("Jump5")
        string_0x0E3:; String.insert("Jump6")
        string_0x0E4:; String.insert("SuperJumpBegin")
        string_0x0E5:; String.insert("SuperJumpMove")
        string_0x0E6:; String.insert("SuperJumpLand")
        string_0x0E7:; String.insert("InhaleBeginG")
        string_0x0E8:; String.insert("InhaleLoopG")
        string_0x0E9:; String.insert("SuperJumpCancel")
        string_0x0EA:; String.insert("InhalePullG")
        string_0x0EB:; String.insert("InhaleSwallowG")
        string_0x0EC:; String.insert("InhaleIdleG")
        string_0x0ED:; String.insert("InhaleSpitG")
        string_0x0EE:; String.insert("InhaleTurnG")
        string_0x0EF:; String.insert("InhaleEndG")
        string_0x0F0:; String.insert("InhaleBeginA")
        string_0x0F1:; String.insert("InhaleLoopA")
        string_0x0F2:; String.insert("InhalePullA")
        string_0x0F3:; String.insert("InhaleSwallowA")
        string_0x0F4:; String.insert("InhaleFall")
        string_0x0F5:; String.insert("InhaleSpitA")
        string_0x0F6:; String.insert("InhaleTurnA")
        string_0x0F7:; String.insert("InhaleEndA")
        string_0x0F8:; String.insert("MinionToss1G")
        string_0x0F9:; String.insert("MinionToss2G")
        string_0x0FA:; String.insert("MinionToss3G")
        string_0x0FB:; String.insert("MinionToss1A")
        string_0x0FC:; String.insert("MinionToss2A")
        string_0x0FD:; String.insert("MinionToss3A")
        string_0x0FE:; String.insert("Jab3")
        string_0x0FF:; String.insert("InhaleWalk1")
        string_0x100:; String.insert("InhaleWalk2")
        string_0x101:; String.insert("InhaleWalk3")
        string_0x102:; String.insert("SuperJumpCeilingBonk")
        string_0x103:; String.insert("AppearLeft")
        string_0x104:; String.insert("AppearRight")

        action_string_table:
        dw string_0x0DC
        dw string_0x0DC
        dw string_0x0DC
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
        dw string_0x0FA
        dw string_0x0FB
        dw string_0x0FC
        dw string_0x0FD
        dw string_0x0FE
        dw string_0x0FF
        dw string_0x100
        dw string_0x101
        dw string_0x102
        dw string_0x103
        dw string_0x104
    }

    // Modify Action Parameters             // Action                       // Animation                    // Moveset Data             // Flags
Character.edit_action_parameters(CBDEDEDE, Action.DeadU,                   File.DEDEDE_TUMBLE,                  -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ScreenKO,                File.DEDEDE_TUMBLE,                  -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.Entry,                  File.DEDEDE_IDLE,                   Dedede.IDLE,                         -1)
Character.edit_action_parameters(CBDEDEDE, 0x006,                         File.DEDEDE_IDLE,                   Dedede.IDLE,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.Revive1,                File.DEDEDE_DOWN_BOUNCE_D,           -1,                          -1)
Character.edit_action_parameters(CBDEDEDE, Action.Revive2,                File.DEDEDE_DOWN_STAND_D,            -1,                          -1)
Character.edit_action_parameters(CBDEDEDE, Action.ReviveWait,             File.DEDEDE_IDLE,                   Dedede.IDLE,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.Idle,                   File.DEDEDE_IDLE,                   Dedede.IDLE,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.Walk1,                   File.DEDEDE_WALK_1,                  -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.Walk2,                   File.DEDEDE_WALK_2,                  -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.Walk3,                   File.DEDEDE_WALK_3,                  -1,                         -1)
//// Character.edit_action_parameters(CBDEDEDE, 0x00E,                          File.DEDEDE_WALK_END,                -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.Dash,                   File.DEDEDE_DASH,                   Dedede.DASH,                       -1)
Character.edit_action_parameters(CBDEDEDE, Action.Run,                    File.DEDEDE_RUN,                    Dedede.RUN,                        -1)
Character.edit_action_parameters(CBDEDEDE, Action.RunBrake,               File.DEDEDE_RUN_BRAKE,              -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.Turn,                   File.DEDEDE_TURN,                   Dedede.TURN,                       -1)
Character.edit_action_parameters(CBDEDEDE, Action.TurnRun,                File.DEDEDE_TURN_RUN,               -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.JumpSquat,              File.DEDEDE_LANDING,                -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ShieldJumpSquat,        File.DEDEDE_LANDING,                -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.JumpF,                  File.DEDEDE_JUMP_F,                 Dedede.JUMP,                       -1)
Character.edit_action_parameters(CBDEDEDE, Action.JumpB,                  File.DEDEDE_JUMP_B,                 Dedede.JUMP,                       -1)
Character.edit_action_parameters(CBDEDEDE, Action.JumpAerialF,            File.DEDEDE_JUMP_AERIAL_1,          Dedede.JUMP_AERIAL_EARLY,                -1)
Character.edit_action_parameters(CBDEDEDE, Action.JumpAerialB,            File.DEDEDE_JUMP_AERIAL_1,          Dedede.JUMP_AERIAL_EARLY,                0)

Character.edit_action_parameters(CBDEDEDE, Action.KIRBY.Jump2,            File.DEDEDE_JUMP_AERIAL_1,          Dedede.JUMP_AERIAL_EARLY,                0)
Character.edit_action_parameters(CBDEDEDE, Action.KIRBY.Jump3,            File.DEDEDE_JUMP_AERIAL_2,          Dedede.JUMP_AERIAL_EARLY,                0)
Character.edit_action_parameters(CBDEDEDE, Action.KIRBY.Jump4,            File.DEDEDE_JUMP_AERIAL_3,          Dedede.JUMP_AERIAL,                0)
Character.edit_action_parameters(CBDEDEDE, Action.KIRBY.Jump5,            File.DEDEDE_JUMP_AERIAL_4,          Dedede.JUMP_LAST,                  0)
Character.edit_action_parameters(CBDEDEDE, Action.KIRBY.Jump6,            File.DEDEDE_JUMP_AERIAL_4,          Dedede.JUMP_LAST,                  0)

Character.edit_action_parameters(CBDEDEDE, Action.Fall,                   File.DEDEDE_FALL,                   -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.FallAerial,             File.DEDEDE_FALL_AERIAL,            -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.Crouch,                 File.DEDEDE_CROUCH,                 Dedede.CROUCH,                     -1)
Character.edit_action_parameters(CBDEDEDE, Action.CrouchIdle,             File.DEDEDE_CROUCH_IDLE,            Dedede.CROUCH_IDLE,                -1)
Character.edit_action_parameters(CBDEDEDE, Action.CrouchEnd,              File.DEDEDE_CROUCH_END,             -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.LandingLight,           File.DEDEDE_LANDING,                -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.LandingHeavy,           File.DEDEDE_LANDING,                -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.Teeter,                 File.DEDEDE_TEETER,                 Dedede.TEETER,                     -1)
Character.edit_action_parameters(CBDEDEDE, Action.TeeterStart,            File.DEDEDE_TEETER_START,           Dedede.TEETER,                     -1)
 Character.edit_action_parameters(CBDEDEDE, Action.DamageHigh1,             File.DEDEDE_DAMAGE_HIGH_1,           Dedede.DMG_1,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.DamageHigh2,             File.DEDEDE_DAMAGE_HIGH_2,           Dedede.DMG_1,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.DamageHigh3,             File.DEDEDE_DAMAGE_HIGH_3,           Dedede.DMG_1,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.DamageMid1,              File.DEDEDE_DAMAGE_MID_1,            Dedede.DMG_1,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.DamageMid2,              File.DEDEDE_DAMAGE_MID_2,            Dedede.DMG_1,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.DamageMid3,              File.DEDEDE_DAMAGE_MID_3,            Dedede.DMG_1,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.DamageLow1,              File.DEDEDE_DAMAGE_LOW_1,            Dedede.DMG_1,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.DamageLow2,              File.DEDEDE_DAMAGE_LOW_2,            Dedede.DMG_1,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.DamageLow3,              File.DEDEDE_DAMAGE_LOW_3,            Dedede.DMG_1,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.DamageAir1,              File.DEDEDE_DAMAGE_AIR_1,            Dedede.DMG_1,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.DamageAir2,              File.DEDEDE_DAMAGE_AIR_2,            Dedede.DMG_1,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.DamageAir3,              File.DEDEDE_DAMAGE_AIR_3,            Dedede.DMG_1,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.DamageElec1,             File.DEDEDE_DAMAGE_ELEC,             Dedede.DMG_ELEC,                      -1)
 Character.edit_action_parameters(CBDEDEDE, Action.DamageElec2,             File.DEDEDE_DAMAGE_ELEC,             Dedede.DMG_ELEC,                      -1)
 Character.edit_action_parameters(CBDEDEDE, Action.DamageFlyHigh,           File.DEDEDE_DAMAGE_FLY_HIGH,         Dedede.DMG_2,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.DamageFlyMid,            File.DEDEDE_DAMAGE_FLY_MID,          Dedede.DMG_2,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.DamageFlyLow,            File.DEDEDE_DAMAGE_FLY_LOW,          Dedede.DMG_2,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.DamageFlyTop,            File.DEDEDE_DAMAGE_FLY_TOP,          Dedede.DMG_2,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.DamageFlyRoll,           File.DEDEDE_DAMAGE_FLY_ROLL,         Dedede.DMG_2,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.Tumble,                  File.DEDEDE_TUMBLE,                  Dedede.DMG_1,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.WallBounce,              File.DEDEDE_TUMBLE,                  Dedede.DMG_1,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.FallSpecial,           File.DEDEDE_SFALL,                      -1,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.LandingSpecial,        File.DEDEDE_SFALL_LANDING,            Dedede.LANDING_SPECIAL,              -1)
 Character.edit_action_parameters(CBDEDEDE, Action.Tornado,                 File.DEDEDE_TUMBLE,                  -1,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.EnterPipe,               File.DEDEDE_ENTER_PIPE,              -1,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.ExitPipe,                File.DEDEDE_EXIT_PIPE,               -1,                         -1)
 Character.edit_action_parameters(CBDEDEDE, Action.ExitPipeWalk,            File.DEDEDE_EXIT_PIPE_WALK,          -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.CeilingBonk,             File.DEDEDE_CEILINGBONK,              -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.DownBounceD,             File.DEDEDE_DOWN_BOUNCE_D,             Dedede.DOWN_BOUNCE,               -1)
Character.edit_action_parameters(CBDEDEDE, Action.DownBounceU,             File.DEDEDE_DOWN_BOUNCE_U,             Dedede.DOWN_BOUNCE,               -1)
Character.edit_action_parameters(CBDEDEDE, Action.DownStandD,              File.DEDEDE_DOWN_STAND_D,              Dedede.DOWN_STAND,                -1)
Character.edit_action_parameters(CBDEDEDE, Action.DownStandU,              File.DEDEDE_DOWN_STAND_U,              Dedede.DOWN_STAND,                -1)
Character.edit_action_parameters(CBDEDEDE, Action.TechF,                   File.DEDEDE_TECH_F,                   Dedede.TECH_ROLL,                  -1)
Character.edit_action_parameters(CBDEDEDE, Action.TechB,                   File.DEDEDE_TECH_B,                   Dedede.TECH_ROLL,                  -1)
Character.edit_action_parameters(CBDEDEDE, Action.DownForwardD,            File.DEDEDE_DOWN_FORWARD_D,          -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.DownForwardU,            File.DEDEDE_DOWN_FORWARD_U,          -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.DownBackD,               File.DEDEDE_DOWN_BACK_D,             -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.DownBackU,               File.DEDEDE_DOWN_BACK_U,             -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.DownAttackD,             File.DEDEDE_DOWN_ATTACK_D,           Dedede.DOWNATTACK_D,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.DownAttackU,             File.DEDEDE_DOWN_ATTACK_U,           Dedede.DOWNATTACK_U,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.Tech,                    File.DEDEDE_TECH,                    Dedede.TECH,                         -1)
Character.edit_action_parameters(CBDEDEDE, 0x053,                          File.DEDEDE_CLANG,                     -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.CliffCatch,             File.DEDEDE_CLIFF_CATCH,            Dedede.CLIFF_CATCH,                    -1)
Character.edit_action_parameters(CBDEDEDE, Action.CliffWait,              File.DEDEDE_CLIFF_WAIT,             Dedede.CLIFF_WAIT,                     -1)
Character.edit_action_parameters(CBDEDEDE, Action.CliffQuick,             File.DEDEDE_CLIFF_QUICK,            -1,                             -1)
Character.edit_action_parameters(CBDEDEDE, Action.CliffClimbQuick1,       File.DEDEDE_CLIFF_CLIMB_QUICK_1,    -1,                             -1)
Character.edit_action_parameters(CBDEDEDE, Action.CliffClimbQuick2,       File.DEDEDE_CLIFF_CLIMB_QUICK_2,    -1,                             -1)
Character.edit_action_parameters(CBDEDEDE, Action.CliffSlow,              File.DEDEDE_CLIFF_SLOW,             -1,                             -1)
Character.edit_action_parameters(CBDEDEDE, Action.CliffClimbSlow1,        File.DEDEDE_CLIFF_CLIMB_SLOW_1,     -1,                             -1)
Character.edit_action_parameters(CBDEDEDE, Action.CliffClimbSlow2,        File.DEDEDE_CLIFF_CLIMB_SLOW_2,     -1,                             -1)
Character.edit_action_parameters(CBDEDEDE, Action.CliffAttackQuick1,      File.DEDEDE_CLIFF_ATTACK_QUICK_1,   -1,                             -1)
Character.edit_action_parameters(CBDEDEDE, Action.CliffAttackQuick2,      File.DEDEDE_CLIFF_ATTACK_QUICK_2,   Dedede.EDGE_ATTACK_QUICK_2,            -1)
Character.edit_action_parameters(CBDEDEDE, Action.CliffAttackSlow1,       File.DEDEDE_CLIFF_ATTACK_SLOW_1,    -1,                             -1)
Character.edit_action_parameters(CBDEDEDE, Action.CliffAttackSlow2,       File.DEDEDE_CLIFF_ATTACK_SLOW_2,    Dedede.EDGE_ATTACK_SLOW_2,             -1)
Character.edit_action_parameters(CBDEDEDE, Action.CliffEscapeQuick1,      File.DEDEDE_CLIFF_ESCAPE_QUICK_1,   -1,                             -1)
Character.edit_action_parameters(CBDEDEDE, Action.CliffEscapeQuick2,      File.DEDEDE_CLIFF_ESCAPE_QUICK_2,   -1,                             -1)
Character.edit_action_parameters(CBDEDEDE, Action.CliffEscapeSlow1,       File.DEDEDE_CLIFF_ESCAPE_SLOW_1,    -1,                             -1)
Character.edit_action_parameters(CBDEDEDE, Action.CliffEscapeSlow2,       File.DEDEDE_CLIFF_ESCAPE_SLOW_2,    -1,                             -1)
Character.edit_action_parameters(CBDEDEDE, Action.LightItemPickup,         File.DEDEDE_LIGHT_ITEM_PICKUP,       -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.HeavyItemPickup,         File.DEDEDE_HEAVY_ITEM_PICKUP,       -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ItemDrop,                File.DEDEDE_ITEM_DROP,               -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ItemThrowDash,           File.DEDEDE_ITEM_THROW_DASH,         -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ItemThrowF,              File.DEDEDE_ITEM_THROW,              -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ItemThrowB,              File.DEDEDE_ITEM_THROW,              -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ItemThrowU,              File.DEDEDE_ITEM_THROW_U,            -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ItemThrowD,              File.DEDEDE_ITEM_THROW_D,            -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ItemThrowSmashF,         File.DEDEDE_ITEM_THROW,              -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ItemThrowSmashB,         File.DEDEDE_ITEM_THROW,              -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ItemThrowSmashU,         File.DEDEDE_ITEM_THROW_U,            -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ItemThrowSmashD,         File.DEDEDE_ITEM_THROW_D,            -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ItemThrowAirF,           File.DEDEDE_ITEM_THROW_AIR,          -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ItemThrowAirB,           File.DEDEDE_ITEM_THROW_AIR,          -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ItemThrowAirU,           File.DEDEDE_ITEM_THROW_AIR_U,        -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ItemThrowAirD,           File.DEDEDE_ITEM_THROW_AIR_D,        -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ItemThrowAirSmashF,      File.DEDEDE_ITEM_THROW_AIR,          -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ItemThrowAirSmashB,      File.DEDEDE_ITEM_THROW_AIR,          -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ItemThrowAirSmashU,      File.DEDEDE_ITEM_THROW_AIR_U,        -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ItemThrowAirSmashF,      File.DEDEDE_ITEM_THROW_AIR_D,        -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.HeavyItemThrowF,         File.DEDEDE_HEAVY_ITEM_THROW,        -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.HeavyItemThrowB,         File.DEDEDE_HEAVY_ITEM_THROW,        -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.HeavyItemThrowSmashF,    File.DEDEDE_HEAVY_ITEM_THROW,        -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.HeavyItemThrowSmashB,    File.DEDEDE_HEAVY_ITEM_THROW,        -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.BeamSwordNeutral,        File.DEDEDE_ITEM_NEUTRAL,            -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.BeamSwordTilt,           File.DEDEDE_ITEM_TILT,               -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.BeamSwordSmash,          File.DEDEDE_ITEM_SMASH,              -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.BeamSwordDash,           File.DEDEDE_ITEM_DASH_ATTACK,        -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.BatNeutral,              File.DEDEDE_ITEM_NEUTRAL,            -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.BatTilt,                 File.DEDEDE_ITEM_TILT,               -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.BatSmash,                File.DEDEDE_ITEM_SMASH,              -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.BatDash,                 File.DEDEDE_ITEM_DASH_ATTACK,        -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.FanNeutral,              File.DEDEDE_ITEM_NEUTRAL,            -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.FanTilt,                 File.DEDEDE_ITEM_TILT,               -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.FanSmash,                File.DEDEDE_ITEM_SMASH,              -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.FanDash,                 File.DEDEDE_ITEM_DASH_ATTACK,        -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.StarRodNeutral,          File.DEDEDE_ITEM_NEUTRAL,            -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.StarRodTilt,             File.DEDEDE_ITEM_TILT,               -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.StarRodSmash,            File.DEDEDE_ITEM_SMASH,              -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.StarRodDash,             File.DEDEDE_ITEM_DASH_ATTACK,        -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.RayGunShoot,            File.DEDEDE_ITEM_SHOOT,             -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.RayGunShootAir,         File.DEDEDE_ITEM_SHOOT_AIR,         -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.FireFlowerShoot,        File.DEDEDE_ITEM_SHOOT,             -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.FireFlowerShootAir,     File.DEDEDE_ITEM_SHOOT_AIR,         -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.HammerIdle,             File.DEDEDE_HAMMER_IDLE,            Dedede.HAMMER,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.HammerWalk,             File.DEDEDE_HAMMER_MOVE,            Dedede.HAMMER,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.HammerTurn,             File.DEDEDE_HAMMER_MOVE,            Dedede.HAMMER,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.HammerJumpSquat,        File.DEDEDE_HAMMER_MOVE,            Dedede.HAMMER,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.HammerAir,              File.DEDEDE_HAMMER_MOVE,            Dedede.HAMMER,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.HammerLanding,          File.DEDEDE_HAMMER_MOVE,            Dedede.HAMMER,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ShieldOn,               File.DEDEDE_SHIELD_ON,              -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ShieldOff,              File.DEDEDE_SHIELD_OFF,             -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ShieldDrop,             File.DEDEDE_SHIELD_DROP,            -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.Pass,                   File.DEDEDE_SHIELD_DROP,            -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.RollF,                  File.DEDEDE_ROLL_F,                 -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.RollB,                  File.DEDEDE_ROLL_B,                 -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ShieldBreak,             File.DEDEDE_DAMAGE_FLY_TOP,        Dedede.SHIELD_BREAK,               -1)
Character.edit_action_parameters(CBDEDEDE, Action.ShieldBreakFall,         File.DEDEDE_TUMBLE,                Dedede.SPARKLE,                    -1)
Character.edit_action_parameters(CBDEDEDE, Action.StunLandD,               File.DEDEDE_DOWN_BOUNCE_D,         -1,                       -1)
Character.edit_action_parameters(CBDEDEDE, Action.StunLandU,               File.DEDEDE_DOWN_BOUNCE_U,         -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.StunStartD,              File.DEDEDE_DOWN_STAND_D,          -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.StunStartU,              File.DEDEDE_DOWN_STAND_U,          -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.Stun,                    File.DEDEDE_STUN,                  Dedede.STUN,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.Sleep,                   File.DEDEDE_STUN,                  Dedede.SLEEP,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.Grab,                   File.DEDEDE_GRAB,                   Dedede.GRAB,                       -1)
Character.edit_action_parameters(CBDEDEDE, Action.GrabPull,               File.DEDEDE_GRAB_PULL,              -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.ThrowF,                 File.DEDEDE_THROW_F,                Dedede.THROW_F,                    -1)
Character.edit_action_parameters(CBDEDEDE, Action.ThrowB,                 File.DEDEDE_THROW_B,                Dedede.THROW_B,                    -1)
Character.edit_action_parameters(CBDEDEDE, Action.CapturePulled,           File.DEDEDE_CAPTURE_PULLED,        Dedede.DMG_1,                      -1)
Character.edit_action_parameters(CBDEDEDE, Action.InhalePulled,            File.DEDEDE_TUMBLE,                Dedede.DMG_1,                      -1)
Character.edit_action_parameters(CBDEDEDE, Action.InhaleSpat,              File.DEDEDE_TUMBLE,                  -1,                       1)
Character.edit_action_parameters(CBDEDEDE, Action.InhaleCopied,            File.DEDEDE_TUMBLE,                  -1,                       1)
Character.edit_action_parameters(CBDEDEDE, Action.EggLayPulled,            File.DEDEDE_CAPTURE_PULLED,        Dedede.DMG_1,                      -1)
Character.edit_action_parameters(CBDEDEDE, Action.EggLay,                  File.DEDEDE_IDLE,                    -1,                       1)
Character.edit_action_parameters(CBDEDEDE, Action.FalconDivePulled,        File.DEDEDE_DAMAGE_HIGH_3,         Dedede.FALCON_DIVE_PULLED,         -1)
Character.edit_action_parameters(CBDEDEDE, 0x0B4,                          File.DEDEDE_TUMBLE,                Dedede.UNKNOWN_0B4,                -1)
Character.edit_action_parameters(CBDEDEDE, Action.ThrownDKPulled,          File.DEDEDE_THROWN_DK_PULLED,      Dedede.DMG_1,                      -1)
Character.edit_action_parameters(CBDEDEDE, Action.ThrownMarioBros,         File.DEDEDE_THROWN_MARIO_BROS,     Dedede.DMG_1,                      -1)
Character.edit_action_parameters(CBDEDEDE, 0x0B7,                          -1,                                 -1,                        -1)
Character.edit_action_parameters(CBDEDEDE, Action.ThrownDK,                File.DEDEDE_THROWN_DK,             Dedede.DMG_1,                      -1)
Character.edit_action_parameters(CBDEDEDE, Action.Thrown1,                 File.DEDEDE_THROWN_1,              Dedede.DMG_1,                      -1)
Character.edit_action_parameters(CBDEDEDE, Action.Thrown2,                 File.DEDEDE_THROWN_2,              Dedede.DMG_1,                      -1)
//// Character.edit_action_parameters(CBDEDEDE, Action.Thrown3,                 -1,                                 -1,                   -1)
//// Character.edit_action_parameters(CBDEDEDE, 0x0BC,                          -1,                                 -1,                   -1)
Character.edit_action_parameters(CBDEDEDE, Action.Taunt,                  File.DEDEDE_TAUNT,                  Dedede.TAUNT,                      -1)
Character.edit_action_parameters(CBDEDEDE, Action.Jab1,                   File.DEDEDE_JAB_1,                  Dedede.JAB_1,                      0x00000000)
Character.edit_action_parameters(CBDEDEDE, Action.Jab2,                   File.DEDEDE_JAB_2,                  Dedede.JAB_2,                      0x00000000)
Character.edit_action_parameters(CBDEDEDE, 0xDC,                          File.DEDEDE_JAB_3,                  Dedede.JAB_3,                      0x40000000)
Character.edit_action_parameters(CBDEDEDE, 0xDD,                          File.DEDEDE_JAB_1,                  Dedede.JAB_1,                      0x00000000)
Character.edit_action_parameters(CBDEDEDE, 0xDE,                          File.DEDEDE_JAB_2,                  Dedede.JAB_2,                      0x00000000)

Character.edit_action_parameters(CBDEDEDE, Action.DashAttack,             File.DEDEDE_DASH_ATTACK,            Dedede.DASHATTACK,                 -1)
Character.edit_action_parameters(CBDEDEDE, Action.FTiltHigh,              0,                                  0x80000000,                 0)
Character.edit_action_parameters(CBDEDEDE, Action.FTiltMidHigh,           0,                                  0x80000000,                 0)
Character.edit_action_parameters(CBDEDEDE, Action.FTilt,                  File.DEDEDE_F_TILT,                 Dedede.FTILT,                      -1)
Character.edit_action_parameters(CBDEDEDE, Action.FTiltMidLow,            0,                                  0x80000000,                 0)
Character.edit_action_parameters(CBDEDEDE, Action.FTiltLow,               0,                                  0x80000000,                 0)
Character.edit_action_parameters(CBDEDEDE, Action.UTilt,                  File.DEDEDE_U_TILT,                 Dedede.UTILT,                      0x00000000)
Character.edit_action_parameters(CBDEDEDE, Action.DTilt,                  File.DEDEDE_D_TILT,                 Dedede.DTILT,                      0x40000000)
Character.edit_action_parameters(CBDEDEDE, Action.FSmashHigh,             0,                                  0x80000000,                 0)
Character.edit_action_parameters(CBDEDEDE, Action.FSmashMidHigh,          0,                                  0x80000000,                 0)
Character.edit_action_parameters(CBDEDEDE, Action.FSmash,                 File.DEDEDE_F_SMASH,                Dedede.FSMASH,                     -1)
Character.edit_action_parameters(CBDEDEDE, Action.FSmashMidLow,           0,                                  0x80000000,                 0)
Character.edit_action_parameters(CBDEDEDE, Action.FSmashLow,              0,                                  0x80000000,                 0)
Character.edit_action_parameters(CBDEDEDE, Action.USmash,                 File.DEDEDE_U_SMASH,                Dedede.USMASH,                     0x00000000)
Character.edit_action_parameters(CBDEDEDE, Action.DSmash,                 File.DEDEDE_D_SMASH,                Dedede.DSMASH,                     0x00000000)
Character.edit_action_parameters(CBDEDEDE, Action.AttackAirN,             File.DEDEDE_ATTACK_AIR_N,           Dedede.ATTACK_AIR_N,               -1)
Character.edit_action_parameters(CBDEDEDE, Action.AttackAirF,             File.DEDEDE_ATTACK_AIR_F,           Dedede.ATTACK_AIR_F,               -1)
Character.edit_action_parameters(CBDEDEDE, Action.AttackAirB,             File.DEDEDE_ATTACK_AIR_B,           Dedede.ATTACK_AIR_B,               -1)
Character.edit_action_parameters(CBDEDEDE, Action.AttackAirU,             File.DEDEDE_ATTACK_AIR_U,           Dedede.ATTACK_AIR_U,               -1)
Character.edit_action_parameters(CBDEDEDE, Action.AttackAirD,             File.DEDEDE_ATTACK_AIR_D,           Dedede.ATTACK_AIR_D,               -1)
Character.edit_action_parameters(CBDEDEDE, Action.LandingAirN,            File.DEDEDE_LANDING,                -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.LandingAirF,            File.DEDEDE_LANDING,                -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.LandingAirB,            File.DEDEDE_LANDING_AIR_B,          -1,                         -1)
Character.edit_action_parameters(CBDEDEDE, Action.LandingAirU,            File.DEDEDE_LANDING_AIR_U,          Dedede.LANDING_AIR_U,              -1)
Character.edit_action_parameters(CBDEDEDE, Action.LandingAirD,            File.DEDEDE_LANDING_AIR_D,          Dedede.LANDING_AIR_D,              -1)
Character.edit_action_parameters(CBDEDEDE, Action.LandingAirX,            File.DEDEDE_LANDING,                -1,                         -1)

     Character.edit_action_parameters(CBDEDEDE, Action.USP_BEGIN,         File.DEDEDE_USP_BEGIN,              Dedede.USP_BEGIN,                  0)
     Character.edit_action_parameters(CBDEDEDE, Action.USP_MOVE,          File.DEDEDE_USP_LOOP,               Dedede.USP_MOVE,                   0)
     Character.edit_action_parameters(CBDEDEDE, Action.USP_LAND,          File.DEDEDE_USP_LAND,               Dedede.USP_LAND,                   0)
     Character.edit_action_parameters(CBDEDEDE, Action.USP_CANCEL,        File.DEDEDE_USP_CANCEL,             0x80000000,                 0)
     //Character.edit_action_parameters(CBDEDEDE, Action.USP_MOVE,               File.DEDEDE_USP_LOOP,                                 USP_MOVE,                 0x00000000)
     //Character.edit_action_parameters(CBDEDEDE, Action.USP_LAND,               File.DEDEDE_USP_LAND,                             USP_LAND,                    0)

    Character.edit_action_parameters(CBDEDEDE, Action.NSP_BEGIN_GROUND,   File.DEDEDE_NSP_BEGIN,              Dedede.NSP_BEGIN,                  0x00000000)// 0x1C000000)
    Character.edit_action_parameters(CBDEDEDE, Action.NSP_LOOP_GROUND,    File.DEDEDE_NSP_LOOP,               Dedede.NSP_INHALE,                 0x00000000)// 0x1C000000)
    Character.edit_action_parameters(CBDEDEDE, Action.NSP_PULL_GROUND,    File.DEDEDE_NSP_LOOP,               0x80000000,                 0x00000000)// 0x1C000000)
    Character.edit_action_parameters(CBDEDEDE, Action.NSP_SWALLOW_GROUND, File.DEDEDE_NSP_PULL,               Dedede.NSP_SWALLOW,                0x00000000)// 0x1C000000)
    Character.edit_action_parameters(CBDEDEDE, Action.NSP_IDLE_GROUND,    File.DEDEDE_NSP_INHALED_IDLE,       Dedede.NSP_SWALLOW,                0x00000000)// 0x0C000000)
    Character.edit_action_parameters(CBDEDEDE, Action.NSP_SPIT_GROUND,    File.DEDEDE_NSP_SPIT,               Dedede.NSP_SPIT,                   0x40000000)// 0x4C000000)
    Character.edit_action_parameters(CBDEDEDE, Action.NSP_TURN_GROUND,    File.DEDEDE_TURN,      			    Dedede.NSP_HOLD,                 0x00000000)





   // Modify Actions            // Action                   // Staling ID    // Main ASM                     // Interrupt/Other ASM          // Movement/Physics ASM         // Collision ASM
    Character.edit_action(CBDEDEDE, Action.JUMP_2,              -1,              0x8013FB00,                   0x8013FB2C,                      0x8013FC4C,                     0x800DE978)
    Character.edit_action(CBDEDEDE, Action.JUMP_3,              -1,              0x8013FB00,                   0x8013FB2C,                      0x8013FC4C,                     0x800DE978)
    Character.edit_action(CBDEDEDE, Action.JUMP_4,              -1,              0x8013FB00,                   0x8013FB2C,                      0x8013FC4C,                     0x800DE978)
    Character.edit_action(CBDEDEDE, Action.JUMP_5,              -1,              0x8013FB00,                   0x8013FB2C,                      0x8013FC4C,                     0x800DE978)
    Character.edit_action(CBDEDEDE, Action.JUMP_6,              -1,              0x8013FB00,                   0x8013FB2C,                      0x8013FC4C,                     0x800DE978)
    Character.edit_action(CBDEDEDE, Action.USP_BEGIN,           0x11,            DededeUSP.begin_main_,        0,                               DededeUSP.begin_physics_,       DededeUSP.begin_collision_)
    Character.edit_action(CBDEDEDE, Action.USP_MOVE,            0x11,            0x00000000,                   DededeUSP.move_cancel_,          DededeUSP.move_physics_,        DededeUSP.move_collision_)
    Character.edit_action(CBDEDEDE, Action.USP_LAND,            0x11,            DededeUSP.landing_main_,      0,                               0x800D8BB4,                     0x800DDEE8)
    Character.edit_action(CBDEDEDE, Action.USP_CANCEL,          0x11,            DededeUSP.cancel_main_,       0,                               0x800D90E0,                     DededeUSP.cancel_collision_)
    Character.edit_action(CBDEDEDE, Action.NSP_BEGIN_GROUND,    0x12,            DededeNSP.ground_begin_main_, 0,                               0x800D8BB4,                     0x80162750)
    Character.edit_action(CBDEDEDE, Action.NSP_LOOP_GROUND,     0x12,            0x8016201C,                   0x80162468,                      0x800D8BB4,                     DededeNSP.inhale_loop_ground_to_air_check_)
    Character.edit_action(CBDEDEDE, Action.NSP_PULL_GROUND,     0x12,            0x80162078,                   0,                               0x800D8BB4,                     0x801627BC)
    Character.edit_action(CBDEDEDE, Action.NSP_SWALLOW_GROUND,  0x12,            0x80162214,                   0,                               0x800D8BB4,                     0x801627E0)
    Character.edit_action(CBDEDEDE, Action.NSP_IDLE_GROUND,     0x12,                     0,                   DededeNSP.ground_idle_interrupt_, 0x800D8BB4,                     0x80162828)
    Character.edit_action(CBDEDEDE, Action.NSP_SPIT_GROUND,     0x12,            DededeNSP.ground_spit_main_,                   0,                               0x800D8C14,                     0x80162804)
    Character.edit_action(CBDEDEDE, Action.NSP_TURN_GROUND,     0x12,            0x801621CC,                   0,                               0x800D8BB4,                     0x8016284C)



//    // Modify Menu Action Parameters             // Action      // Animation                  // Moveset Data             // Flags

    Character.edit_menu_action_parameters(CBDEDEDE, 0x0,           File.DEDEDE_IDLE,              Dedede.IDLE,                       -1)
    Character.edit_menu_action_parameters(CBDEDEDE, 0x1,           File.DEDEDE_VICTORY_1,         0x80000000,                 -1)
    Character.edit_menu_action_parameters(CBDEDEDE, 0x2,           File.DEDEDE_VICTORY_3,         Dedede.VICTORY_3,                  -1)
    Character.edit_menu_action_parameters(CBDEDEDE, 0x3,           File.DEDEDE_VICTORY_2,         Dedede.VICTORY_2,                  -1)
    Character.edit_menu_action_parameters(CBDEDEDE, 0x4,           File.DEDEDE_VICTORY_1,         0x80000000,                 -1)
    Character.edit_menu_action_parameters(CBDEDEDE, 0x5,           File.DEDEDE_CLAP,              Dedede.CLAP,                       -1)
    Character.edit_menu_action_parameters(CBDEDEDE, 0xD,           File.DEDEDE_1P_POSE,           0x80000000,                 -1)
    Character.edit_menu_action_parameters(CBDEDEDE, 0xE,           File.DEDEDE_CPU_POSE,          0x80000000,                 -1)
    Character.edit_menu_action_parameters(CBDEDEDE, 0x9,           File.DEDEDE_PUPPET_FALL,       -1,                         -1)
    Character.edit_menu_action_parameters(CBDEDEDE, 0xA,           File.DEDEDE_PUPPET_UP,         -1,                         -1)


//    // Add Action Parameters                // Action Name             // Base Action  // Animation                 // Moveset Data            // Flags
    Character.add_new_action_params(CBDEDEDE, DEDEDE_NSP_END_GROUND,       -1,             File.DEDEDE_NSP_END,          0x80000000,                  0)
    Character.add_new_action_params(CBDEDEDE, DEDEDE_NSP_BEGIN_AIR,        -1,             File.DEDEDE_NSP_BEGIN,        Dedede.NSP_BEGIN,                 0)
    Character.add_new_action_params(CBDEDEDE, DEDEDE_NSP_LOOP_AIR,         -1,             File.DEDEDE_NSP_LOOP,         Dedede.NSP_INHALE,                 0)
    Character.add_new_action_params(CBDEDEDE, DEDEDE_NSP_PULL_AIR,         -1,             File.DEDEDE_NSP_LOOP,         0x80000000,                 0)
    Character.add_new_action_params(CBDEDEDE, DEDEDE_NSP_SWALLOW_AIR,      -1,             File.DEDEDE_NSP_PULL,         Dedede.NSP_SWALLOW,               0)
    Character.add_new_action_params(CBDEDEDE, DEDEDE_NSP_FALL,             -1,             File.DEDEDE_NSP_INHALED_IDLE, Dedede.NSP_SWALLOW,                0)
    Character.add_new_action_params(CBDEDEDE, DEDEDE_NSP_SPIT_AIR,         -1,             File.DEDEDE_NSP_SPIT,         Dedede.NSP_SPIT,                  0x40000000)
    Character.add_new_action_params(CBDEDEDE, DEDEDE_NSP_TURN_AIR,         -1,             File.DEDEDE_TURN,             Dedede.NSP_HOLD,                0)
    Character.add_new_action_params(CBDEDEDE, DEDEDE_NSP_END_AIR,          -1,             File.DEDEDE_NSP_END,          0x80000000,                0)
    Character.add_new_action_params(CBDEDEDE, DEDEDE_DSPG_BEGIN,           -1,             File.DEDEDE_DSP_BEGIN,         Dedede.DSP_BEGIN,                 0)
    Character.add_new_action_params(CBDEDEDE, DEDEDE_DSPG_CHARGE,          -1,             File.DEDEDE_DSP_CHARGE,        Dedede.DSP_CHARGE,                0)
    Character.add_new_action_params(CBDEDEDE, DEDEDE_DSPG_SHOOT,           -1,             File.DEDEDE_DSP_SHOOT,         Dedede.DSP_SHOOT,                 0)
    Character.add_new_action_params(CBDEDEDE, DEDEDE_DSPA_BEGIN,           -1,             File.DEDEDE_DSP_BEGIN,         Dedede.DSP_BEGIN,                 0)
    Character.add_new_action_params(CBDEDEDE, DEDEDE_DSPA_CHARGE,          -1,             File.DEDEDE_DSP_CHARGE,        Dedede.DSP_CHARGE,                0)
    Character.add_new_action_params(CBDEDEDE, DEDEDE_DSPA_SHOOT,           -1,             File.DEDEDE_DSP_SHOOT,         Dedede.DSP_SHOOT,                 0)
    Character.add_new_action_params(CBDEDEDE, DEDEDE_JAB_3,                -1,             File.DEDEDE_JAB_3,             Dedede.JAB_3,                     0x40000000)
    Character.add_new_action_params(CBDEDEDE, DEDEDE_NSP_WALK_1,           -1,             File.DEDEDE_NSP_INHALED_WALK,  0x80000000,                0)
    Character.add_new_action_params(CBDEDEDE, DEDEDE_NSP_WALK_2,           -1,             File.DEDEDE_NSP_INHALED_WALK,  0x80000000,                0)
    Character.add_new_action_params(CBDEDEDE, DEDEDE_NSP_WALK_3,           -1,             File.DEDEDE_NSP_INHALED_WALK,  0x80000000,                0)
    Character.add_new_action_params(CBDEDEDE, DEDEDE_USP_CEILING_BONK,     -1,             File.DEDEDE_USP_CEILING_BONK,  Dedede.USP_BONK,                  0)
    Character.add_new_action_params(CBDEDEDE, DEDEDE_STARRING_RIGHT,       -1,             File.DEDEDE_STARRING_RIGHT,    Dedede.STARRING,                  0x40000000)
    Character.add_new_action_params(CBDEDEDE, DEDEDE_STARRING_LEFT,        -1,             File.DEDEDE_STARRING_LEFT,     Dedede.STARRING,                  0x40000000)

    // Add Actions                    // Action Name             // Base Action //Parameters                                // Staling ID    // Main ASM            // Interrupt/Other ASM                  // Movement/Physics ASM     // Collision ASM
    Character.add_new_action(CBDEDEDE, DEDEDE_NSP_END_GROUND,      -1,           ActionParams.DEDEDE_NSP_END_GROUND,          0x12,            0x800D94C4,            0,                                      0x800D8BB4,                 0x80162798)
    Character.add_new_action(CBDEDEDE, DEDEDE_NSP_BEGIN_AIR,       -1,           ActionParams.DEDEDE_NSP_BEGIN_AIR,           0x12,            DededeNSP.air_begin_main_,            0,                       0x800D91EC,                 0x80162894)
    Character.add_new_action(CBDEDEDE, DEDEDE_NSP_LOOP_AIR,        -1,           ActionParams.DEDEDE_NSP_LOOP_AIR,            0x12,            0x8016201C,            0x80162498,                             0x800D91EC,                 DededeNSP.inhale_loop_air_to_ground_check_)
    Character.add_new_action(CBDEDEDE, DEDEDE_NSP_PULL_AIR,        -1,           ActionParams.DEDEDE_NSP_PULL_AIR,            0x12,            0x80162078,            0,                                      0x800D91EC,                 0x80162900)
    Character.add_new_action(CBDEDEDE, DEDEDE_NSP_SWALLOW_AIR,     -1,           ActionParams.DEDEDE_NSP_SWALLOW_AIR,         0x12,            0x80162214,            0,                                      0x800D91EC,                 0x80162924)
    Character.add_new_action(CBDEDEDE, DEDEDE_NSP_FALL,            -1,           ActionParams.DEDEDE_NSP_FALL,                0x12,                     0,            DededeNSP.air_fall_interrupt_,          0x800D91EC,                 0x8016296C) // original physics was 0x801626C0
    Character.add_new_action(CBDEDEDE, DEDEDE_NSP_SPIT_AIR,        -1,           ActionParams.DEDEDE_NSP_SPIT_AIR,            0x12,            DededeNSP.air_spit_main_, 0,                                   0x800D93E4,                 0x80162948)
    Character.add_new_action(CBDEDEDE, DEDEDE_NSP_TURN_AIR,        -1,           ActionParams.DEDEDE_NSP_TURN_AIR,            0x12,            0x801621F0,            0,                                      0x800D91EC,                 0x80162990) // original physics was 0x801626C0
    Character.add_new_action(CBDEDEDE, DEDEDE_NSP_END_AIR,         -1,           ActionParams.DEDEDE_NSP_END_AIR,             0x12,            0x800D94E8,            0,                                      0x800D91EC,                 0x801628DC)
    Character.add_new_action(CBDEDEDE, DEDEDE_DSPG_BEGIN,          -1,           ActionParams.DEDEDE_DSPG_BEGIN,              0x13,            DededeDSP.begin_main_,  0,                                     0x800D8CCC,                 DededeDSP.ground_begin_collision_)
    Character.add_new_action(CBDEDEDE, DEDEDE_DSPG_CHARGE,         -1,           ActionParams.DEDEDE_DSPG_CHARGE,             0x13,            DededeDSP.charge_main_, DededeDSP.ground_charge_interrupt_,    0x800D8CCC,                 DededeDSP.ground_charge_collision_)
    Character.add_new_action(CBDEDEDE, DEDEDE_DSPG_SHOOT,          -1,           ActionParams.DEDEDE_DSPG_SHOOT,              0x13,            DededeDSP.shoot_main_,  0,                                     0x800D8CCC,                 DededeDSP.ground_shoot_collision_)
    Character.add_new_action(CBDEDEDE, DEDEDE_DSPA_BEGIN,          -1,           ActionParams.DEDEDE_DSPA_BEGIN,              0x13,            DededeDSP.begin_main_,  0,                                     0x800D90E0,                 DededeDSP.air_begin_collision_)
    Character.add_new_action(CBDEDEDE, DEDEDE_DSPA_CHARGE,         -1,           ActionParams.DEDEDE_DSPA_CHARGE,             0x13,            DededeDSP.charge_main_, DededeDSP.air_charge_interrupt_,       0x800D90E0,                 DededeDSP.air_charge_collision_)
    Character.add_new_action(CBDEDEDE, DEDEDE_DSPA_SHOOT,          -1,           ActionParams.DEDEDE_DSPA_SHOOT,              0x13,            DededeDSP.shoot_main_,  0,                                     0x800D90E0,                 DededeDSP.air_shoot_collision_)
    Character.add_new_action(CBDEDEDE, DEDEDE_JAB_3,               -1,           ActionParams.DEDEDE_JAB_3,                   0x3,             0x800D94C4,             0x00000000,                            0x800D8C14,                                     0x800DDF44)
    Character.add_new_action(CBDEDEDE, DEDEDE_NSP_WALK_1,          -1,           ActionParams.DEDEDE_NSP_WALK_1,              0x12,            0,            			 DededeNSP.ground_walk_interrupt_,       0x8013E548,                 DededeNSP.ground_walk_collision_)
    Character.add_new_action(CBDEDEDE, DEDEDE_NSP_WALK_2,          -1,           ActionParams.DEDEDE_NSP_WALK_2,              0x12,            0,            			 DededeNSP.ground_walk_interrupt_,       0x8013E548,                 DededeNSP.ground_walk_collision_)
    Character.add_new_action(CBDEDEDE, DEDEDE_NSP_WALK_3,          -1,           ActionParams.DEDEDE_NSP_WALK_3,              0x12,            0,            			 DededeNSP.ground_walk_interrupt_,       0x8013E548,                 DededeNSP.ground_walk_collision_)
    Character.add_new_action(CBDEDEDE, DEDEDE_USP_CEILING_BONK,    -1,           ActionParams.DEDEDE_USP_CEILING_BONK,        0x12,            DededeUSP.ceiling_bonk_main_, 0x00000000,                      0x00000000,                 DededeUSP.ceiling_bonk_collision_)
    Character.add_new_action(CBDEDEDE, DEDEDE_STARRING_RIGHT,      -1,           ActionParams.DEDEDE_STARRING_RIGHT,          0x0,             0x8013DA94,            0x00000000,                             0x8013DB2C,                 0x800DE348)
    Character.add_new_action(CBDEDEDE, DEDEDE_STARRING_LEFT,       -1,           ActionParams.DEDEDE_STARRING_LEFT,           0x0,             0x8013DA94,            0x00000000,                             0x8013DB2C,                 0x800DE348)

    Character.table_patch_start(variant_original, Character.id.CBDEDEDE, 0x4)
    dw      Character.id.DEDEDE
    OS.patch_end()

	// Set action strings
    // Character.table_patch_start(action_string, Character.id.CBDEDEDE, 0x4)
    // dw  Dedede.Action.action_string_table
    // OS.patch_end()
	// Set action strings
    Character.table_patch_start(action_string, Character.id.CBDEDEDE, 0x4)
    dw  Action.action_string_table
    OS.patch_end()

	// Set Special Actions
    Character.table_patch_start(air_usp, Character.id.CBDEDEDE, 0x4)
    dw      DededeUSP.begin_initial_
    OS.patch_end()
    Character.table_patch_start(ground_usp, Character.id.CBDEDEDE, 0x4)
    dw      DededeUSP.begin_initial_
    OS.patch_end()

    Character.table_patch_start(ground_dsp, Character.id.CBDEDEDE, 0x4)
    dw      DededeDSP.ground_begin_initial_
    OS.patch_end()

    Character.table_patch_start(air_dsp, Character.id.CBDEDEDE, 0x4)
    dw      DededeDSP.air_begin_initial_
    OS.patch_end()

    Character.table_patch_start(ground_nsp, Character.id.CBDEDEDE, 0x4)
    dw      DededeNSP.ground_begin_initial_
    OS.patch_end()

    Character.table_patch_start(air_nsp, Character.id.CBDEDEDE, 0x4)
    dw      DededeNSP.air_begin_initial_
    OS.patch_end()


	// Set grounded script to none (copied it from Mewtwo)
    Character.table_patch_start(grounded_script, Character.id.CBDEDEDE, 0x4)
    dw  0x800DE44C
    OS.patch_end()

    // Set menu zoom size.
    Character.table_patch_start(menu_zoom, Character.id.CBDEDEDE, 0x4)
    float32 0.85
    OS.patch_end()

    // Patches for full charge DSP effect removal.
    Character.table_patch_start(gfx_routine_end, Character.id.CBDEDEDE, 0x4)
    dw      Dedede.charge_gfx_routine_
    OS.patch_end()

    // Set crowd chant FGM.
    Character.table_patch_start(crowd_chant_fgm, Character.id.CBDEDEDE, 0x2)
    dh  0x438
    OS.patch_end()

	// Set Kirby star damage
    Character.table_patch_start(kirby_inhale_struct, 0x8, Character.id.CBDEDEDE, 0xC)
    dw Character.kirby_inhale_struct.star_damage.DK
    OS.patch_end()

    // Set Kirby hat_id
    Character.table_patch_start(kirby_inhale_struct, 0x2, Character.id.CBDEDEDE, 0xC)
    dh 0x20
    OS.patch_end()

    // Set Yoshi Egg Size override ID, these values are just copied from DK
    Character.table_patch_start(yoshi_egg, Character.id.CBDEDEDE, 0x1C)
    dw  0x40600000
	dw	0x00000000
	dw	0x43660000
	dw	0x00000000
	dw	0x43750000
	dw	0x43750000
	dw	0x43750000
    OS.patch_end()

    Character.table_patch_start(jab_3_action, Character.id.CBDEDEDE, 0x4)
    dw Dedede.set_jab_3_action_                    // subroutine which sets action id
    OS.patch_end()

    Character.table_patch_start(jab_3, Character.id.CBDEDEDE, 0x4)
    dw Character.jab_3.ENABLED              // jab 3 = ENABLED
    OS.patch_end()

    Character.table_patch_start(rapid_jab, Character.id.CBDEDEDE, 0x4)
    dw      Character.rapid_jab.DISABLED        // disable rapid jab
    OS.patch_end()

    // Use Kirby Entry
    Character.table_patch_start(entry_action, Character.id.CBDEDEDE, 0x8)
    dw Dedede.Action.DEDEDE_STARRING_RIGHT, Dedede.Action.DEDEDE_STARRING_LEFT
    OS.patch_end()
    Character.table_patch_start(entry_script, Character.id.CBDEDEDE, 0x4)
    dw 0x8013DCF4                           // kirby entry
    OS.patch_end()

    // Set default costumes
    Character.set_default_costumes(Character.id.CBDEDEDE, 0, 1, 2, 5, 0, 3, 4)
    Teams.add_team_costume(YELLOW, CBDEDEDE, 0x2)

    // Set default costume shield colors
    Character.set_costume_shield_colors(CBDEDEDE, BROWN, PINK, ORANGE, BLUE, GREEN, WHITE, NA, NA)

	Character.table_patch_start(initial_script, Character.id.CBDEDEDE, 0x4)
	dw		Dedede.initial_script_
	OS.patch_end()

    // Set Magnifying Glass Scale Override
    Character.table_patch_start(magnifying_glass_zoom, Character.id.CBDEDEDE, 0x2)
    dh  0x005E
    OS.patch_end()

    // Set Remix 1P ending music
    Character.table_patch_start(remix_1p_end_bgm, Character.id.CBDEDEDE, 0x2)
    dh {MIDI.id.DEDEDE}
    OS.patch_end()

	constant jump_decay(0x42A0)				// same as Kirbys

	jump_multiplier_table:
	dw		0.0		// na
	dw		0.0		// na
	float32 68		// jump 3
	float32 58		// jump 4
	float32 52		// jump 5
	float32 0		// jump 6 (unused)
    
	constant INITIAL_ABSORB_TIME(250)	// Kirbys time / 2
}