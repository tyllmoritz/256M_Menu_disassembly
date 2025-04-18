; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis


SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]
Init::
IF DEF(ENABLE_LCD_CONDITION)
    call z, EnableLCD
ELSE
    call EnableLCD
ENDC
    call ClearWRAM
IF !DEF(MENU_64_CN)
    call ClearOAM
ENDC
    call ClearVRAM
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ldh [rSTAT], a
    ldh [rWY], a
    ld a, $07
    ldh [rWX], a
    ld a, $e4
    ldh [rBGP], a
    ldh [rOBP0], a
    ld a, $1b
    ldh [rOBP1], a
    ld a, $c0
    ldh [rLCDC], a
    xor a
    ldh [rIF], a
IF DEF(MENU_64_CN)
    ldh [rNR52], a
    call $0000
ELSE
    xor a
    ldh [rNR52], a
    ld a, $01
    ld [rROMB0], a
ENDC
    call LoadGraphicData
    call LoadFont
IF !DEF(MENU_CN) && !DEF(MENU_108_CN)
    call PrintTitles
ENDC
    xor a
    ld [wSelectedPage], a
    ld [wMaxItemInCurrentPage], a
    ld [wSelectedROMinPage], a
    ld a, NUMBER_OF_ROMS
    ld [wNumItems], a
    ld a, NUMBER_OF_PAGES
    ld [wNumPages], a
    call Call_001_42b3
IF DEF(MENU_64_CN)
    ld a, $00
ELSE
    xor a
ENDC
    ld [wSelectedROMinPage], a
    call Call_001_46ac
IF DEF(MENU_CN) || DEF(MENU_108_CN)
    call Call_001_44b8
ELIF !DEF(MENU_16) && !DEF(MENU_64_CN)
    call Call_001_4287
    call Call_001_4287
ENDC
    call Call_001_4469
    call Call_001_43ef
IF DEF(MENU_64_CN)
    pop af
    ld [$d000], a
    call $0000
Jump_001_4065:
    call $62ce
ELSE
Jump_001_4065:
ENDC
    call Call_001_43f8
    ld a, [$c0ae]
    cp $08
    jp nz, Jump_001_4076

    call Call_001_41a9
    jp Jump_001_4065


Jump_001_4076:
    cp $04
    jp nz, Jump_001_4081

    call Call_001_4152
    jp Jump_001_4065


Jump_001_4081:
    cp $01
    jp nz, Jump_001_408c

    call Call_001_410f
    jp Jump_001_4065


Jump_001_408c:
    cp $02
    jp nz, Jump_001_4097

    call Call_001_40c0
    jp Jump_001_4065


Jump_001_4097:
    cp $80
    jp nz, Jump_001_409f

IF DEF(EXTRA_HRAMCHECKS)
    jp LoadAndRunHRAMCode2_
ELSE
    jp LoadAndRunHRAMCode
ENDC


Jump_001_409f:
IF !DEF(MENU_64_CN)
    cp $10
    jp nz, Jump_001_4065_

IF DEF(EXTRA_HRAMCHECKS)
    jp LoadAndRunHRAMCode2_
ELSE
    jp LoadAndRunHRAMCode
ENDC
ENDC


Jump_001_4065_:
    jp Jump_001_4065


LoadAndRunHRAMCode:
IF DEF(MENU_108_CN)
    call EnableLCD
    call ClearOAM
    call ClearVRAM
ENDC
    di
IF DEF(EXTRA_HRAMCHECKS)
    ld hl, HRAMCode3
ELSE
    ld hl, HRAMCode
ENDC
    ld bc, $ff80
    ld de, $007f
.copy_loop
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec de
    ld a, d
    or e
    jp nz, .copy_loop
    jp $ff80

IF DEF(EXTRA_HRAMCHECKS)
LoadAndRunHRAMCode2:
    di
    ld hl, HRAMCode2
    ld bc, $ff80
    ld de, $007f
.copy_loop
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec de
    ld a, d
    or e
    jp nz, .copy_loop
    jp $ff80


