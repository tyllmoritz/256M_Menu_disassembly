SECTION "HeaderGlobalChecksum", ROM0[$14E]
HeaderGlobalChecksum::
    db $04, $7d

SECTION "EntryPoint", ROM0[$150]
Jump_000_0150:

SECTION "ROM0 - Extra Code", ROM0[$638]
    inc b
    nop
    nop
    nop
    db $eb
    jr nz, jr_000_063f

jr_000_063f:
    nop
    sub b
    nop
    ld a, c
    nop
    sub b
    nop
    ld a, c
    nop
    jr c, jr_000_064a

jr_000_064a:
    ld a, c
    nop
    jr c, jr_000_064e

jr_000_064e:
    ld a, c
    nop
    nop
    and b
    ld a, c
    nop
    nop
    ld h, b