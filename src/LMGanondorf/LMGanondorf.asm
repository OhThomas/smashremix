// LMGanondorf.asm

// This file contains file inclusions, action edits, and assembly for LMGanondorf.

scope LMGanondorf {
    // Modify Action Parameters             // Action               // Animation                // Moveset Data             // Flags
    Character.edit_action_parameters(LMGND,   Action.Idle,            -1,                         Ganondorf.IDLE,                       -1)
    Character.edit_action_parameters(LMGND,   Action.ReviveWait,      -1,                         Ganondorf.IDLE,                       -1)
    Character.edit_action_parameters(LMGND,   Action.Run,             -1,                         Ganondorf.RUN,                        -1)
    Character.edit_action_parameters(LMGND,   Action.Teeter,          -1,                         Ganondorf.TEETER,                     -1)
    Character.edit_action_parameters(LMGND,   Action.JumpAerialF,     -1,                         Ganondorf.JUMP2,                      -1)
    Character.edit_action_parameters(LMGND,   Action.JumpAerialB,     -1,                         Ganondorf.JUMP2,                      -1)
    Character.edit_action_parameters(LMGND,   Action.DownBounceD,     -1,                         Ganondorf.DOWN_BOUNCE,                -1)
    Character.edit_action_parameters(LMGND,   Action.DownBounceU,     -1,                         Ganondorf.DOWN_BOUNCE,                -1)
    Character.edit_action_parameters(LMGND,   Action.DownStandD,      -1,                         Ganondorf.DOWN_STAND,                 -1)
    Character.edit_action_parameters(LMGND,   Action.DownStandU,      -1,                         Ganondorf.DOWN_STAND,                 -1)
    Character.edit_action_parameters(LMGND,   Action.TechF,           -1,                         Ganondorf.TECHROLL,                   -1)
    Character.edit_action_parameters(LMGND,   Action.TechB,           -1,                         Ganondorf.TECHROLL,                   -1)
    Character.edit_action_parameters(LMGND,   Action.Tech,            -1,                         Ganondorf.TECHSTAND,                  -1)
    Character.edit_action_parameters(LMGND,   Action.CliffAttackQuick2, -1,                       Ganondorf.EDGEATTACKF,                -1)
    Character.edit_action_parameters(LMGND,   Action.CliffAttackSlow2, -1,                        Ganondorf.EDGEATTACKS,                -1)
    Character.edit_action_parameters(LMGND,   Action.Taunt,           File.GND_TAUNT,             Ganondorf.TAUNT,                      -1)
    Character.edit_action_parameters(LMGND,   Action.ShieldBreak,     -1,                         Ganondorf.SHIELD_BREAK,               -1)
    Character.edit_action_parameters(LMGND,   Action.Stun,            -1,                         Ganondorf.STUN,                       -1)
    Character.edit_action_parameters(LMGND,   Action.Sleep,           -1,                         Ganondorf.SLEEP,                      -1)
    Character.edit_action_parameters(LMGND,   Action.Jab1,            -1,                         Ganondorf.JAB_1,                      -1)
    Character.edit_action_parameters(LMGND,   Action.DashAttack,      -1,                         Ganondorf.DASH_ATTACK,                -1)
    Character.edit_action_parameters(LMGND,   Action.FTiltHigh,       -1,                         Ganondorf.FTILT_HI,                   -1)
    Character.edit_action_parameters(LMGND,   Action.FTiltMidHigh,    -1,                         Ganondorf.FTILT_M_HI,                 -1)
    Character.edit_action_parameters(LMGND,   Action.FTilt,           -1,                         Ganondorf.FTILT,                      -1)
    Character.edit_action_parameters(LMGND,   Action.FTiltMidLow,     -1,                         Ganondorf.FTILT_M_LO,                 -1)
    Character.edit_action_parameters(LMGND,   Action.FTiltLow,        -1,                         Ganondorf.FTILT_LO,                   -1)
    Character.edit_action_parameters(LMGND,   Action.UTilt,           -1,                         Ganondorf.UTILT,                      -1)
    Character.edit_action_parameters(LMGND,   Action.DTilt,           -1,                         Ganondorf.DTILT,                      -1)
    Character.edit_action_parameters(LMGND,   Action.FSmashHigh,      0,                          0x80000000,                 0)
    Character.edit_action_parameters(LMGND,   Action.FSmash,          0x64E,                      Ganondorf.FSMASH,                     0)
    Character.edit_action_parameters(LMGND,   Action.FSmashLow,       0,                          0x80000000,                 0)
    Character.edit_action_parameters(LMGND,   Action.USmash,          File.GND_USMASH,            Ganondorf.USMASH,                     0)
    Character.edit_action_parameters(LMGND,   Action.DSmash,          File.GND_DSMASH,            Ganondorf.DSMASH,                     -1)
    Character.edit_action_parameters(LMGND,   Action.AttackAirN,      0x667,                      Ganondorf.NAIR,                       -1)
    Character.edit_action_parameters(LMGND,   Action.AttackAirF,      File.GND_FAIR,              Ganondorf.FAIR,                       -1)
    Character.edit_action_parameters(LMGND,   Action.AttackAirB,      -1,                         Ganondorf.BAIR,                       -1)
    Character.edit_action_parameters(LMGND,   Action.AttackAirU,      -1,                         Ganondorf.UAIR,                       -1)
    Character.edit_action_parameters(LMGND,   Action.AttackAirD,      -1,                         Ganondorf.DAIR,                       -1)
    Character.edit_action_parameters(LMGND,   Action.LandingAirN,     0x66B,                      0x1720,                     -1)
    Character.edit_action_parameters(LMGND,   Action.LandingAirF,     0,                          0x80000000,                 -1)
    Character.edit_action_parameters(LMGND,   0xE0,                   File.GND_ENTRY_1,           Ganondorf.ENTRY_1,                    0x40000000)
    Character.edit_action_parameters(LMGND,   0xE1,                   File.GND_ENTRY_1,           Ganondorf.ENTRY_1,                    0x40000000)
    Character.edit_action_parameters(LMGND,   0xE2,                   File.GND_ENTRY_2_LEFT,      Ganondorf.ENTRY_2,                    0x40000000)
    Character.edit_action_parameters(LMGND,   0xE3,                   File.GND_ENTRY_2_RIGHT,     Ganondorf.ENTRY_2,                    0x40000000)
    Character.edit_action_parameters(LMGND,   0xE4,                   -1,                         Ganondorf.NSP_GROUND,                 -1)
    Character.edit_action_parameters(LMGND,   0xE5,                   -1,                         Ganondorf.NSP_AIR,                    -1)
    Character.edit_action_parameters(LMGND,   0xE6,                   -1,                         Ganondorf.DSP_GROUND,                 -1)
    Character.edit_action_parameters(LMGND,   0xE7,                   -1,                         Ganondorf.DSP_FLIP,                   -1)
    Character.edit_action_parameters(LMGND,   0xE8,                   -1,                         Ganondorf.DSP_LAND,                   -1)
    Character.edit_action_parameters(LMGND,   0xE9,                   -1,                         Ganondorf.DSP_AIR,                    -1)
    Character.edit_action_parameters(LMGND,   0xEB,                   -1,                         Ganondorf.USP_GROUND,                 -1)
    Character.edit_action_parameters(LMGND,   0xEC,                   -1,                         Ganondorf.USP_GRAB,                   -1)
    Character.edit_action_parameters(LMGND,   0xED,                   -1,                         Ganondorf.USP_RELEASE,                -1)
    Character.edit_action_parameters(LMGND,   0xEE,                   -1,                         Ganondorf.USP_AIR,                    -1)

    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags
    Character.edit_menu_action_parameters(LMGND,   0x0,               -1,                         Ganondorf.IDLE,                       -1)
    Character.edit_menu_action_parameters(LMGND,   0x1,               -1,                         Ganondorf.VICTORY_POSE_1,             -1)
    Character.edit_menu_action_parameters(LMGND,   0x2,               File.GND_SELECT,            Ganondorf.VICTORY_POSE_2,             -1)
    Character.edit_menu_action_parameters(LMGND,   0x3,               File.GND_VICTORY1,          Ganondorf.VICTORY_POSE_3,             -1)
    Character.edit_menu_action_parameters(LMGND,   0x4,               File.GND_VICTORY1,          Ganondorf.VICTORY_POSE_3,             -1)
    Character.edit_menu_action_parameters(LMGND,   0xE,               File.GND_1P_CPU,            Ganondorf.ONEP,                       -1)
    Character.edit_menu_action_parameters(LMGND,   0xD,               File.GND_POSE_1P,           Ganondorf.ONEP,                       -1)

    // Setting original variant to Ganondorf
    Character.table_patch_start(variant_original, Character.id.LMGND, 0x4)
    dw      Character.id.GND
    OS.patch_end()

    // Set menu zoom size.
    Character.table_patch_start(menu_zoom, Character.id.LMGND, 0x4)
    float32 1.125
    OS.patch_end()

    // Remove entry script.
    Character.table_patch_start(entry_script, Character.id.LMGND, 0x4)
    dw 0x8013DD68                           // skips entry script
    OS.patch_end()

    // Set crowd chant FGM.
    Character.table_patch_start(crowd_chant_fgm, Character.id.LMGND, 0x2)
    dh  0x02EA
    OS.patch_end()

    // Set default costumes
    Character.set_default_costumes(Character.id.LMGND, 0, 1, 2, 3, 5, 1, 4)
    Teams.add_team_costume(YELLOW, LMGND, 0x6)

    // Shield colors for costume matching
    Character.set_costume_shield_colors(LMGND, BROWN, BLUE, AZURE, PURPLE, GREEN, RED, YELLOW, NA)

    // Set Kirby star damage
    Character.table_patch_start(kirby_inhale_struct, 0x8, Character.id.LMGND, 0xC)
    dw Character.kirby_inhale_struct.star_damage.DK
    OS.patch_end()

    // Set Kirby hat_id
    Character.table_patch_start(kirby_inhale_struct, 0x2, Character.id.LMGND, 0xC)
    dh 0x11
    OS.patch_end()

    // @ Description
    // Ganondorf's extra actions
    scope Action {
        //constant Jab3(0x0DC)
        //constant JabLoopStart(0x0DD)
        //constant JabLoop(0x0DE)
        //constant JabLoopEnd(0x0DF)
        constant AppearLeft1(0x0E0)
        constant AppearRight1(0x0E1)
        constant AppearLeft2(0x0E2)
        constant AppearRight2(0x0E3)
        constant WarlockPunch(0x0E4)
        constant WarlockPunchAir(0x0E5)
        constant WarlockKick(0x0E6)
        constant WarlockKickFromGroundAir(0x0E7)
        constant LandingWarlockKick(0x0E8)
        constant WarlockKickEnd(0x0E9)
        constant CollisionWarlockKick(0x0EA)
        constant WarlockDive(0x0EB)
        constant WarlockDiveCatch(0x0EC)
        constant WarlockDiveEnd1(0x0ED)
        constant WarlockDiveEnd2(0x0EE)

        // strings!
        //string_0x0DC:; String.insert("Jab3")
        //string_0x0DD:; String.insert("JabLoopStart")
        //string_0x0DE:; String.insert("JabLoop")
        //string_0x0DF:; String.insert("JabLoopEnd")
        string_0x0E0:; String.insert("AppearLeft1")
        string_0x0E1:; String.insert("AppearRight1")
        string_0x0E2:; String.insert("AppearLeft1")
        string_0x0E3:; String.insert("AppearRight2")
        string_0x0E4:; String.insert("WarlockPunch")
        string_0x0E5:; String.insert("WarlockPunchAir")
        string_0x0E6:; String.insert("WizardsFoot")
        string_0x0E7:; String.insert("WizardsFootFromGroundAir")
        string_0x0E8:; String.insert("LandingWizardsFoot")
        string_0x0E9:; String.insert("WizardsFootAir")
        string_0x0EA:; String.insert("WizardsFootRecoil")
        string_0x0EB:; String.insert("DarkDive")
        string_0x0EC:; String.insert("DarkDiveCatch")
        string_0x0ED:; String.insert("DarkDiveRelease")
        string_0x0EE:; String.insert("DarkDiveAir")

        action_string_table:
        dw 0
        dw 0
        dw 0
        dw 0
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
    }

    // Set action strings
    Character.table_patch_start(action_string, Character.id.LMGND, 0x4)
    dw  Action.action_string_table
    OS.patch_end()

    // Set Remix 1P ending music
    Character.table_patch_start(remix_1p_end_bgm, Character.id.LMGND, 0x2)
    dh {MIDI.id.GERUDO_VALLEY}
    OS.patch_end()

}