HRAMCode2::
    LOAD UNION "HRAM code", HRAM[$ff80]
    ld a, [wSelectedPage]
    cp $00
    jp z, $ff95

    ld d, a
    ld a, [wSelectedROMinPage]
    add $0b
    dec d
    jp nz, $ff8c

    jp $ff98


    ld a, [wSelectedROMinPage]
    ld [$c0b5], a
    cp $04
    jp z, $ffa5

    ld a, $00
    jp Jump_001_419f


    ld a, [HeaderGlobalChecksum]
    ld h, a
    ld a, [HeaderGlobalChecksum + 1]
    ld l, a
    ld a, $f0
    ld [$4000], a
    nop
    ld a, $a9
    ld [$0555], a
    nop
    ld a, $56
    ld [$02aa], a
    nop
    ld a, $90
    ld [$0555], a
    nop
    ld a, [$0000]
    cp h
    jp nz, $ffde

    ld a, [$0001]
    cp l
    jp nz, $ffde

    ld a, $f0
    ld [Init], a
    nop
    ld a, $00
    jp Jump_001_419f


    ld a, $ff
    jp Jump_001_419f
    ENDL


HRAMCode3::
    LOAD UNION "HRAM code", HRAM[$ff80]
    ld a, [wSelectedPage]
    cp $00
    jp z, $ff95

    ld d, a
    ld a, [wSelectedROMinPage]
    add $0b
    dec d
    jp nz, $ff8c

    jp $ff98


    ld a, [wSelectedROMinPage]
    ld [$c0b5], a
    cp $04
    jp z, $ffa5

    ld a, $00
    jp RebootOrLoadROM


    ld a, [HeaderGlobalChecksum]
    ld h, a
    ld a, [HeaderGlobalChecksum + 1]
    ld l, a
    ld a, $f0
    ld [$4000], a
    nop
    ld a, $a9
    ld [$0aaa], a
    nop
    ld a, $56
    ld [$0555], a
    nop
    ld a, $90
    ld [$0aaa], a
    nop
    ld a, [$0000]
    cp h
    jp nz, $ffde

    ld a, [$0002]
    cp l
    jp nz, $ffde

    ld a, $f0
    ld [$4000], a
    nop
    ld a, $00
    jp RebootOrLoadROM


    ld a, $ff
    jp RebootOrLoadROM
    ENDL


LoadAndRunHRAMCode2_:
    jp LoadAndRunHRAMCode2


Jump_001_419f:
    cp $00
    jp nz, LoadAndRunHRAMCode_

    jp LoadAndRunHRAMCode3


LoadAndRunHRAMCode_:
    jp LoadAndRunHRAMCode

RebootOrLoadROM:
    cp $00
    jp nz, Boot
;fallthrough

LoadAndRunHRAMCode3:
    di
    ld hl, HRAMCode
    ld bc, $ff80
    ld de, $007f
.copy_loop
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec de
    ld a, d
    or e
    jp nz, .copy_loop
    jp $ff80
ENDC

Call_001_40c0:
    call Call_001_46d5
    call Call_001_4207

    ld a, [wSelectedPage]
    cp $00
    jr nz, jr_001_40da

    xor a
    ld [wSelectedROMinPage], a
    ld a, [wNumPages]
    ld [wSelectedPage], a
    jp Jump_001_40df


jr_001_40da:
    ld hl, wSelectedPage
    dec [hl]
    ld a, [hl]

Jump_001_40df:
    push af
    cp $00
    jr nz, jr_001_40e8

    xor a
    jp Jump_001_40ef


jr_001_40e8:
    ld d, a
    xor a

jr_001_40ea:
    add ROMS_PER_PAGE
    dec d
    jr nz, jr_001_40ea

Jump_001_40ef:
    ld [wMaxItemInCurrentPage], a
    pop af
    ld [wSelectedPage], a
    xor a
    ld [wSelectedROMinPage], a
    call Call_001_42b3
    xor a
    ld [wSelectedROMinPage], a
