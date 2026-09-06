scope boshi_costumes {
    // @ Description
    // Number of additional costumes
    constant NUM_EXTRA_COSTUMES(4)

    // @ Description
    // Number of parts
    constant NUM_PARTS(0x1C)

    // @ Description
    // Number of original costumes
    constant NUM_COSTUMES(6)

    parts_table:
    constant PARTS_TABLE_ORIGIN(origin())
    db NUM_EXTRA_COSTUMES       // 0x0 - number of extra costumes
    db 0x3                      // 0x1 - special part ID
    db 0x0                      // 0x2 - special part image index start
    db 0x0                      // 0x3 - costumes to skip
    fill 4 + (NUM_PARTS - 1) * 8

    Costumes.define_part(1, 4, Costumes.part_type.PRIM_COLOR)                                                // part 0x1_0 - hindquarters
    Costumes.add_part_image(1, 1, Costumes.part_type.PALETTE)                                                // part 0x1_1 - hindquarters
    Costumes.add_part_image(1, 2, Costumes.part_type.PALETTE)                                                // part 0x1_2 - hindquarters
    Costumes.add_part_image(1, 3, Costumes.part_type.PALETTE)                                                // part 0x1_3 - hindquarters
    // Costumes.define_part(2, 1, Costumes.part_type.PRIM_COLOR)                                                // part 0x2_0 - neck
    Costumes.define_part(2, 1, Costumes.part_type.PALETTE)                                                // part 0x2_0 - neck
    Costumes.define_part(3, 5, Costumes.part_type.PALETTE | Costumes.part_type.PRIM_COLOR | Costumes.part_type.TEXTURE_ARRAY) // part 0x3_0 - head
    Costumes.add_part_image(3, 1, Costumes.part_type.PALETTE | Costumes.part_type.TEXTURE_ARRAY)             // part 0x3_1 - head
    Costumes.add_part_image(3, 2, Costumes.part_type.PRIM_COLOR | Costumes.part_type.PALETTE)                // part 0x3_2 - head
    Costumes.add_part_image(3, 3, Costumes.part_type.PRIM_COLOR)                                             // part 0x3_3 - head
    Costumes.add_part_image(3, 4, Costumes.part_type.PALETTE)                                                // part 0x3_4 - head
    Costumes.define_part(7, 1, Costumes.part_type.PRIM_COLOR)                                                // part 0x7_0 - left bicep
    Costumes.define_part(8, 1, Costumes.part_type.PRIM_COLOR)                                                // part 0x8_0 - left forearm
    Costumes.define_part(9, 1, Costumes.part_type.PRIM_COLOR)                                                // part 0x9_0 - left hand
    Costumes.define_part(B, 1, Costumes.part_type.PRIM_COLOR)                                                // part 0xB_0 - right bicep
    Costumes.define_part(C, 1, Costumes.part_type.PRIM_COLOR)                                                // part 0xC_0 - right forearm
    Costumes.define_part(D, 1, Costumes.part_type.PRIM_COLOR)                                                // part 0xD_0 - right hand
    Costumes.define_part(F, 1, Costumes.part_type.PRIM_COLOR)                                                // part 0xF_0 - tail anterior
    Costumes.define_part(10, 1, Costumes.part_type.PRIM_COLOR)                                               // part 0x10_0 - tail posterior
    Costumes.define_part(12, 1, Costumes.part_type.PRIM_COLOR)                                               // part 0x12_0 - left thigh
    Costumes.define_part(13, 2, Costumes.part_type.PRIM_COLOR)                                               // part 0x13_0 - left calf
    Costumes.add_part_image(13, 1, Costumes.part_type.DIFFUSE_AMBIENT_COLORS)                                // part 0x13_1 - left calf
    // Costumes.define_part(15, 1, Costumes.part_type.DIFFUSE_AMBIENT_COLORS)                                // part 0x13_1 - left calf
    Costumes.define_part(15, 1, Costumes.part_type.PALETTE)                                                  // part 0x15_0 - left foot
    Costumes.define_part(17, 1, Costumes.part_type.PRIM_COLOR)                                               // part 0x17_0 - right thigh
    Costumes.define_part(18, 2, Costumes.part_type.PRIM_COLOR)                                               // part 0x18_0 - right calf
    Costumes.add_part_image(18, 1, Costumes.part_type.DIFFUSE_AMBIENT_COLORS)                                // part 0x18_1 - right calf
    // Costumes.define_part(1A, 1, Costumes.part_type.DIFFUSE_AMBIENT_COLORS)                                   // part 0x1A_0 - right foot
    Costumes.define_part(1A, 1, Costumes.part_type.PALETTE)                                                  // part 0x1A_0 - right foot

    // Register extra costumes
    Costumes.register_extra_costumes_for_char(Character.id.BOSHI)

    // Costume 0x6
    // Black Boshi
    scope costume_6 {
        constant PRIM_COLOR_1(0x383838FF)
        constant PRIM_COLOR_2(0x383838FF)
        diffuse_ambient_pair:; dw 0xFF006BFF, 0x333333FF
        palette_1:; insert "Boshi/cos_6_1.bin"
        palette_2:; insert "Boshi/cos_6_2.bin"
        palette_feet:; insert "Boshi/cos_6_feet.bin"
        palette_torso:; insert "Boshi/cos_6_torso.bin"

        Costumes.set_prim_color_for_part(0, 1, 0, PRIM_COLOR_1)
        Costumes.set_palette_for_part(0, 1, 1, palette_1)
        Costumes.set_palette_for_part(0, 1, 2, palette_2)
        Costumes.set_palette_for_part(0, 1, 3, palette_2)
        // Costumes.set_prim_color_for_part(0, 2, 0, PRIM_COLOR_1)
        Costumes.set_palette_for_part(0, 2, 0, palette_torso)
        Costumes.set_prim_color_for_part(0, 3, 0, PRIM_COLOR_1)
        Costumes.set_palette_for_part(0, 3, 0, palette_1)
        Costumes.set_palette_for_part(0, 3, 1, palette_1)
        Costumes.set_prim_color_for_part(0, 3, 2, PRIM_COLOR_1)
        Costumes.set_palette_for_part(0, 3, 2, palette_1)
        Costumes.set_prim_color_for_part(0, 3, 3, PRIM_COLOR_1)
        Costumes.set_palette_for_part(0, 3, 4, palette_1)
        Costumes.set_prim_color_for_part(0, 7, 0, PRIM_COLOR_1)
        Costumes.set_prim_color_for_part(0, 8, 0, PRIM_COLOR_2)
        Costumes.set_prim_color_for_part(0, 9, 0, PRIM_COLOR_1)
        Costumes.set_prim_color_for_part(0, B, 0, PRIM_COLOR_1)
        Costumes.set_prim_color_for_part(0, C, 0, PRIM_COLOR_1)
        Costumes.set_prim_color_for_part(0, D, 0, PRIM_COLOR_1)
        Costumes.set_prim_color_for_part(0, F, 0, PRIM_COLOR_2)
        Costumes.set_prim_color_for_part(0, 10, 0, PRIM_COLOR_2)
        Costumes.set_prim_color_for_part(0, 12, 0, PRIM_COLOR_2)
        Costumes.set_prim_color_for_part(0, 13, 0, PRIM_COLOR_2)
        Costumes.set_diffuse_ambient_colors_for_part(0, 13, 1, diffuse_ambient_pair)
        // Costumes.set_diffuse_ambient_colors_for_part(0, 15, 0, diffuse_ambient_pair)
        Costumes.set_palette_for_part(0, 15, 0, palette_feet)
        Costumes.set_prim_color_for_part(0, 17, 0, PRIM_COLOR_2)
        Costumes.set_prim_color_for_part(0, 18, 0, PRIM_COLOR_2)
        Costumes.set_diffuse_ambient_colors_for_part(0, 18, 1, diffuse_ambient_pair)
        // Costumes.set_diffuse_ambient_colors_for_part(0, 1A, 0, diffuse_ambient_pair)
        Costumes.set_palette_for_part(0, 1A, 0, palette_feet)

        Costumes.set_stock_icon_palette_for_costume(0, Boshi/cos_6_stock_icon.bin)
    }

    // Costume 0x7
    // Light green Boshi
    scope costume_7 {
        constant PRIM_COLOR_1(0x77FF88FF)
        constant PRIM_COLOR_2(0x77FF88FF)
        diffuse_ambient_pair:; dw 0x66FF11FF, 0x337733FF
        palette_1:; insert "Boshi/cos_7_1.bin"
        palette_2:; insert "Boshi/cos_7_2.bin"
        palette_feet:; insert "Boshi/cos_7_feet.bin"
        palette_torso:; insert "Boshi/cos_7_torso.bin"

        Costumes.set_prim_color_for_part(1, 1, 0, PRIM_COLOR_1)
        Costumes.set_palette_for_part(1, 1, 1, palette_1)
        Costumes.set_palette_for_part(1, 1, 2, palette_2)
        Costumes.set_palette_for_part(1, 1, 3, palette_2)
        // Costumes.set_prim_color_for_part(1, 2, 0, PRIM_COLOR_1)
        Costumes.set_palette_for_part(1, 2, 0, palette_torso)
        Costumes.set_prim_color_for_part(1, 3, 0, PRIM_COLOR_1)
        Costumes.set_palette_for_part(1, 3, 0, palette_1)
        Costumes.set_palette_for_part(1, 3, 1, palette_1)
        Costumes.set_prim_color_for_part(1, 3, 2, PRIM_COLOR_1)
        Costumes.set_palette_for_part(1, 3, 2, palette_1)
        Costumes.set_prim_color_for_part(1, 3, 3, PRIM_COLOR_1)
        Costumes.set_palette_for_part(1, 3, 4, palette_1)
        Costumes.set_prim_color_for_part(1, 7, 0, PRIM_COLOR_1)
        Costumes.set_prim_color_for_part(1, 8, 0, PRIM_COLOR_2)
        Costumes.set_prim_color_for_part(1, 9, 0, PRIM_COLOR_1)
        Costumes.set_prim_color_for_part(1, B, 0, PRIM_COLOR_1)
        Costumes.set_prim_color_for_part(1, C, 0, PRIM_COLOR_1)
        Costumes.set_prim_color_for_part(1, D, 0, PRIM_COLOR_1)
        Costumes.set_prim_color_for_part(1, F, 0, PRIM_COLOR_2)
        Costumes.set_prim_color_for_part(1, 10, 0, PRIM_COLOR_2)
        Costumes.set_prim_color_for_part(1, 12, 0, PRIM_COLOR_2)
        Costumes.set_prim_color_for_part(1, 13, 0, PRIM_COLOR_2)
        Costumes.set_diffuse_ambient_colors_for_part(1, 13, 1, diffuse_ambient_pair)
        // Costumes.set_diffuse_ambient_colors_for_part(1, 15, 0, diffuse_ambient_pair)
        Costumes.set_palette_for_part(1, 15, 0, palette_feet)
        Costumes.set_prim_color_for_part(1, 17, 0, PRIM_COLOR_2)
        Costumes.set_prim_color_for_part(1, 18, 0, PRIM_COLOR_2)
        Costumes.set_diffuse_ambient_colors_for_part(1, 18, 1, diffuse_ambient_pair)
        // Costumes.set_diffuse_ambient_colors_for_part(1, 1A, 0, diffuse_ambient_pair)
        Costumes.set_palette_for_part(1, 1A, 0, palette_feet)

        Costumes.set_stock_icon_palette_for_costume(1, Boshi/cos_7_stock_icon.bin)
    }
	// Costume 0x8
    // Orange Boshi
    scope costume_8 {
        constant PRIM_COLOR_1(0xFF7000FF)
        constant PRIM_COLOR_2(0xFF7000FF)
        diffuse_ambient_pair:; dw 0x00007AFF, 0x222222FF
        palette_1:; insert "Boshi/cos_8_1.bin"
        palette_2:; insert "Boshi/cos_8_2.bin"
        palette_feet:; insert "Boshi/cos_8_feet.bin"
        palette_torso:; insert "Boshi/cos_8_torso.bin"

        Costumes.set_prim_color_for_part(2, 1, 0, PRIM_COLOR_1)
        Costumes.set_palette_for_part(2, 1, 1, palette_2)
        Costumes.set_palette_for_part(2, 1, 2, palette_2)
        Costumes.set_palette_for_part(2, 1, 3, palette_2)
        // Costumes.set_prim_color_for_part(2, 2, 0, PRIM_COLOR_1)
        Costumes.set_palette_for_part(2, 2, 0, palette_torso)
        Costumes.set_prim_color_for_part(2, 3, 0, PRIM_COLOR_1)
        Costumes.set_palette_for_part(2, 3, 0, palette_1)
        Costumes.set_palette_for_part(2, 3, 1, palette_1)
        Costumes.set_prim_color_for_part(2, 3, 2, PRIM_COLOR_1)
        Costumes.set_palette_for_part(2, 3, 2, palette_1)
        Costumes.set_prim_color_for_part(2, 3, 3, PRIM_COLOR_1)
        Costumes.set_palette_for_part(2, 3, 4, palette_1)
        Costumes.set_prim_color_for_part(2, 7, 0, PRIM_COLOR_1)
        Costumes.set_prim_color_for_part(2, 8, 0, PRIM_COLOR_2)
        Costumes.set_prim_color_for_part(2, 9, 0, PRIM_COLOR_1)
        Costumes.set_prim_color_for_part(2, B, 0, PRIM_COLOR_1)
        Costumes.set_prim_color_for_part(2, C, 0, PRIM_COLOR_1)
        Costumes.set_prim_color_for_part(2, D, 0, PRIM_COLOR_1)
        Costumes.set_prim_color_for_part(2, F, 0, PRIM_COLOR_2)
        Costumes.set_prim_color_for_part(2, 10, 0, PRIM_COLOR_2)
        Costumes.set_prim_color_for_part(2, 12, 0, PRIM_COLOR_2)
        Costumes.set_prim_color_for_part(2, 13, 0, PRIM_COLOR_2)
        Costumes.set_diffuse_ambient_colors_for_part(2, 13, 1, diffuse_ambient_pair)
        // Costumes.set_diffuse_ambient_colors_for_part(2, 15, 0, diffuse_ambient_pair)
        Costumes.set_palette_for_part(2, 15, 0, palette_feet)
        Costumes.set_prim_color_for_part(2, 17, 0, PRIM_COLOR_2)
        Costumes.set_prim_color_for_part(2, 18, 0, PRIM_COLOR_2)
        Costumes.set_diffuse_ambient_colors_for_part(2, 18, 1, diffuse_ambient_pair)
        // Costumes.set_diffuse_ambient_colors_for_part(2, 1A, 0, diffuse_ambient_pair)
        Costumes.set_palette_for_part(2, 1A, 0, palette_feet)

        Costumes.set_stock_icon_palette_for_costume(2, Boshi/cos_8_stock_icon.bin)
    }
	// Costume 0x9
    // Purple Boshi
    scope costume_9 {
        constant PRIM_COLOR_1(0x7021F7FF)
        constant PRIM_COLOR_2(0x7021F7FF)
        diffuse_ambient_pair:; dw 0x7F0007FF, 0x222222FF
        palette_1:; insert "Boshi/cos_9_1.bin"
        palette_2:; insert "Boshi/cos_9_1.bin"
        palette_feet:; insert "Boshi/cos_9_feet.bin"
        palette_torso:; insert "Boshi/cos_9_torso.bin"

        Costumes.set_prim_color_for_part(3, 1, 0, PRIM_COLOR_1)
        Costumes.set_palette_for_part(3, 1, 1, palette_1)
        Costumes.set_palette_for_part(3, 1, 2, palette_2)
        Costumes.set_palette_for_part(3, 1, 3, palette_2)
        // Costumes.set_prim_color_for_part(3, 2, 0, PRIM_COLOR_1)
        Costumes.set_palette_for_part(3, 2, 0, palette_torso)
        Costumes.set_prim_color_for_part(3, 3, 0, PRIM_COLOR_1)
        Costumes.set_palette_for_part(3, 3, 0, palette_1)
        Costumes.set_palette_for_part(3, 3, 1, palette_1)
        Costumes.set_prim_color_for_part(3, 3, 2, PRIM_COLOR_1)
        Costumes.set_palette_for_part(3, 3, 2, palette_1)
        Costumes.set_prim_color_for_part(3, 3, 3, PRIM_COLOR_1)
        Costumes.set_palette_for_part(3, 3, 4, palette_1)
        Costumes.set_prim_color_for_part(3, 7, 0, PRIM_COLOR_1)
        Costumes.set_prim_color_for_part(3, 8, 0, PRIM_COLOR_2)
        Costumes.set_prim_color_for_part(3, 9, 0, PRIM_COLOR_1)
        Costumes.set_prim_color_for_part(3, B, 0, PRIM_COLOR_1)
        Costumes.set_prim_color_for_part(3, C, 0, PRIM_COLOR_1)
        Costumes.set_prim_color_for_part(3, D, 0, PRIM_COLOR_1)
        Costumes.set_prim_color_for_part(3, F, 0, PRIM_COLOR_2)
        Costumes.set_prim_color_for_part(3, 10, 0, PRIM_COLOR_2)
        Costumes.set_prim_color_for_part(3, 12, 0, PRIM_COLOR_2)
        Costumes.set_prim_color_for_part(3, 13, 0, PRIM_COLOR_2)
        Costumes.set_diffuse_ambient_colors_for_part(3, 13, 1, diffuse_ambient_pair)
        // Costumes.set_diffuse_ambient_colors_for_part(3, 15, 0, diffuse_ambient_pair)
        Costumes.set_palette_for_part(3, 15, 0, palette_feet)
        Costumes.set_prim_color_for_part(3, 17, 0, PRIM_COLOR_2)
        Costumes.set_prim_color_for_part(3, 18, 0, PRIM_COLOR_2)
        Costumes.set_diffuse_ambient_colors_for_part(3, 18, 1, diffuse_ambient_pair)
        // Costumes.set_diffuse_ambient_colors_for_part(3, 1A, 0, diffuse_ambient_pair)
        Costumes.set_palette_for_part(3, 1A, 0, palette_feet)

        Costumes.set_stock_icon_palette_for_costume(3, Boshi/cos_9_stock_icon.bin)
    }
}
