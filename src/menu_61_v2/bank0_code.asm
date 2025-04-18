SECTION "ROM0 - Extra Code", ROM0[$738]
    inc b
    nop
    nop
    nop
    halt
    jp $0000

    sub b
    nop
    cpl
    nop
    sub b
    nop
    cpl
    nop
    jr c, jr_000_074a

jr_000_074a:
    cpl
    nop
    jr c, jr_000_074e

jr_000_074e:
    cpl
    nop
    nop
    and b
    cpl
    nop
    nop
    ld h, b