IF DEF(MENU_CN) || DEF(MENU_108_CN)
    call Call_001_44b8
ELIF !DEF(MENU_16)
    call Call_001_4287
ENDC
    call LCD_Wait
    xor a
    ld [wSelectedROMinPage], a
    call Call_001_46ac
    ret


Call_001_410f:
    call Call_001_46d5
    call Call_001_4207
    ld a, [wSelectedPage]
    ld hl, wNumPages
    cp [hl]
    jr nz, jr_001_412b

    xor a
    ld [wMaxItemInCurrentPage], a
    ld [wSelectedROMinPage], a
    ld [wSelectedPage], a
    jp Jump_001_413c


jr_001_412b:
    ld hl, wSelectedPage
    inc [hl]
    ld a, [wSelectedPage]
    ld d, a
    xor a

jr_001_4134:
    add ROMS_PER_PAGE
    dec d
    jr nz, jr_001_4134

    ld [wMaxItemInCurrentPage], a

Jump_001_413c:
    xor a
    ld [wSelectedROMinPage], a
    call Call_001_42b3
    xor a
    ld [wSelectedROMinPage], a
IF !DEF(MENU_16)
    call Call_001_4287
ENDC
    xor a
    ld [wSelectedROMinPage], a
    call Call_001_46ac
    ret


Call_001_4152:
    ld a, [wSelectedROMinPage]
    cp $00
    jr nz, jr_001_4194

    ld a, [wSelectedPage]
    ld hl, wNumPages
    cp [hl]
    jr nz, jr_001_4185

    ld hl, wNumItems
    ld a, [hl]
    dec a
    ld d, a

Jump_001_4168:
    ld a, d
    cp ROMS_PER_PAGE
    jr c, jr_001_4176
REPT ROMS_PER_PAGE
    dec d
ENDR
    jp Jump_001_4168


jr_001_4176:
    push af
    call Call_001_46d5
    pop af
    ld [wSelectedROMinPage], a
    call Call_001_46ac
IF !DEF(MENU_CN) && !DEF(MENU_108_CN) && !DEF(MENU_16)
    call Call_001_4287
ENDC
    ret


jr_001_4185:
    call Call_001_46d5
    ld a, ROMS_PER_PAGE - 1
    ld [wSelectedROMinPage], a
    call Call_001_46ac
IF !DEF(MENU_16)
    call Call_001_4287
ENDC
    ret


jr_001_4194:
    push af
    call Call_001_46d5
    pop af
    dec a
    ld [wSelectedROMinPage], a
    push af
    call Call_001_46ac
    pop af
    ld [wSelectedROMinPage], a
IF !DEF(MENU_16)
    call Call_001_4287
ENDC
    ret


Call_001_41a9:
    ld a, [wSelectedPage]
    ld hl, wNumPages
    cp [hl]
    jr nz, jr_001_41d8

    cp $00
    jr z, jr_001_41bd

    ld d, a
    xor a

jr_001_41b8:
    add ROMS_PER_PAGE
    dec d
    jr nz, jr_001_41b8

jr_001_41bd:
    ld hl, wSelectedROMinPage
    add [hl]
    ld d, a
    ld hl, wNumItems
    ld a, [hl]
    dec a
    cp d
    jr nz, jr_001_41ee

    call Call_001_46d5
    xor a
    ld [wSelectedROMinPage], a
    call Call_001_46ac
IF !DEF(MENU_16)
    call Call_001_4287
ENDC
    ret


jr_001_41d8:
    ld a, [wSelectedROMinPage]
    cp ROMS_PER_PAGE - 1
    jr nz, jr_001_41ee

    call Call_001_46d5
    ld a, $00
    ld [wSelectedROMinPage], a
    call Call_001_46ac
IF !DEF(MENU_16)
    call Call_001_4287
ENDC
    ret


jr_001_41ee:
    ld a, [wSelectedROMinPage]
    call Call_001_46d5
    ld a, [wSelectedROMinPage]
    inc a
    ld [wSelectedROMinPage], a
    push af
    call Call_001_46ac
    pop af
    ld [wSelectedROMinPage], a
