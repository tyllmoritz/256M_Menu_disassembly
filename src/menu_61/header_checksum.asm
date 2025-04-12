SECTION "HeaderGlobalChecksum", ROM0[$14E]
HeaderGlobalChecksum::
    db $04, $7d

SECTION "EntryPoint", ROM0[$150]
Jump_000_0150:

SECTION "ROM0 - Extra Code", ROM0[$638]
    inc b                                         ; $0638: $04
    nop                                           ; $0639: $00
    nop                                           ; $063a: $00
    nop                                           ; $063b: $00
    db $eb                                        ; $063c: $eb
    jr nz, jr_000_063f                            ; $063d: $20 $00

jr_000_063f:
    nop                                           ; $063f: $00
    sub b                                         ; $0640: $90
    nop                                           ; $0641: $00
    ld a, c                                       ; $0642: $79
    nop                                           ; $0643: $00
    sub b                                         ; $0644: $90
    nop                                           ; $0645: $00
    ld a, c                                       ; $0646: $79
    nop                                           ; $0647: $00
    jr c, jr_000_064a                             ; $0648: $38 $00

jr_000_064a:
    ld a, c                                       ; $064a: $79
    nop                                           ; $064b: $00
    jr c, jr_000_064e                             ; $064c: $38 $00

jr_000_064e:
    ld a, c                                       ; $064e: $79
    nop                                           ; $064f: $00
    nop                                           ; $0650: $00
    and b                                         ; $0651: $a0
    ld a, c                                       ; $0652: $79
    nop                                           ; $0653: $00
    nop                                           ; $0654: $00
    ld h, b                                       ; $0655: $60