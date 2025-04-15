    inc b                                         ; $0061: $04
    inc c
    jr jr_000_0066

jr_000_0065:
    ld [hl+], a

jr_000_0066:
    dec c
    jr nz, jr_000_0065

    dec b
    jr nz, jr_000_0065

    ret


    inc b
    inc c
    jr jr_000_0074

jr_000_0071:
    ld a, [hl+]
    ld [de], a
    inc de

jr_000_0074:
    dec c
    jr nz, jr_000_0071

    dec b
    jr nz, jr_000_0071

    ret


    inc b
    inc c
    jr jr_000_0084

jr_000_007f:
    ld a, [hl+]
    ld [de], a
    inc de
    ld [de], a
    inc de

jr_000_0084:
    dec c
    jr nz, jr_000_007f

    dec b
    jr nz, jr_000_007f

    ret


    inc b
    inc c
    jr jr_000_00a0

    db $f5

    di

jr_000_0091:
    ldh a, [rSTAT]
    and $03
    jr z, jr_000_0091

jr_000_0097:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_0097

    pop af
    ld [hl+], a
    ei

jr_000_00a0:
    dec c
    jr nz, @-$12

    dec b
    jr nz, @-$15

    ret


    inc b
    inc c
    jr jr_000_00bc

jr_000_00ab:
    di

jr_000_00ac:
    ldh a, [rSTAT]
    and $03
    jr z, jr_000_00ac

jr_000_00b2:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_00b2

    ld a, [hl+]
    ld [de], a
    ei
    inc de

jr_000_00bc:
    dec c
    jr nz, jr_000_00ab

    dec b
    jr nz, jr_000_00ab

    ret