IF !DEF(MENU_16)
    call Call_001_4287
ENDC
    ret


Call_001_4207:
IF DEF(MENU_CN) || DEF(MENU_108_CN)
    ld de, $100a
    ld hl, $9882
ELIF DEF(MENU_16)
    ld de, $100e
    ld hl, $98a2
ELSE
    ld de, $120b
    ld hl, $9882 ; bg map adress of first Romname character
ENDC

jr_001_420d:
    push hl
    ld a, $00

jr_001_4210:
    call LCD_Wait
    ld [hl+], a
    dec d
    jr nz, jr_001_4210

    ld bc, $0020
    pop hl
    add hl, bc
    ld a, $10
    ld d, a
    dec e
    jr nz, jr_001_420d

    ret


    ld b, $80
    jp Jump_001_422a


    ld b, $83

Jump_001_422a:
    ld hl, $9881
    ld de, $0020
    ld a, [wSelectedROMinPage]

Jump_001_4233:
    cp $00
    jp z, Jump_001_423d

    add hl, de
    dec a
    jp Jump_001_4233


Jump_001_423d:
    call LCD_Wait
    ld [hl], b
    ret


LCD_Wait::
    push af
.wait
    ldh a, [rSTAT]
    and $02
    jp nz, .wait

    pop af
    ret


    ld hl, $9880
    ld a, $0a
    ld d, a

Jump_001_4252:
    push hl
    ld a, $14
    ld e, a

Jump_001_4256:
    call LCD_Wait
    ld a, $80
    ld [hl+], a
    dec e
    jp nz, Jump_001_4256

    pop hl
    dec d
    jp nz, Jump_001_4266

    ret


Jump_001_4266:
    ld bc, $0020
    add hl, bc
    jp Jump_001_4252


IF !DEF(MENU_CN) && !DEF(MENU_108_CN)
MenuTitle::
    db MENU_TITLE

PrintTitles::
    ld hl, $9822
    ld bc, MenuTitle
IF DEF(MENU_16)
    call WriteLine
ELSE
    call PrintGameTitle
ENDC
    ret
ENDC

IF !DEF(MENU_CN) && !DEF(MENU_108_CN) && !DEF(MENU_16)
Call_001_4287:
IF DEF(MENU) || DEF(MENU_61) || DEF(MENU_108)
    ld de, $00dc
ELSE
    ld de, $0078
ENDC
    ld hl, BottomText
    ld a, [wSelectedPage]

Jump_001_4290:
    cp $00
    jp z, Jump_001_429a

    add hl, de
    dec a
    jp Jump_001_4290


Jump_001_429a:
    ld de, $0014 ; line length
    ld a, [wSelectedROMinPage]

.is_correct_line_reached
    cp $00
    jp z, .correct_line_is_reached

    add hl, de
    dec a
    jp .is_correct_line_reached

.correct_line_is_reached
    push hl
    pop bc
    ld hl, $9a20
    call WriteLine
    ret
ENDC

Call_001_42b3:
IF DEF(MENU_16)
    ld hl, $98a2
ELSE
    ld hl, $9882 ; bg map adress of first Romname character
ENDC
    ld de, $0010
    xor a
    ld [wSelectedROMinPage], a

Jump_001_42bd:
    ld a, [wMaxItemInCurrentPage]
    ld d, a
    ld a, [wNumItems]
    cp d
    jp z, Return

    ld a, [wSelectedROMinPage]
    cp ROMS_PER_PAGE
    jp z, Return

    push hl
    push de
    ld hl, MenuText
    ld de, $0010
    ld a, [wMaxItemInCurrentPage]

Jump_001_42db:
    cp $00
    jp z, Jump_001_42e5

    add hl, de
    dec a
    jp Jump_001_42db


Jump_001_42e5:
    push hl
    pop bc
    pop de
    pop hl
    push hl
