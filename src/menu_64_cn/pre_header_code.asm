    inc b                                         ; $0061: $04
    inc c                                         ; $0062: $0c
    jr jr_000_0066                                ; $0063: $18 $01

jr_000_0065:
    ld [hl+], a                                   ; $0065: $22

jr_000_0066:
    dec c                                         ; $0066: $0d
    jr nz, jr_000_0065                            ; $0067: $20 $fc

    dec b                                         ; $0069: $05
    jr nz, jr_000_0065                            ; $006a: $20 $f9

    ret                                           ; $006c: $c9


    inc b                                         ; $006d: $04
    inc c                                         ; $006e: $0c
    jr jr_000_0074                                ; $006f: $18 $03

jr_000_0071:
    ld a, [hl+]                                   ; $0071: $2a
    ld [de], a                                    ; $0072: $12
    inc de                                        ; $0073: $13

jr_000_0074:
    dec c                                         ; $0074: $0d
    jr nz, jr_000_0071                            ; $0075: $20 $fa

    dec b                                         ; $0077: $05
    jr nz, jr_000_0071                            ; $0078: $20 $f7

    ret                                           ; $007a: $c9


    inc b                                         ; $007b: $04
    inc c                                         ; $007c: $0c
    jr jr_000_0084                                ; $007d: $18 $05

jr_000_007f:
    ld a, [hl+]                                   ; $007f: $2a
    ld [de], a                                    ; $0080: $12
    inc de                                        ; $0081: $13
    ld [de], a                                    ; $0082: $12
    inc de                                        ; $0083: $13

jr_000_0084:
    dec c                                         ; $0084: $0d
    jr nz, jr_000_007f                            ; $0085: $20 $f8

    dec b                                         ; $0087: $05
    jr nz, jr_000_007f                            ; $0088: $20 $f5

    ret                                           ; $008a: $c9


    inc b                                         ; $008b: $04
    inc c                                         ; $008c: $0c
    jr jr_000_00a0                                ; $008d: $18 $11

    db $f5

    di                                            ; $0090: $f3

jr_000_0091:
    ldh a, [rSTAT]                                ; $0091: $f0 $41
    and $03                                       ; $0093: $e6 $03
    jr z, jr_000_0091                             ; $0095: $28 $fa

jr_000_0097:
    ldh a, [rSTAT]                                ; $0097: $f0 $41
    and $03                                       ; $0099: $e6 $03
    jr nz, jr_000_0097                            ; $009b: $20 $fa

    pop af                                        ; $009d: $f1
    ld [hl+], a                                   ; $009e: $22
    ei                                            ; $009f: $fb

jr_000_00a0:
    dec c                                         ; $00a0: $0d
    jr nz, @-$12                                  ; $00a1: $20 $ec

    dec b                                         ; $00a3: $05
    jr nz, @-$15                                  ; $00a4: $20 $e9

    ret                                           ; $00a6: $c9


    inc b                                         ; $00a7: $04
    inc c                                         ; $00a8: $0c
    jr jr_000_00bc                                ; $00a9: $18 $11

jr_000_00ab:
    di                                            ; $00ab: $f3

jr_000_00ac:
    ldh a, [rSTAT]                                ; $00ac: $f0 $41
    and $03                                       ; $00ae: $e6 $03
    jr z, jr_000_00ac                             ; $00b0: $28 $fa

jr_000_00b2:
    ldh a, [rSTAT]                                ; $00b2: $f0 $41
    and $03                                       ; $00b4: $e6 $03
    jr nz, jr_000_00b2                            ; $00b6: $20 $fa

    ld a, [hl+]                                   ; $00b8: $2a
    ld [de], a                                    ; $00b9: $12
    ei                                            ; $00ba: $fb
    inc de                                        ; $00bb: $13

jr_000_00bc:
    dec c                                         ; $00bc: $0d
    jr nz, jr_000_00ab                            ; $00bd: $20 $ec

    dec b                                         ; $00bf: $05
    jr nz, jr_000_00ab                            ; $00c0: $20 $e9

    ret                                           ; $00c2: $c9