IF DEF(MENU_CN) || DEF(MENU_108_CN) || DEF(MENU_16)
    call WriteLine
ELSE
    call PrintGameTitle
ENDC
    ld hl, wMaxItemInCurrentPage
    inc [hl]
    ld hl, wSelectedROMinPage
    inc [hl]
    pop hl
    push de
IF DEF(MENU) || DEF(MENU_61) || DEF(MENU_108) || DEF(MENU_CN) || DEF(MENU_108_CN)
    ld de, $0020 ; next line
ELSE
    ld de, $0040 ; next line with spacing
ENDC
    add hl, de
    pop de
    jp Jump_001_42bd

Return:
    ret


WriteLine:
IF DEF(MENU_CN) || DEF(MENU_108_CN) || DEF(MENU_16)
    ld a, $10 ; characters_per_line
ELSE
    ld a, $14 ; characters_per_line
ENDC
    ld e, a

WriteNextCharacterInLine:
    ld a, [bc]
    cp $20
    jp nz, .printable_ascii

    ld a, $ab ; whitespace
    jp WriteCharacterOfRomTitle

.printable_ascii:
    cp $30
    jp c, .not_a_number

    cp $3a
    jp nc, .not_a_number

; ascii -> tile number for 0-9
IF DEF(MENU_CN) || DEF(MENU_108_CN) || DEF(MENU_16)
    add $50
ELSE
    add $80
ENDC
    jp WriteCharacterOfRomTitle

.not_a_number
    cp $41
    jp c, WriteCharacterOfRomTitle_

    cp $5b
    jp nc, WriteCharacterOfRomTitle_

; ascii -> tile number for A-Z
IF DEF(MENU_CN) || DEF(MENU_108_CN) || DEF(MENU_16)
    add $50
ELSE
    add $80
ENDC
    jp WriteCharacterOfRomTitle


WriteCharacterOfRomTitle_:
IF !DEF(MENU_CN) && !DEF(MENU_108_CN) && !DEF(MENU_16)
    nop
ENDC

WriteCharacterOfRomTitle:
    push af
    call LCD_Wait
    pop af
    ld [hl], a
    inc hl
    inc bc
    dec e
    jp nz, WriteNextCharacterInLine

    ret


LoadFont::
    ld bc, Font
    ld hl, $8800
    ld de, Font.end - Font

.copy_loop
    ld a, [bc]
    call LCD_Wait
    ld [hl+], a
    call LCD_Wait
    ld [hl+], a
    inc bc
    dec de
    ld a, d
    or e
    jp nz, .copy_loop

IF DEF(MENU_CN) || DEF(MENU_108_CN) || DEF(MENU_16) ; copy font only once
    ret
ELSE

    ld bc, Font
    ld hl, $8b00
    ld de, Font.end - Font

.copy_loop2
    ld a, [bc]
    call LCD_Wait
    ld [hl+], a
    ld a, $00
    call LCD_Wait
    ld [hl+], a
    inc bc
    dec de
    ld a, d
    or e
    jp nz, .copy_loop2

    ret


PrintGameTitle::
    ld a, $10
    ld e, a

Jump_001_4372:
    ld a, [bc]
    cp $20
    jp nz, Jump_001_437d

    ld a, $ab
    jp PrintCharacter


Jump_001_437d:
    cp $30
    jp c, Jump_001_438c

    cp $3a
    jp nc, Jump_001_438c

    add $50
    jp PrintCharacter


Jump_001_438c:
    cp $41
    jp c, .end

    cp $5b
    jp nc, .end

    add $50
    jp PrintCharacter
.end


IF DEF(MENU_18) || DEF(MENU_19) || DEF(MENU_20) || DEF(MENU_22)
    nop
ENDC

PrintCharacter::
    push af
    call LCD_Wait
    pop af
    ld [hl], a
    inc hl
    inc bc
    dec e
    jp nz, Jump_001_4372
    ret
ENDC

ClearWRAM::
    ld hl, $dfff
IF DEF(MENU_108_CN)
    ld a, $00
ENDC
    ld c, $20
    ld b, $00
.erase_loop
    ld [hl-], a
    dec b
    jp nz, .erase_loop
    dec c
    jp nz, .erase_loop
    ret


ClearOAM::
    ld hl, $feff
    ld b, $00
.erase_loop
    ld [hl-], a
    dec b
    jp nz, .erase_loop
    ret

; never executed
    ld hl, $ffff
    ld b, $80

Jump_001_43ca:
    ld [hl-], a
    dec b
    jp nz, Jump_001_43ca

    ret


EnableLCD::
    xor a
    ldh [rIF], a
    ldh a, [rIE]
    ld b, a
    res 0, a
    ldh [rIE], a
    ldh a, [rLCDC]
    add a
    ret nc

Jump_001_43de:
    ldh a, [rLY]
    cp $91
    jp c, Jump_001_43de

    ldh a, [rLCDC]
    and $7f
    ldh [rLCDC], a
    ld a, b
    ldh [rIE], a
    ret


Call_001_43ef:
    ldh a, [rLCDC]
    or $81
    and $e7
    ldh [rLCDC], a
    ret


Call_001_43f8:
    ld a, [$c0ad]
    ld [$c0af], a
    ld a, [$c0ae]
    ld [$c0b0], a
    call Call_001_4435
    ld a, [$c0ad]
    ld d, a
    ld a, [$c0af]
    ld [$c0ad], a
    ld a, [$c0ae]
    ld e, a
    ld a, [$c0b0]
    ld [$c0ae], a
    call Call_001_4435
    ld a, [$c0ad]
    cp d
    jp nz, Jump_001_442a

    ld a, [$c0ae]
    cp e
    ret z

Jump_001_442a:
    ld a, [$c0af]
    ld [$c0ad], a
    xor a
    ld [$c0ae], a
    ret


Call_001_4435:
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    or b
    ld c, a
    ld a, [$c0ad]
    xor c
    and c
    ld [$c0ae], a
    ld a, c
    ld [$c0ad], a
    ld a, $30
    ldh [rP1], a
    ret


Call_001_4469:
    ld hl, $8ff0
    ld de, $0008

Jump_001_446f:
    ld a, $00
    push af
    call LCD_Wait
    pop af
    ld [hl+], a
    ld a, $ff
    push af
    call LCD_Wait
    pop af
    ld [hl+], a
    dec de
    ld a, d
    or e
    jp nz, Jump_001_446f

    ret


ClearVRAM::
    ld hl, $8000
    ld bc, $2000
.erase_loop
    ld a, $00
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jp nz, .erase_loop
    ret


Call_001_4496:
    ld hl, $99e0
    ld de, $0014

Jump_001_449c:
    push hl
    push hl
IF DEF(MENU_CN)
    ld a, $00
ELSE
    ld a, $ff
ENDC
    call LCD_Wait
    ld [hl], a
    pop hl
    ld bc, $0020
    add hl, bc
IF DEF(MENU_CN)
    ld a, $00
ELSE
    ld a, $ff
ENDC
    call LCD_Wait
    ld [hl], a
    pop hl
    inc hl
    dec de
    ld a, d
    or e
    jp nz, Jump_001_449c
    ret

IF DEF(MENU_CN) || DEF(MENU_108_CN)
Call_001_4287::
ENDC
Call_001_44b8::
    call Call_001_4496
    call Call_001_451e
    call Call_001_44c2
    ret


Call_001_44c2:
    ld a, [wSelectedPage]
    cp $00
    jp z, Jump_001_44d7

    ld d, a
    ld a, [wSelectedROMinPage]

Jump_001_44ce:
    add $0a
    dec d
    jp nz, Jump_001_44ce

    jp Jump_001_44da


Jump_001_44d7:
    ld a, [wSelectedROMinPage]

Jump_001_44da:
    ld [$c0b5], a
    ld e, a
    xor a
    ld d, a
    ld hl, UnknownData2;  $4cd8
    add hl, de
    ld a, [hl]
    ld c, a
    ld a, $0a
    sub c
    ld e, a
    xor a
    ld d, a
    ld hl, $99e0
    add hl, de
    ld a, $54
    ld b, a

Jump_001_44f3:
    push hl
    push hl
    ld a, b
    call LCD_Wait
    ld [hl], a
    inc b
    inc b
    inc hl
    ld a, b
    call LCD_Wait
    ld [hl], a
    pop hl
    ld de, $0020
    add hl, de
    dec b
    ld a, b
    call LCD_Wait
    ld [hl], a
    inc hl
    inc b
    inc b
    ld a, b
    call LCD_Wait
    ld [hl], a
    pop hl
    inc b
    inc hl
    inc hl
    dec c
    jp nz, Jump_001_44f3

    ret


Call_001_451e:
    ld a, [wSelectedPage]
    cp $00
    jp z, Jump_001_4533

    ld d, a
    ld a, [wSelectedROMinPage]

Jump_001_452a:
    add $0a
    dec d
    jp nz, Jump_001_452a

    jp Jump_001_4536


Jump_001_4533:
    ld a, [wSelectedROMinPage]

Jump_001_4536:
    ld [$c0b4], a
    ld hl, UnknownData2 ; $4cd8
    ld c, a
    xor a
    ld b, a
    add hl, bc
    ld a, [hl]
    ld [$c0b5], a
    ld a, [$c0b4]
    cp $00
    jp z, Jump_001_456a

    ld bc, $0000
    ld hl, UnknownData2 ; $4cd8

Jump_001_4552:
    ld a, [hl+]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, [$c0b4]
    dec a
    ld [$c0b4], a
    jp nz, Jump_001_4552

    ld hl, UnknownData
    add hl, bc
    jp Jump_001_456d


Jump_001_456a:
    ld hl, UnknownData

Jump_001_456d:
    ld a, [$c0b5]
    ld bc, $9540

Jump_001_4573:
    push af
    ld a, [hl+]
    push hl
    push bc
    sub $01
    ld c, a
    xor a
    ld b, a
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    ld hl, SubtitleCharacters
    add hl, bc
    ld de, $0020
    pop bc

Jump_001_4598:
    ld a, [hl+]
    push af
    call LCD_Wait
    ld [bc], a
    inc bc
    pop af
    xor a
    call LCD_Wait
    ld [bc], a
    inc bc
    dec de
    ld a, d
    or e
    jp nz, Jump_001_4598

    pop hl
    pop af
    dec a
    jp nz, Jump_001_4573

    ret


HRAMCode::
    LOAD UNION "HRAM code", HRAM[$ff80]
ChangeMapperAndJumpToGame::
    ld a, [wSelectedPage]
    cp $00
    jp z, .page_is_zero
    ld d, a
    ld a, [wSelectedROMinPage]
.jp_ff8c
    add ROMS_PER_PAGE
    dec d
    jp nz, .jp_ff8c
    jp .jp_ff98
.page_is_zero
    ld a, [wSelectedROMinPage]
.jp_ff98
    ld [$c0b5], a
    di
    ld e, a
    xor a
    ld d, a
    sla e
    rl d
    sla e
    rl d
    ld hl, MenuParam
    add hl, de
    push hl
    pop bc
    ld a, [bc]
    push af
    inc bc
    ld a, [bc]
    push af
    inc bc
    ld a, [bc]
    push af
    inc bc
    ld a, [bc]
    ld [$7000], a
    nop
    nop
    nop
    pop af
    ld [$7001], a
    nop
    nop
    nop
    pop af
    ld [$7002], a
    nop
    nop
    nop
    nop
    nop
    nop
IF DEF(MENU_108_CN)
    nop
    nop
    nop
ENDC
    ld a, $01
    ld [$2000], a
    ld a, $00
    ld [$3000], a
    nop
    nop
    nop
    nop
    nop
    nop
    IF DEF(MENU_108_CN)
        nop
        nop
        nop
    ENDC
    IF DEF(CLEAR_DATA_BEFORE_JUMPING_TO_ROM)
        call ClearWRAM
        call ClearOAM
        call ClearVRAM
    ENDC
    pop af
    jp Boot

    IF !DEF(MENU_20)
        ld a, [$c0b8]
        jp Jump_000_0150
    ENDC
    ENDL


LoadGraphicData:
    call LoadVRAMData
    call LoadBackgroundMap
    call LoadPaletteData
    ret


LoadVRAMData::
    ld hl, Super108In
    ld de, $0800
    ld bc, $9000
    call CopyVRAMData
    ld bc, $8800
    ld de, $0800
; fallthrough

CopyVRAMData:
.start
    ld a, [hl+]
    call LCD_Wait
    ld [bc], a
    inc bc
    dec de
    ld a, e
    or d
    jr nz, .start

    ret


LoadBackgroundMap::
    ld hl, $9800
IF DEF(MENU_CN) || DEF(MENU_108_CN) || DEF(MENU_16)
    ld de, $0414
ELSE
    ld de, $1214
ENDC
    ld bc, BackgroundMap

.copy_loop
    ld a, [bc]
    inc bc
    call LCD_Wait
    ld [hl], a
    inc hl
    dec e
    jr nz, .copy_loop

    dec d
    jr z, .ret

    push de
    ld de, $000c
    add hl, de
    pop de
    ld a, $14
    ld e, a
    jp .copy_loop

.ret
    ret


LoadPaletteData::
    ld hl, PaletteData
    ld a, $40
    ld d, a
    ld a, $80
    ldh [rBCPS], a

jr_001_4670:
    ld a, [hl+]
    call LCD_Wait
    ldh [rBCPD], a
    dec d
    jr nz, jr_001_4670

    ret


    ld a, [$c0b8]
    cp $11
    jr nz, jr_001_46ab

    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld de, $1214
    ld bc, GraphicData

Jump_001_468e:
jr_001_468e:
    ld a, [bc]
    inc bc
    call LCD_Wait
    ld [hl], a
    inc hl
    dec e
    jr nz, jr_001_468e

    dec d
    jr z, jr_001_46a7

    push de
    ld de, $000c
    add hl, de
    pop de
    ld a, $14
    ld e, a
    jp Jump_001_468e

jr_001_46a7:
    ld a, $00
    ldh [rVBK], a

jr_001_46ab:
    ret

Call_001_46ac:
IF DEF(MENU_16)
    ld hl, $98a1
ELSE
    ld hl, $9881
ENDC
    ld a, [wSelectedROMinPage]
    ld e, a
    xor a
    ld d, a
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
IF !DEF(MENU) && !DEF(MENU_61) && !DEF(MENU_108) && !DEF(MENU_CN) && !DEF(MENU_108_CN)
    sla e
    rl d
ENDC
    add hl, de
    ld a, $ac
    call LCD_Wait
    ld [hl+], a
    ret


Call_001_46d5:
IF DEF(MENU_16)
    ld hl, $98a1
ELSE
    ld hl, $9881
ENDC
    ld a, [wSelectedROMinPage]
    ld e, a
    xor a
    ld d, a
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
IF !DEF(MENU) && !DEF(MENU_61) && !DEF(MENU_108) && !DEF(MENU_CN) && !DEF(MENU_108_CN)
    sla e
    rl d
ENDC
    add hl, de
    ld a, $ab
    call LCD_Wait
    ld [hl+], a
    ret

INCLUDE "rom_params.asm"

Super108In::
    INCBIN "gfx/Super108In.2bpp"

Dots::
    INCBIN "gfx/Dots.2bpp"

Line::
    db $ff, $ff

INCLUDE "backgroundmap.asm"

INCLUDE "palette.asm"

INCLUDE "data.asm"

INCLUDE "rom_names.asm"

Font::
    INCBIN "gfx/Font.2bpp"
.end

IF DEF(MENU)
	ds $6000 - @, 0x00
	ds $8000 - @, 0xff
ENDC
