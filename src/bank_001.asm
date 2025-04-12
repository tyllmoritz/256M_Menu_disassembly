; Disassembly of "menu_22.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis


SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]
Init::
IF DEF(MENU_61)
    call z, EnableLCD
ELSE
    call EnableLCD                                ; $4000: $cd $d0 $43
ENDC
    call ClearHRAM                                ; $4003: $cd $a9 $43
    call ClearWRAM                                ; $4006: $cd $ba $43
    call ClearVRAM                                ; $4009: $cd $86 $44
    xor a                                         ; $400c: $af
    ldh [rSCY], a                                 ; $400d: $e0 $42
    ldh [rSCX], a                                 ; $400f: $e0 $43
    ldh [rSTAT], a                                ; $4011: $e0 $41
    ldh [rWY], a                                  ; $4013: $e0 $4a
    ld a, $07                                     ; $4015: $3e $07
    ldh [rWX], a                                  ; $4017: $e0 $4b
    ld a, $e4                                     ; $4019: $3e $e4
    ldh [rBGP], a                                 ; $401b: $e0 $47
    ldh [rOBP0], a                                ; $401d: $e0 $48
    ld a, $1b                                     ; $401f: $3e $1b
    ldh [rOBP1], a                                ; $4021: $e0 $49
    ld a, $c0                                     ; $4023: $3e $c0
    ldh [rLCDC], a                                ; $4025: $e0 $40
    xor a                                         ; $4027: $af
    ldh [rIF], a                                  ; $4028: $e0 $0f
    xor a                                         ; $402a: $af
    ldh [rNR52], a                                ; $402b: $e0 $26
    ld a, $01                                     ; $402d: $3e $01
    ld [rROMB0], a                                ; $402f: $ea $00 $20
    call LoadGraphicData                          ; $4032: $cd $1b $46
    call LoadFont                                 ; $4035: $cd $3a $43
IF !DEF(MENU_CN) && !DEF(MENU_108_CN)
    call PrintTitles                              ; $4038: $cd $7d $42
ENDC
    xor a                                         ; $403b: $af
    ld [wSelectedPage], a                         ; $403c: $ea $b9 $c0
    ld [wMaxItemInCurrentPage], a                 ; $403f: $ea $bb $c0
    ld [wSelectedROMinPage], a                    ; $4042: $ea $b3 $c0
    ld a, NUM_ITEMS_SETTING                       ; $4045: $3e $16
    ld [wNumItems], a                             ; $4047: $ea $bc $c0
    ld a, NUM_PAGES_SETTING                       ; $404a: $3e $03
    ld [wNumPages], a                             ; $404c: $ea $ba $c0
    call Call_001_42b3                            ; $404f: $cd $b3 $42
    xor a                                         ; $4052: $af
    ld [wSelectedROMinPage], a                    ; $4053: $ea $b3 $c0
    call Call_001_46ac                            ; $4056: $cd $ac $46
IF DEF(MENU_CN) || DEF(MENU_108_CN)
    call Call_001_44b8
ELSE
    call Call_001_4287                            ; $4059: $cd $87 $42
    call Call_001_4287                            ; $405c: $cd $87 $42
ENDC
    call Call_001_4469                            ; $405f: $cd $69 $44
    call Call_001_43ef                            ; $4062: $cd $ef $43

Jump_001_4065:
    call Call_001_43f8                            ; $4065: $cd $f8 $43
    ld a, [$c0ae]                                 ; $4068: $fa $ae $c0
    cp $08                                        ; $406b: $fe $08
    jp nz, Jump_001_4076                          ; $406d: $c2 $76 $40

    call Call_001_41a9                            ; $4070: $cd $a9 $41
    jp Jump_001_4065                              ; $4073: $c3 $65 $40


Jump_001_4076:
    cp $04                                        ; $4076: $fe $04
    jp nz, Jump_001_4081                          ; $4078: $c2 $81 $40

    call Call_001_4152                            ; $407b: $cd $52 $41
    jp Jump_001_4065                              ; $407e: $c3 $65 $40


Jump_001_4081:
    cp $01                                        ; $4081: $fe $01
    jp nz, Jump_001_408c                          ; $4083: $c2 $8c $40

    call Call_001_410f                            ; $4086: $cd $0f $41
    jp Jump_001_4065                              ; $4089: $c3 $65 $40


Jump_001_408c:
    cp $02                                        ; $408c: $fe $02
    jp nz, Jump_001_4097                          ; $408e: $c2 $97 $40

    call Call_001_40c0                            ; $4091: $cd $c0 $40
    jp Jump_001_4065                              ; $4094: $c3 $65 $40


Jump_001_4097:
    cp $80                                        ; $4097: $fe $80
    jp nz, Jump_001_409f                          ; $4099: $c2 $9f $40

IF DEF(MENU_61) || DEF(MENU_108)
    jp LoadAndRunHRAMCode2_
ELSE
    jp LoadAndRunHRAMCode                              ; $409c: $c3 $aa $40
ENDC


Jump_001_409f:
    cp $10                                        ; $409f: $fe $10
    jp nz, Jump_001_4065_                          ; $40a1: $c2 $a7 $40

IF DEF(MENU_61) || DEF(MENU_108)
    jp LoadAndRunHRAMCode2_
ELSE
    jp LoadAndRunHRAMCode                              ; $40a4: $c3 $aa $40
ENDC


Jump_001_4065_:
    jp Jump_001_4065                              ; $40a7: $c3 $65 $40


LoadAndRunHRAMCode:
IF DEF(MENU_108_CN)
    call EnableLCD                            ; $40a4: $cd $3a $43
    call ClearWRAM                            ; $40a7: $cd $24 $43
    call ClearVRAM                            ; $40aa: $cd $f0 $43
ENDC
    di                                            ; $40aa: $f3
IF DEF(MENU_61) || DEF(MENU_108)
    ld hl, HRAMCode3
ELSE
    ld hl, HRAMCode                               ; $40ab: $21 $b3 $45
ENDC
    ld bc, $ff80                                  ; $40ae: $01 $80 $ff
    ld de, $007f                                  ; $40b1: $11 $7f $00
.copy_loop
    ld a, [hl+]                                   ; $40b4: $2a
    ld [bc], a                                    ; $40b5: $02
    inc bc                                        ; $40b6: $03
    dec de                                        ; $40b7: $1b
    ld a, d                                       ; $40b8: $7a
    or e                                          ; $40b9: $b3
    jp nz, .copy_loop                             ; $40ba: $c2 $b4 $40
    jp $ff80                                      ; $40bd: $c3 $80 $ff

IF DEF(MENU_61) || DEF(MENU_108)
LoadAndRunHRAMCode2:
    di                                            ; $40c0: $f3
    ld hl, HRAMCode2                              ; $40c1: $21 $d6 $40
    ld bc, $ff80                                  ; $40c4: $01 $80 $ff
    ld de, $007f                                  ; $40c7: $11 $7f $00
.copy_loop
    ld a, [hl+]                                   ; $40ca: $2a
    ld [bc], a                                    ; $40cb: $02
    inc bc                                        ; $40cc: $03
    dec de                                        ; $40cd: $1b
    ld a, d                                       ; $40ce: $7a
    or e                                          ; $40cf: $b3
    jp nz, .copy_loop                             ; $40d0: $c2 $ca $40
    jp $ff80                                      ; $40d3: $c3 $80 $ff


HRAMCode2::
    LOAD UNION "HRAM code", HRAM[$ff80]
    ld a, [wSelectedPage]                         ; $40d6: $fa $b9 $c0
    cp $00                                        ; $40d9: $fe $00
    jp z, $ff95                                   ; $40db: $ca $95 $ff

    ld d, a                                       ; $40de: $57
    ld a, [wSelectedROMinPage]                    ; $40df: $fa $b3 $c0
    add $0b                                       ; $40e2: $c6 $0b
    dec d                                         ; $40e4: $15
    jp nz, $ff8c                                  ; $40e5: $c2 $8c $ff

    jp $ff98                                      ; $40e8: $c3 $98 $ff


    ld a, [wSelectedROMinPage]                    ; $40eb: $fa $b3 $c0
    ld [$c0b5], a                                 ; $40ee: $ea $b5 $c0
    cp $04                                        ; $40f1: $fe $04
    jp z, $ffa5                                   ; $40f3: $ca $a5 $ff

    ld a, $00                                     ; $40f6: $3e $00
    jp Jump_001_419f                              ; $40f8: $c3 $9f $41


    ld a, [HeaderGlobalChecksum]                  ; $40fb: $fa $4e $01
    ld h, a                                       ; $40fe: $67
    ld a, [HeaderGlobalChecksum + 1]              ; $40ff: $fa $4f $01
    ld l, a                                       ; $4102: $6f
    ld a, $f0                                     ; $4103: $3e $f0
    ld [$4000], a                                 ; $4105: $ea $00 $40
    nop                                           ; $4108: $00
    ld a, $a9                                     ; $4109: $3e $a9
    ld [$0555], a                                 ; $410b: $ea $55 $05
    nop                                           ; $410e: $00
    ld a, $56                                     ; $410f: $3e $56
    ld [$02aa], a                                 ; $4111: $ea $aa $02
    nop                                           ; $4114: $00
    ld a, $90                                     ; $4115: $3e $90
    ld [$0555], a                                 ; $4117: $ea $55 $05
    nop                                           ; $411a: $00
    ld a, [$0000]                                 ; $411b: $fa $00 $00
    cp h                                          ; $411e: $bc
    jp nz, $ffde                                  ; $411f: $c2 $de $ff

    ld a, [$0001]                                 ; $4122: $fa $01 $00
    cp l                                          ; $4125: $bd
    jp nz, $ffde                                  ; $4126: $c2 $de $ff

    ld a, $f0                                     ; $4129: $3e $f0
    ld [Init], a                                  ; $412b: $ea $00 $40
    nop                                           ; $412e: $00
    ld a, $00                                     ; $412f: $3e $00
    jp Jump_001_419f                              ; $4131: $c3 $9f $41


    ld a, $ff                                     ; $4134: $3e $ff
    jp Jump_001_419f                              ; $4136: $c3 $9f $41
    ENDL


HRAMCode3::
    LOAD UNION "HRAM code", HRAM[$ff80]
    ld a, [wSelectedPage]                                 ; $4139: $fa $b9 $c0
    cp $00                                        ; $413c: $fe $00
    jp z, $ff95                                   ; $413e: $ca $95 $ff

    ld d, a                                       ; $4141: $57
    ld a, [wSelectedROMinPage]                                 ; $4142: $fa $b3 $c0
    add $0b                                       ; $4145: $c6 $0b
    dec d                                         ; $4147: $15
    jp nz, $ff8c                                  ; $4148: $c2 $8c $ff

    jp $ff98                                      ; $414b: $c3 $98 $ff


    ld a, [wSelectedROMinPage]                                 ; $414e: $fa $b3 $c0
    ld [$c0b5], a                                 ; $4151: $ea $b5 $c0
    cp $04                                        ; $4154: $fe $04
    jp z, $ffa5                                   ; $4156: $ca $a5 $ff

    ld a, $00                                     ; $4159: $3e $00
    jp RebootOrLoadROM                              ; $415b: $c3 $aa $41


    ld a, [HeaderGlobalChecksum]                  ; $415e: $fa $4e $01
    ld h, a                                       ; $4161: $67
    ld a, [HeaderGlobalChecksum + 1]              ; $4162: $fa $4f $01
    ld l, a                                       ; $4165: $6f
    ld a, $f0                                     ; $4166: $3e $f0
    ld [$4000], a                                 ; $4168: $ea $00 $40
    nop                                           ; $416b: $00
    ld a, $a9                                     ; $416c: $3e $a9
    ld [$0aaa], a                                 ; $416e: $ea $aa $0a
    nop                                           ; $4171: $00
    ld a, $56                                     ; $4172: $3e $56
    ld [$0555], a                                 ; $4174: $ea $55 $05
    nop                                           ; $4177: $00
    ld a, $90                                     ; $4178: $3e $90
    ld [$0aaa], a                                 ; $417a: $ea $aa $0a
    nop                                           ; $417d: $00
    ld a, [$0000]                                 ; $417e: $fa $00 $00
    cp h                                          ; $4181: $bc
    jp nz, $ffde                                  ; $4182: $c2 $de $ff

    ld a, [$0002]                                 ; $4185: $fa $02 $00
    cp l                                          ; $4188: $bd
    jp nz, $ffde                                  ; $4189: $c2 $de $ff

    ld a, $f0                                     ; $418c: $3e $f0
    ld [$4000], a                                 ; $418e: $ea $00 $40
    nop                                           ; $4191: $00
    ld a, $00                                     ; $4192: $3e $00
    jp RebootOrLoadROM                              ; $4194: $c3 $aa $41


    ld a, $ff                                     ; $4197: $3e $ff
    jp RebootOrLoadROM                              ; $4199: $c3 $aa $41
    ENDL


LoadAndRunHRAMCode2_:
    jp LoadAndRunHRAMCode2                        ; $419c: $c3 $c0 $40


Jump_001_419f:
    cp $00                                         ; $419f: $fe $00
    jp nz, LoadAndRunHRAMCode_                          ; $41a1: $c2 $a7 $41

    jp LoadAndRunHRAMCode3                         ; $41a4: $c3 $af $41


LoadAndRunHRAMCode_:
    jp LoadAndRunHRAMCode                              ; $41a7: $c3 $aa $40

RebootOrLoadROM:
    cp $00                                        ; $41aa: $fe $00
    jp nz, Boot                                   ; $41ac: $c2 $00 $01
;fallthrough

LoadAndRunHRAMCode3:
    di                                            ; $41af: $f3
    ld hl, HRAMCode                               ; $41b0: $21 $bc $46
    ld bc, $ff80                                  ; $41b3: $01 $80 $ff
    ld de, $007f                                  ; $41b6: $11 $7f $00
.copy_loop
    ld a, [hl+]                                   ; $41b9: $2a
    ld [bc], a                                    ; $41ba: $02
    inc bc                                        ; $41bb: $03
    dec de                                        ; $41bc: $1b
    ld a, d                                       ; $41bd: $7a
    or e                                          ; $41be: $b3
    jp nz, .copy_loop                             ; $41bf: $c2 $b9 $41
    jp $ff80                                      ; $41c2: $c3 $80 $ff
ENDC

Call_001_40c0:
    call Call_001_46d5                            ; $40c0: $cd $d5 $46
    call Call_001_4207                            ; $40c3: $cd $07 $42

    ld a, [wSelectedPage]                                 ; $40c6: $fa $b9 $c0
    cp $00                                        ; $40c9: $fe $00
    jr nz, jr_001_40da                            ; $40cb: $20 $0d

    xor a                                         ; $40cd: $af
    ld [wSelectedROMinPage], a                                 ; $40ce: $ea $b3 $c0
    ld a, [wNumPages]                                 ; $40d1: $fa $ba $c0
    ld [wSelectedPage], a                                 ; $40d4: $ea $b9 $c0
    jp Jump_001_40df                              ; $40d7: $c3 $df $40


jr_001_40da:
    ld hl, wSelectedPage                                  ; $40da: $21 $b9 $c0
    dec [hl]                                      ; $40dd: $35
    ld a, [hl]                                    ; $40de: $7e

Jump_001_40df:
    push af                                       ; $40df: $f5
    cp $00                                        ; $40e0: $fe $00
    jr nz, jr_001_40e8                            ; $40e2: $20 $04

    xor a                                         ; $40e4: $af
    jp Jump_001_40ef                              ; $40e5: $c3 $ef $40


jr_001_40e8:
    ld d, a                                       ; $40e8: $57
    xor a                                         ; $40e9: $af

jr_001_40ea:
    add ROMS_PER_PAGE                             ; $40ea: $c6 $06
    dec d                                         ; $40ec: $15
    jr nz, jr_001_40ea                            ; $40ed: $20 $fb

Jump_001_40ef:
    ld [wMaxItemInCurrentPage], a                                 ; $40ef: $ea $bb $c0
    pop af                                        ; $40f2: $f1
    ld [wSelectedPage], a                                 ; $40f3: $ea $b9 $c0
    xor a                                         ; $40f6: $af
    ld [wSelectedROMinPage], a                                 ; $40f7: $ea $b3 $c0
    call Call_001_42b3                            ; $40fa: $cd $b3 $42
    xor a                                         ; $40fd: $af
    ld [wSelectedROMinPage], a                                 ; $40fe: $ea $b3 $c0
IF DEF(MENU_CN) || DEF(MENU_108_CN)
    call Call_001_44b8
ELSE
    call Call_001_4287                            ; $4101: $cd $87 $42
ENDC
    call LCD_Wait                                 ; $4104: $cd $42 $42
    xor a                                         ; $4107: $af
    ld [wSelectedROMinPage], a                                 ; $4108: $ea $b3 $c0
    call Call_001_46ac                            ; $410b: $cd $ac $46
    ret                                           ; $410e: $c9


Call_001_410f:
    call Call_001_46d5                            ; $410f: $cd $d5 $46
    call Call_001_4207                            ; $4112: $cd $07 $42
    ld a, [wSelectedPage]                                 ; $4115: $fa $b9 $c0
    ld hl, wNumPages                                  ; $4118: $21 $ba $c0
    cp [hl]                                       ; $411b: $be
    jr nz, jr_001_412b                            ; $411c: $20 $0d

    xor a                                         ; $411e: $af
    ld [wMaxItemInCurrentPage], a                                 ; $411f: $ea $bb $c0
    ld [wSelectedROMinPage], a                                 ; $4122: $ea $b3 $c0
    ld [wSelectedPage], a                                 ; $4125: $ea $b9 $c0
    jp Jump_001_413c                              ; $4128: $c3 $3c $41


jr_001_412b:
    ld hl, wSelectedPage                                  ; $412b: $21 $b9 $c0
    inc [hl]                                      ; $412e: $34
    ld a, [wSelectedPage]                                 ; $412f: $fa $b9 $c0
    ld d, a                                       ; $4132: $57
    xor a                                         ; $4133: $af

jr_001_4134:
    add ROMS_PER_PAGE                             ; $4134: $c6 $06
    dec d                                         ; $4136: $15
    jr nz, jr_001_4134                            ; $4137: $20 $fb

    ld [wMaxItemInCurrentPage], a                                 ; $4139: $ea $bb $c0

Jump_001_413c:
    xor a                                         ; $413c: $af
    ld [wSelectedROMinPage], a                                 ; $413d: $ea $b3 $c0
    call Call_001_42b3                            ; $4140: $cd $b3 $42
    xor a                                         ; $4143: $af
    ld [wSelectedROMinPage], a                                 ; $4144: $ea $b3 $c0
    call Call_001_4287                            ; $4147: $cd $87 $42
    xor a                                         ; $414a: $af
    ld [wSelectedROMinPage], a                                 ; $414b: $ea $b3 $c0
    call Call_001_46ac                            ; $414e: $cd $ac $46
    ret                                           ; $4151: $c9


Call_001_4152:
    ld a, [wSelectedROMinPage]                                 ; $4152: $fa $b3 $c0
    cp $00                                        ; $4155: $fe $00
    jr nz, jr_001_4194                            ; $4157: $20 $3b

    ld a, [wSelectedPage]                                 ; $4159: $fa $b9 $c0
    ld hl, wNumPages                                  ; $415c: $21 $ba $c0
    cp [hl]                                       ; $415f: $be
    jr nz, jr_001_4185                            ; $4160: $20 $23

    ld hl, wNumItems                                  ; $4162: $21 $bc $c0
    ld a, [hl]                                    ; $4165: $7e
    dec a                                         ; $4166: $3d
    ld d, a                                       ; $4167: $57

Jump_001_4168:
    ld a, d                                       ; $4168: $7a
    cp ROMS_PER_PAGE                              ; $4169: $fe $06
    jr c, jr_001_4176                             ; $416b: $38 $09
REPT ROMS_PER_PAGE
    dec d
ENDR
    jp Jump_001_4168                              ; $4173: $c3 $68 $41


jr_001_4176:
    push af                                       ; $4176: $f5
    call Call_001_46d5                            ; $4177: $cd $d5 $46
    pop af                                        ; $417a: $f1
    ld [wSelectedROMinPage], a                                 ; $417b: $ea $b3 $c0
    call Call_001_46ac                            ; $417e: $cd $ac $46
IF !DEF(MENU_CN) && !DEF(MENU_108_CN)
    call Call_001_4287                            ; $4181: $cd $87 $42
ENDC
    ret                                           ; $4184: $c9


jr_001_4185:
    call Call_001_46d5                            ; $4185: $cd $d5 $46
    ld a, ROMS_PER_PAGE - 1                       ; $4188: $3e $05
    ld [wSelectedROMinPage], a                    ; $418a: $ea $b3 $c0
    call Call_001_46ac                            ; $418d: $cd $ac $46
    call Call_001_4287                            ; $4190: $cd $87 $42
    ret                                           ; $4193: $c9


jr_001_4194:
    push af                                       ; $4194: $f5
    call Call_001_46d5                            ; $4195: $cd $d5 $46
    pop af                                        ; $4198: $f1
    dec a                                         ; $4199: $3d
    ld [wSelectedROMinPage], a                                 ; $419a: $ea $b3 $c0
    push af                                       ; $419d: $f5
    call Call_001_46ac                            ; $419e: $cd $ac $46
    pop af                                        ; $41a1: $f1
    ld [wSelectedROMinPage], a                                 ; $41a2: $ea $b3 $c0
    call Call_001_4287                            ; $41a5: $cd $87 $42
    ret                                           ; $41a8: $c9


Call_001_41a9:
    ld a, [wSelectedPage]                         ; $41a9: $fa $b9 $c0
    ld hl, wNumPages                              ; $41ac: $21 $ba $c0
    cp [hl]                                       ; $41af: $be
    jr nz, jr_001_41d8                            ; $41b0: $20 $26

    cp $00                                        ; $41b2: $fe $00
    jr z, jr_001_41bd                             ; $41b4: $28 $07

    ld d, a                                       ; $41b6: $57
    xor a                                         ; $41b7: $af

jr_001_41b8:
    add ROMS_PER_PAGE                             ; $41b8: $c6 $06
    dec d                                         ; $41ba: $15
    jr nz, jr_001_41b8                            ; $41bb: $20 $fb

jr_001_41bd:
    ld hl, wSelectedROMinPage                     ; $41bd: $21 $b3 $c0
    add [hl]                                      ; $41c0: $86
    ld d, a                                       ; $41c1: $57
    ld hl, wNumItems                              ; $41c2: $21 $bc $c0
    ld a, [hl]                                    ; $41c5: $7e
    dec a                                         ; $41c6: $3d
    cp d                                          ; $41c7: $ba
    jr nz, jr_001_41ee                            ; $41c8: $20 $24

    call Call_001_46d5                            ; $41ca: $cd $d5 $46
    xor a                                         ; $41cd: $af
    ld [wSelectedROMinPage], a                    ; $41ce: $ea $b3 $c0
    call Call_001_46ac                            ; $41d1: $cd $ac $46
    call Call_001_4287                            ; $41d4: $cd $87 $42
    ret                                           ; $41d7: $c9


jr_001_41d8:
    ld a, [wSelectedROMinPage]                    ; $41d8: $fa $b3 $c0
    cp ROMS_PER_PAGE - 1                          ; $41db: $fe $05
    jr nz, jr_001_41ee                            ; $41dd: $20 $0f

    call Call_001_46d5                            ; $41df: $cd $d5 $46
    ld a, $00                                     ; $41e2: $3e $00
    ld [wSelectedROMinPage], a                    ; $41e4: $ea $b3 $c0
    call Call_001_46ac                            ; $41e7: $cd $ac $46
    call Call_001_4287                            ; $41ea: $cd $87 $42
    ret                                           ; $41ed: $c9


jr_001_41ee:
    ld a, [wSelectedROMinPage]                    ; $41ee: $fa $b3 $c0
    call Call_001_46d5                            ; $41f1: $cd $d5 $46
    ld a, [wSelectedROMinPage]                    ; $41f4: $fa $b3 $c0
    inc a                                         ; $41f7: $3c
    ld [wSelectedROMinPage], a                    ; $41f8: $ea $b3 $c0
    push af                                       ; $41fb: $f5
    call Call_001_46ac                            ; $41fc: $cd $ac $46
    pop af                                        ; $41ff: $f1
    ld [wSelectedROMinPage], a                    ; $4200: $ea $b3 $c0
    call Call_001_4287                            ; $4203: $cd $87 $42
    ret                                           ; $4206: $c9


Call_001_4207:
IF DEF(MENU_CN) || DEF(MENU_108_CN)
    ld de, $100a
ELSE
    ld de, $120b                                  ; $4207: $11 $0b $12
ENDC
    ld hl, $9882                                  ; $420a: $21 $82 $98

jr_001_420d:
    push hl                                       ; $420d: $e5
    ld a, $00                                     ; $420e: $3e $00

jr_001_4210:
    call LCD_Wait                                 ; $4210: $cd $42 $42
    ld [hl+], a                                   ; $4213: $22
    dec d                                         ; $4214: $15
    jr nz, jr_001_4210                            ; $4215: $20 $f9

    ld bc, $0020                                  ; $4217: $01 $20 $00
    pop hl                                        ; $421a: $e1
    add hl, bc                                    ; $421b: $09
    ld a, $10                                     ; $421c: $3e $10
    ld d, a                                       ; $421e: $57
    dec e                                         ; $421f: $1d
    jr nz, jr_001_420d                            ; $4220: $20 $eb

    ret                                           ; $4222: $c9


    ld b, $80                                     ; $4223: $06 $80
    jp Jump_001_422a                              ; $4225: $c3 $2a $42


    ld b, $83                                     ; $4228: $06 $83

Jump_001_422a:
    ld hl, $9881                                  ; $422a: $21 $81 $98
    ld de, $0020                                  ; $422d: $11 $20 $00
    ld a, [wSelectedROMinPage]                                 ; $4230: $fa $b3 $c0

Jump_001_4233:
    cp $00                                        ; $4233: $fe $00
    jp z, Jump_001_423d                           ; $4235: $ca $3d $42

    add hl, de                                    ; $4238: $19
    dec a                                         ; $4239: $3d
    jp Jump_001_4233                              ; $423a: $c3 $33 $42


Jump_001_423d:
    call LCD_Wait                                 ; $423d: $cd $42 $42
    ld [hl], b                                    ; $4240: $70
    ret                                           ; $4241: $c9


LCD_Wait::
    push af                                       ; $4242: $f5
.wait
    ldh a, [rSTAT]                                ; $4243: $f0 $41
    and $02                                       ; $4245: $e6 $02
    jp nz, .wait                                  ; $4247: $c2 $43 $42

    pop af                                        ; $424a: $f1
    ret                                           ; $424b: $c9


    ld hl, $9880                                  ; $424c: $21 $80 $98
    ld a, $0a                                     ; $424f: $3e $0a
    ld d, a                                       ; $4251: $57

Jump_001_4252:
    push hl                                       ; $4252: $e5
    ld a, $14                                     ; $4253: $3e $14
    ld e, a                                       ; $4255: $5f

Jump_001_4256:
    call LCD_Wait                                 ; $4256: $cd $42 $42
    ld a, $80                                     ; $4259: $3e $80
    ld [hl+], a                                   ; $425b: $22
    dec e                                         ; $425c: $1d
    jp nz, Jump_001_4256                          ; $425d: $c2 $56 $42

    pop hl                                        ; $4260: $e1
    dec d                                         ; $4261: $15
    jp nz, Jump_001_4266                          ; $4262: $c2 $66 $42

    ret                                           ; $4265: $c9


Jump_001_4266:
    ld bc, $0020                                  ; $4266: $01 $20 $00
    add hl, bc                                    ; $4269: $09
    jp Jump_001_4252                              ; $426a: $c3 $52 $42


IF !DEF(MENU_CN) && !DEF(MENU_108_CN)
MenuTitle::
    db {s:MENU_TITLE}

PrintTitles::
    ld hl, $9822                                  ; $427d: $21 $22 $98
    ld bc, MenuTitle                              ; $4280: $01 $6d $42
    call PrintGameTitle                           ; $4283: $cd $6f $43
    ret                                           ; $4286: $c9


Call_001_4287:
IF DEF(MENU) || DEF(MENU_61) || DEF(MENU_108)
    ld de, $00dc
ELSE
    ld de, $0078                                  ; $4287: $11 $78 $00
ENDC
    ld hl, BottomText                             ; $428a: $21 $99 $70
    ld a, [wSelectedPage]                                 ; $428d: $fa $b9 $c0

Jump_001_4290:
    cp $00                                        ; $4290: $fe $00
    jp z, Jump_001_429a                           ; $4292: $ca $9a $42

    add hl, de                                    ; $4295: $19
    dec a                                         ; $4296: $3d
    jp Jump_001_4290                              ; $4297: $c3 $90 $42


Jump_001_429a:
    ld de, $0014                                  ; $429a: $11 $14 $00
    ld a, [wSelectedROMinPage]                                 ; $429d: $fa $b3 $c0

Jump_001_42a0:
    cp $00                                        ; $42a0: $fe $00
    jp z, Jump_001_42aa                           ; $42a2: $ca $aa $42

    add hl, de                                    ; $42a5: $19
    dec a                                         ; $42a6: $3d
    jp Jump_001_42a0                              ; $42a7: $c3 $a0 $42


Jump_001_42aa:
    push hl                                       ; $42aa: $e5
    pop bc                                        ; $42ab: $c1
    ld hl, $9a20                                  ; $42ac: $21 $20 $9a
    call Call_001_4300                            ; $42af: $cd $00 $43
    ret                                           ; $42b2: $c9
ENDC

Call_001_42b3:
    ld hl, $9882                                  ; $42b3: $21 $82 $98
    ld de, $0010                                  ; $42b6: $11 $10 $00
    xor a                                         ; $42b9: $af
    ld [wSelectedROMinPage], a                                 ; $42ba: $ea $b3 $c0

Jump_001_42bd:
    ld a, [wMaxItemInCurrentPage]                                 ; $42bd: $fa $bb $c0
    ld d, a                                       ; $42c0: $57
    ld a, [wNumItems]                                 ; $42c1: $fa $bc $c0
    cp d                                          ; $42c4: $ba
    jp z, Jump_001_42ff                           ; $42c5: $ca $ff $42

    ld a, [wSelectedROMinPage]                                 ; $42c8: $fa $b3 $c0
    cp ROMS_PER_PAGE                                        ; $42cb: $fe $06
    jp z, Jump_001_42ff                           ; $42cd: $ca $ff $42

    push hl                                       ; $42d0: $e5
    push de                                       ; $42d1: $d5
    ld hl, MenuText                               ; $42d2: $21 $39 $6f
    ld de, $0010                                  ; $42d5: $11 $10 $00
    ld a, [wMaxItemInCurrentPage]                                 ; $42d8: $fa $bb $c0

Jump_001_42db:
    cp $00                                        ; $42db: $fe $00
    jp z, Jump_001_42e5                           ; $42dd: $ca $e5 $42

    add hl, de                                    ; $42e0: $19
    dec a                                         ; $42e1: $3d
    jp Jump_001_42db                              ; $42e2: $c3 $db $42


Jump_001_42e5:
    push hl                                       ; $42e5: $e5
    pop bc                                        ; $42e6: $c1
    pop de                                        ; $42e7: $d1
    pop hl                                        ; $42e8: $e1
    push hl                                       ; $42e9: $e5
IF DEF(MENU_CN) || DEF(MENU_108_CN)
    call Call_001_4300
ELSE
    call PrintGameTitle                           ; $42ea: $cd $6f $43
ENDC
    ld hl, wMaxItemInCurrentPage                                  ; $42ed: $21 $bb $c0
    inc [hl]                                      ; $42f0: $34
    ld hl, wSelectedROMinPage                                  ; $42f1: $21 $b3 $c0
    inc [hl]                                      ; $42f4: $34
    pop hl                                        ; $42f5: $e1
    push de                                       ; $42f6: $d5
IF DEF(MENU) || DEF(MENU_61) || DEF(MENU_108) || DEF(MENU_CN) || DEF(MENU_108_CN)
    ld de, $0020
ELSE
    ld de, $0040                                  ; $42f7: $11 $40 $00
ENDC
    add hl, de                                    ; $42fa: $19
    pop de                                        ; $42fb: $d1
    jp Jump_001_42bd                              ; $42fc: $c3 $bd $42


Jump_001_42ff:
    ret                                           ; $42ff: $c9


Call_001_4300:
IF DEF(MENU_CN) || DEF(MENU_108_CN)
    ld a, $10
ELSE
    ld a, $14                                     ; $4300: $3e $14
ENDC
    ld e, a                                       ; $4302: $5f

Jump_001_4303:
    ld a, [bc]                                    ; $4303: $0a
    cp $20                                        ; $4304: $fe $20
    jp nz, Jump_001_430e                          ; $4306: $c2 $0e $43

    ld a, $ab                                     ; $4309: $3e $ab
    jp Jump_001_432d                              ; $430b: $c3 $2d $43


Jump_001_430e:
    cp $30                                        ; $430e: $fe $30
    jp c, Jump_001_431d                           ; $4310: $da $1d $43

    cp $3a                                        ; $4313: $fe $3a
    jp nc, Jump_001_431d                          ; $4315: $d2 $1d $43

IF DEF(MENU_CN) || DEF(MENU_108_CN)
    add $50
ELSE
    add $80                                       ; $4318: $c6 $80
ENDC
    jp Jump_001_432d                              ; $431a: $c3 $2d $43


Jump_001_431d:
    cp $41                                        ; $431d: $fe $41
    jp c, Jump_001_432c                           ; $431f: $da $2c $43

    cp $5b                                        ; $4322: $fe $5b
    jp nc, Jump_001_432c                          ; $4324: $d2 $2c $43

IF DEF(MENU_CN) || DEF(MENU_108_CN)
    add $50
ELSE
    add $80                                       ; $4327: $c6 $80
ENDC
    jp Jump_001_432d                              ; $4329: $c3 $2d $43


Jump_001_432c:
IF !DEF(MENU_CN) && !DEF(MENU_108_CN)
    nop                                           ; $432c: $00
ENDC

Jump_001_432d:
    push af                                       ; $432d: $f5
    call LCD_Wait                                 ; $432e: $cd $42 $42
    pop af                                        ; $4331: $f1
    ld [hl], a                                    ; $4332: $77
    inc hl                                        ; $4333: $23
    inc bc                                        ; $4334: $03
    dec e                                         ; $4335: $1d
    jp nz, Jump_001_4303                          ; $4336: $c2 $03 $43

    ret                                           ; $4339: $c9


LoadFont::
    ld bc, Font                                   ; $433a: $01 $51 $72
    ld hl, $8800                                  ; $433d: $21 $00 $88
    ld de, $0170                                  ; $4340: $11 $70 $01

.copy_loop
    ld a, [bc]                                    ; $4343: $0a
    call LCD_Wait                                 ; $4344: $cd $42 $42
    ld [hl+], a                                   ; $4347: $22
    call LCD_Wait                                 ; $4348: $cd $42 $42
    ld [hl+], a                                   ; $434b: $22
    inc bc                                        ; $434c: $03
    dec de                                        ; $434d: $1b
    ld a, d                                       ; $434e: $7a
    or e                                          ; $434f: $b3
    jp nz, .copy_loop                             ; $4350: $c2 $43 $43

IF DEF(MENU_CN) || DEF(MENU_108_CN) ; copy font only once
    ret
ELSE

    ld bc, Font                                   ; $4353: $01 $51 $72
    ld hl, $8b00                                  ; $4356: $21 $00 $8b
    ld de, $0170                                  ; $4359: $11 $70 $01

.copy_loop2
    ld a, [bc]                                    ; $435c: $0a
    call LCD_Wait                                 ; $435d: $cd $42 $42
    ld [hl+], a                                   ; $4360: $22
    ld a, $00                                     ; $4361: $3e $00
    call LCD_Wait                                 ; $4363: $cd $42 $42
    ld [hl+], a                                   ; $4366: $22
    inc bc                                        ; $4367: $03
    dec de                                        ; $4368: $1b
    ld a, d                                       ; $4369: $7a
    or e                                          ; $436a: $b3
    jp nz, .copy_loop2                          ; $436b: $c2 $5c $43

    ret                                           ; $436e: $c9


PrintGameTitle::
    ld a, $10                                     ; $436f: $3e $10
    ld e, a                                       ; $4371: $5f

Jump_001_4372:
    ld a, [bc]                                    ; $4372: $0a
    cp $20                                        ; $4373: $fe $20
    jp nz, Jump_001_437d                          ; $4375: $c2 $7d $43

    ld a, $ab                                     ; $4378: $3e $ab
    jp PrintCharacter                             ; $437a: $c3 $9c $43


Jump_001_437d:
    cp $30                                        ; $437d: $fe $30
    jp c, Jump_001_438c                           ; $437f: $da $8c $43

    cp $3a                                        ; $4382: $fe $3a
    jp nc, Jump_001_438c                          ; $4384: $d2 $8c $43

    add $50                                       ; $4387: $c6 $50
    jp PrintCharacter                             ; $4389: $c3 $9c $43


Jump_001_438c:
    cp $41                                        ; $438c: $fe $41
    jp c, .end                                    ; $438e: $da $9b $43

    cp $5b                                        ; $4391: $fe $5b
    jp nc, .end                                   ; $4393: $d2 $9b $43

    add $50                                       ; $4396: $c6 $50
    jp PrintCharacter                             ; $4398: $c3 $9c $43
.end


IF DEF(MENU_18) || DEF(MENU_19) || DEF(MENU_20) || DEF(MENU_22)
    nop                                           ; $439b: $00
ENDC

PrintCharacter::
    push af                                       ; $439c: $f5
    call LCD_Wait                                 ; $439d: $cd $42 $42
    pop af                                        ; $43a0: $f1
    ld [hl], a                                    ; $43a1: $77
    inc hl                                        ; $43a2: $23
    inc bc                                        ; $43a3: $03
    dec e                                         ; $43a4: $1d
    jp nz, Jump_001_4372                          ; $43a5: $c2 $72 $43
    ret                                           ; $43a8: $c9
ENDC

ClearHRAM::
    ld hl, $dfff                                  ; $43a9: $21 $ff $df
IF DEF(MENU_108_CN)
    ld a, $00
ENDC
    ld c, $20                                     ; $43ac: $0e $20
    ld b, $00                                     ; $43ae: $06 $00
.erase_loop
    ld [hl-], a                                   ; $43b0: $32
    dec b                                         ; $43b1: $05
    jp nz, .erase_loop                            ; $43b2: $c2 $b0 $43
    dec c                                         ; $43b5: $0d
    jp nz, .erase_loop                            ; $43b6: $c2 $b0 $43
    ret                                           ; $43b9: $c9


ClearWRAM::
    ld hl, $feff                                  ; $43ba: $21 $ff $fe
    ld b, $00                                     ; $43bd: $06 $00
.erase_loop
    ld [hl-], a                                   ; $43bf: $32
    dec b                                         ; $43c0: $05
    jp nz, .erase_loop                            ; $43c1: $c2 $bf $43
    ret                                           ; $43c4: $c9

; never executed
    ld hl, $ffff                                  ; $43c5: $21 $ff $ff
    ld b, $80                                     ; $43c8: $06 $80

Jump_001_43ca:
    ld [hl-], a                                   ; $43ca: $32
    dec b                                         ; $43cb: $05
    jp nz, Jump_001_43ca                          ; $43cc: $c2 $ca $43

    ret                                           ; $43cf: $c9


EnableLCD::
    xor a                                         ; $43d0: $af
    ldh [rIF], a                                  ; $43d1: $e0 $0f
    ldh a, [rIE]                                  ; $43d3: $f0 $ff
    ld b, a                                       ; $43d5: $47
    res 0, a                                      ; $43d6: $cb $87
    ldh [rIE], a                                  ; $43d8: $e0 $ff
    ldh a, [rLCDC]                                ; $43da: $f0 $40
    add a                                         ; $43dc: $87
    ret nc                                        ; $43dd: $d0

Jump_001_43de:
    ldh a, [rLY]                                  ; $43de: $f0 $44
    cp $91                                        ; $43e0: $fe $91
    jp c, Jump_001_43de                           ; $43e2: $da $de $43

    ldh a, [rLCDC]                                ; $43e5: $f0 $40
    and $7f                                       ; $43e7: $e6 $7f
    ldh [rLCDC], a                                ; $43e9: $e0 $40
    ld a, b                                       ; $43eb: $78
    ldh [rIE], a                                  ; $43ec: $e0 $ff
    ret                                           ; $43ee: $c9


Call_001_43ef:
    ldh a, [rLCDC]                                ; $43ef: $f0 $40
    or $81                                        ; $43f1: $f6 $81
    and $e7                                       ; $43f3: $e6 $e7
    ldh [rLCDC], a                                ; $43f5: $e0 $40
    ret                                           ; $43f7: $c9


Call_001_43f8:
    ld a, [$c0ad]                                 ; $43f8: $fa $ad $c0
    ld [$c0af], a                                 ; $43fb: $ea $af $c0
    ld a, [$c0ae]                                 ; $43fe: $fa $ae $c0
    ld [$c0b0], a                                 ; $4401: $ea $b0 $c0
    call Call_001_4435                            ; $4404: $cd $35 $44
    ld a, [$c0ad]                                 ; $4407: $fa $ad $c0
    ld d, a                                       ; $440a: $57
    ld a, [$c0af]                                 ; $440b: $fa $af $c0
    ld [$c0ad], a                                 ; $440e: $ea $ad $c0
    ld a, [$c0ae]                                 ; $4411: $fa $ae $c0
    ld e, a                                       ; $4414: $5f
    ld a, [$c0b0]                                 ; $4415: $fa $b0 $c0
    ld [$c0ae], a                                 ; $4418: $ea $ae $c0
    call Call_001_4435                            ; $441b: $cd $35 $44
    ld a, [$c0ad]                                 ; $441e: $fa $ad $c0
    cp d                                          ; $4421: $ba
    jp nz, Jump_001_442a                          ; $4422: $c2 $2a $44

    ld a, [$c0ae]                                 ; $4425: $fa $ae $c0
    cp e                                          ; $4428: $bb
    ret z                                         ; $4429: $c8

Jump_001_442a:
    ld a, [$c0af]                                 ; $442a: $fa $af $c0
    ld [$c0ad], a                                 ; $442d: $ea $ad $c0
    xor a                                         ; $4430: $af
    ld [$c0ae], a                                 ; $4431: $ea $ae $c0
    ret                                           ; $4434: $c9


Call_001_4435:
    ld a, $20                                     ; $4435: $3e $20
    ldh [rP1], a                                  ; $4437: $e0 $00
    ldh a, [rP1]                                  ; $4439: $f0 $00
    ldh a, [rP1]                                  ; $443b: $f0 $00
    cpl                                           ; $443d: $2f
    and $0f                                       ; $443e: $e6 $0f
    ld b, a                                       ; $4440: $47
    ld a, $10                                     ; $4441: $3e $10
    ldh [rP1], a                                  ; $4443: $e0 $00
    ldh a, [rP1]                                  ; $4445: $f0 $00
    ldh a, [rP1]                                  ; $4447: $f0 $00
    ldh a, [rP1]                                  ; $4449: $f0 $00
    ldh a, [rP1]                                  ; $444b: $f0 $00
    ldh a, [rP1]                                  ; $444d: $f0 $00
    ldh a, [rP1]                                  ; $444f: $f0 $00
    cpl                                           ; $4451: $2f
    and $0f                                       ; $4452: $e6 $0f
    swap a                                        ; $4454: $cb $37
    or b                                          ; $4456: $b0
    ld c, a                                       ; $4457: $4f
    ld a, [$c0ad]                                 ; $4458: $fa $ad $c0
    xor c                                         ; $445b: $a9
    and c                                         ; $445c: $a1
    ld [$c0ae], a                                 ; $445d: $ea $ae $c0
    ld a, c                                       ; $4460: $79
    ld [$c0ad], a                                 ; $4461: $ea $ad $c0
    ld a, $30                                     ; $4464: $3e $30
    ldh [rP1], a                                  ; $4466: $e0 $00
    ret                                           ; $4468: $c9


Call_001_4469:
    ld hl, $8ff0                                  ; $4469: $21 $f0 $8f
    ld de, $0008                                  ; $446c: $11 $08 $00

Jump_001_446f:
    ld a, $00                                     ; $446f: $3e $00
    push af                                       ; $4471: $f5
    call LCD_Wait                                 ; $4472: $cd $42 $42
    pop af                                        ; $4475: $f1
    ld [hl+], a                                   ; $4476: $22
    ld a, $ff                                     ; $4477: $3e $ff
    push af                                       ; $4479: $f5
    call LCD_Wait                                 ; $447a: $cd $42 $42
    pop af                                        ; $447d: $f1
    ld [hl+], a                                   ; $447e: $22
    dec de                                        ; $447f: $1b
    ld a, d                                       ; $4480: $7a
    or e                                          ; $4481: $b3
    jp nz, Jump_001_446f                          ; $4482: $c2 $6f $44

    ret                                           ; $4485: $c9


ClearVRAM::
    ld hl, $8000                                  ; $4486: $21 $00 $80
    ld bc, $2000                                  ; $4489: $01 $00 $20
.erase_loop
    ld a, $00                                     ; $448c: $3e $00
    ld [hl+], a                                   ; $448e: $22
    dec bc                                        ; $448f: $0b
    ld a, b                                       ; $4490: $78
    or c                                          ; $4491: $b1
    jp nz, .erase_loop                            ; $4492: $c2 $8c $44
    ret                                           ; $4495: $c9


Call_001_4496:
    ld hl, $99e0                                  ; $4496: $21 $e0 $99
    ld de, $0014                                  ; $4499: $11 $14 $00

Jump_001_449c:
    push hl                                       ; $449c: $e5
    push hl                                       ; $449d: $e5
IF DEF(MENU_CN)
    ld a, $00
ELSE
    ld a, $ff                                     ; $449e: $3e $ff
ENDC
    call LCD_Wait                                 ; $44a0: $cd $42 $42
    ld [hl], a                                    ; $44a3: $77
    pop hl                                        ; $44a4: $e1
    ld bc, $0020                                  ; $44a5: $01 $20 $00
    add hl, bc                                    ; $44a8: $09
IF DEF(MENU_CN)
    ld a, $00
ELSE
    ld a, $ff                                     ; $44a9: $3e $ff
ENDC
    call LCD_Wait                                 ; $44ab: $cd $42 $42
    ld [hl], a                                    ; $44ae: $77
    pop hl                                        ; $44af: $e1
    inc hl                                        ; $44b0: $23
    dec de                                        ; $44b1: $1b
    ld a, d                                       ; $44b2: $7a
    or e                                          ; $44b3: $b3
    jp nz, Jump_001_449c                          ; $44b4: $c2 $9c $44
    ret                                           ; $44b7: $c9

IF DEF(MENU_CN) || DEF(MENU_108_CN)
Call_001_4287::
ENDC
Call_001_44b8::
    call Call_001_4496                            ; $44b8: $cd $96 $44
    call Call_001_451e                            ; $44bb: $cd $1e $45
    call Call_001_44c2                            ; $44be: $cd $c2 $44
    ret                                           ; $44c1: $c9


Call_001_44c2:
    ld a, [wSelectedPage]                                 ; $44c2: $fa $b9 $c0
    cp $00                                        ; $44c5: $fe $00
    jp z, Jump_001_44d7                           ; $44c7: $ca $d7 $44

    ld d, a                                       ; $44ca: $57
    ld a, [wSelectedROMinPage]                                 ; $44cb: $fa $b3 $c0

Jump_001_44ce:
    add $0a                                       ; $44ce: $c6 $0a
    dec d                                         ; $44d0: $15
    jp nz, Jump_001_44ce                          ; $44d1: $c2 $ce $44

    jp Jump_001_44da                              ; $44d4: $c3 $da $44


Jump_001_44d7:
    ld a, [wSelectedROMinPage]                                 ; $44d7: $fa $b3 $c0

Jump_001_44da:
    ld [$c0b5], a                                 ; $44da: $ea $b5 $c0
    ld e, a                                       ; $44dd: $5f
    xor a                                         ; $44de: $af
    ld d, a                                       ; $44df: $57
    ld hl, GraphicData+$168;  $4cd8               ; $44e0: $21 $d8 $4c
    add hl, de                                    ; $44e3: $19
    ld a, [hl]                                    ; $44e4: $7e
    ld c, a                                       ; $44e5: $4f
    ld a, $0a                                     ; $44e6: $3e $0a
    sub c                                         ; $44e8: $91
    ld e, a                                       ; $44e9: $5f
    xor a                                         ; $44ea: $af
    ld d, a                                       ; $44eb: $57
    ld hl, $99e0                                  ; $44ec: $21 $e0 $99
    add hl, de                                    ; $44ef: $19
    ld a, $54                                     ; $44f0: $3e $54
    ld b, a                                       ; $44f2: $47

Jump_001_44f3:
    push hl                                       ; $44f3: $e5
    push hl                                       ; $44f4: $e5
    ld a, b                                       ; $44f5: $78
    call LCD_Wait                                 ; $44f6: $cd $42 $42
    ld [hl], a                                    ; $44f9: $77
    inc b                                         ; $44fa: $04
    inc b                                         ; $44fb: $04
    inc hl                                        ; $44fc: $23
    ld a, b                                       ; $44fd: $78
    call LCD_Wait                                 ; $44fe: $cd $42 $42
    ld [hl], a                                    ; $4501: $77
    pop hl                                        ; $4502: $e1
    ld de, $0020                                  ; $4503: $11 $20 $00
    add hl, de                                    ; $4506: $19
    dec b                                         ; $4507: $05
    ld a, b                                       ; $4508: $78
    call LCD_Wait                                 ; $4509: $cd $42 $42
    ld [hl], a                                    ; $450c: $77
    inc hl                                        ; $450d: $23
    inc b                                         ; $450e: $04
    inc b                                         ; $450f: $04
    ld a, b                                       ; $4510: $78
    call LCD_Wait                                 ; $4511: $cd $42 $42
    ld [hl], a                                    ; $4514: $77
    pop hl                                        ; $4515: $e1
    inc b                                         ; $4516: $04
    inc hl                                        ; $4517: $23
    inc hl                                        ; $4518: $23
    dec c                                         ; $4519: $0d
    jp nz, Jump_001_44f3                          ; $451a: $c2 $f3 $44

    ret                                           ; $451d: $c9


Call_001_451e:
    ld a, [wSelectedPage]                         ; $451e: $fa $b9 $c0
    cp $00                                        ; $4521: $fe $00
    jp z, Jump_001_4533                           ; $4523: $ca $33 $45

    ld d, a                                       ; $4526: $57
    ld a, [wSelectedROMinPage]                    ; $4527: $fa $b3 $c0

Jump_001_452a:
    add $0a                                       ; $452a: $c6 $0a
    dec d                                         ; $452c: $15
    jp nz, Jump_001_452a                          ; $452d: $c2 $2a $45

    jp Jump_001_4536                              ; $4530: $c3 $36 $45


Jump_001_4533:
    ld a, [wSelectedROMinPage]                                 ; $4533: $fa $b3 $c0

Jump_001_4536:
    ld [$c0b4], a                                 ; $4536: $ea $b4 $c0
    ld hl, GraphicData+$168 ; $4cd8               ; $4539: $21 $d8 $4c
    ld c, a                                       ; $453c: $4f
    xor a                                         ; $453d: $af
    ld b, a                                       ; $453e: $47
    add hl, bc                                    ; $453f: $09
    ld a, [hl]                                    ; $4540: $7e
    ld [$c0b5], a                                 ; $4541: $ea $b5 $c0
    ld a, [$c0b4]                                 ; $4544: $fa $b4 $c0
    cp $00                                        ; $4547: $fe $00
    jp z, Jump_001_456a                           ; $4549: $ca $6a $45

    ld bc, $0000                                  ; $454c: $01 $00 $00
    ld hl, GraphicData+$168 ; $4cd8               ; $454f: $21 $d8 $4c

Jump_001_4552:
    ld a, [hl+]                                   ; $4552: $2a
    add c                                         ; $4553: $81
    ld c, a                                       ; $4554: $4f
    ld a, $00                                     ; $4555: $3e $00
    adc b                                         ; $4557: $88
    ld b, a                                       ; $4558: $47
    ld a, [$c0b4]                                 ; $4559: $fa $b4 $c0
    dec a                                         ; $455c: $3d
    ld [$c0b4], a                                 ; $455d: $ea $b4 $c0
    jp nz, Jump_001_4552                          ; $4560: $c2 $52 $45

    ld hl, UnknownData                            ; $4563: $21 $ec $6c
    add hl, bc                                    ; $4566: $09
    jp Jump_001_456d                              ; $4567: $c3 $6d $45


Jump_001_456a:
    ld hl, UnknownData                            ; $456a: $21 $ec $6c

Jump_001_456d:
    ld a, [$c0b5]                                 ; $456d: $fa $b5 $c0
    ld bc, $9540                                  ; $4570: $01 $40 $95

Jump_001_4573:
    push af                                       ; $4573: $f5
    ld a, [hl+]                                   ; $4574: $2a
    push hl                                       ; $4575: $e5
    push bc                                       ; $4576: $c5
    sub $01                                       ; $4577: $d6 $01
    ld c, a                                       ; $4579: $4f
    xor a                                         ; $457a: $af
    ld b, a                                       ; $457b: $47
    sla c                                         ; $457c: $cb $21
    rl b                                          ; $457e: $cb $10
    sla c                                         ; $4580: $cb $21
    rl b                                          ; $4582: $cb $10
    sla c                                         ; $4584: $cb $21
    rl b                                          ; $4586: $cb $10
    sla c                                         ; $4588: $cb $21
    rl b                                          ; $458a: $cb $10
    sla c                                         ; $458c: $cb $21
    rl b                                          ; $458e: $cb $10
IF DEF(MENU_CN) || DEF(MENU_108_CN)
    ld hl, SubtitleCharacters
ELSE
    ld hl, GraphicData+$1dc; $4d4c                ; $4590: $21 $4c $4d
ENDC
    add hl, bc                                    ; $4593: $09
    ld de, $0020                                  ; $4594: $11 $20 $00
    pop bc                                        ; $4597: $c1

Jump_001_4598:
    ld a, [hl+]                                   ; $4598: $2a
    push af                                       ; $4599: $f5
    call LCD_Wait                                 ; $459a: $cd $42 $42
    ld [bc], a                                    ; $459d: $02
    inc bc                                        ; $459e: $03
    pop af                                        ; $459f: $f1
    xor a                                         ; $45a0: $af
    call LCD_Wait                                 ; $45a1: $cd $42 $42
    ld [bc], a                                    ; $45a4: $02
    inc bc                                        ; $45a5: $03
    dec de                                        ; $45a6: $1b
    ld a, d                                       ; $45a7: $7a
    or e                                          ; $45a8: $b3
    jp nz, Jump_001_4598                          ; $45a9: $c2 $98 $45

    pop hl                                        ; $45ac: $e1
    pop af                                        ; $45ad: $f1
    dec a                                         ; $45ae: $3d
    jp nz, Jump_001_4573                          ; $45af: $c2 $73 $45

    ret                                           ; $45b2: $c9


HRAMCode::
    LOAD UNION "HRAM code", HRAM[$ff80]
ChangeMapperAndJumpToGame::
    ld a, [wSelectedPage]
    cp $00
    jp z, .page_is_zero
    ld d, a
    ld a, [wSelectedROMinPage]
.jp_ff8c
    add ROMS_PER_PAGE                             ; $45bf: $c6 $06
    dec d                                         ; $45c1: $15
    jp nz, .jp_ff8c                               ; $45c2: $c2 $8c $ff
    jp .jp_ff98                                   ; $45c5: $c3 $98 $ff
.page_is_zero
    ld a, [wSelectedROMinPage]                                 ; $45c8: $fa $b3 $c0
.jp_ff98
    ld [$c0b5], a                                 ; $45cb: $ea $b5 $c0
    di                                            ; $45ce: $f3
    ld e, a                                       ; $45cf: $5f
    xor a                                         ; $45d0: $af
    ld d, a                                       ; $45d1: $57
    sla e                                         ; $45d2: $cb $23
    rl d                                          ; $45d4: $cb $12
    sla e                                         ; $45d6: $cb $23
    rl d                                          ; $45d8: $cb $12
    ld hl, MenuParam                              ; $45da: $21 $fe $46
    add hl, de                                    ; $45dd: $19
    push hl                                       ; $45de: $e5
    pop bc                                        ; $45df: $c1
    ld a, [bc]                                    ; $45e0: $0a
    push af                                       ; $45e1: $f5
    inc bc                                        ; $45e2: $03
    ld a, [bc]                                    ; $45e3: $0a
    push af                                       ; $45e4: $f5
    inc bc                                        ; $45e5: $03
    ld a, [bc]                                    ; $45e6: $0a
    push af                                       ; $45e7: $f5
    inc bc                                        ; $45e8: $03
    ld a, [bc]                                    ; $45e9: $0a
    ld [$7000], a                                 ; $45ea: $ea $00 $70
    nop                                           ; $45ed: $00
    nop                                           ; $45ee: $00
    nop                                           ; $45ef: $00
    pop af                                        ; $45f0: $f1
    ld [$7001], a                                 ; $45f1: $ea $01 $70
    nop                                           ; $45f4: $00
    nop                                           ; $45f5: $00
    nop                                           ; $45f6: $00
    pop af                                        ; $45f7: $f1
    ld [$7002], a                                 ; $45f8: $ea $02 $70
    nop                                           ; $45fb: $00
    nop                                           ; $45fc: $00
    nop                                           ; $45fd: $00
    nop                                           ; $45fe: $00
    nop                                           ; $45ff: $00
    nop                                           ; $4600: $00
IF DEF(MENU_108_CN)
    nop
    nop
    nop
ENDC
    ld a, $01                                     ; $4601: $3e $01
    ld [$2000], a                                 ; $4603: $ea $00 $20
    ld a, $00                                     ; $4606: $3e $00
    ld [$3000], a                                 ; $4608: $ea $00 $30
    nop                                           ; $460b: $00
    nop                                           ; $460c: $00
    nop                                           ; $460d: $00
    nop                                           ; $460e: $00
    nop                                           ; $460f: $00
    nop                                           ; $4610: $00
    IF DEF(MENU_108_CN)
        nop
        nop
        nop
    ENDC
    IF DEF(MENU_108)
        call ClearHRAM
        call ClearWRAM
        call ClearVRAM
    ENDC
    pop af                                        ; $4611: $f1
    jp Boot                                       ; $4612: $c3 $00 $01

    IF !DEF(MENU_20)
        ld a, [$c0b8]                                 ; $4615: $fa $b8 $c0
        jp Jump_000_0150                              ; $4618: $c3 $50 $01
    ENDC
    ENDL


LoadGraphicData:
    call LoadVRAMData                             ; $461b: $cd $25 $46
    call LoadBackgroundMap                        ; $461e: $cd $43 $46
    call LoadPaletteData                          ; $4621: $cd $66 $46
    ret                                           ; $4624: $c9


LoadVRAMData::
    ld hl, Super108In                             ; $4625: $21 $56 $47
    ld de, $0800                                  ; $4628: $11 $00 $08
    ld bc, $9000                                  ; $462b: $01 $00 $90
    call CopyVRAMData                             ; $462e: $cd $37 $46
    ld bc, $8800                                  ; $4631: $01 $00 $88
    ld de, $0800                                  ; $4634: $11 $00 $08
; fallthrough

CopyVRAMData:
.start
    ld a, [hl+]                                   ; $4637: $2a
    call LCD_Wait                                 ; $4638: $cd $42 $42
    ld [bc], a                                    ; $463b: $02
    inc bc                                        ; $463c: $03
    dec de                                        ; $463d: $1b
    ld a, e                                       ; $463e: $7b
    or d                                          ; $463f: $b2
    jr nz, .start                            ; $4640: $20 $f5

    ret                                           ; $4642: $c9


LoadBackgroundMap::
    ld hl, $9800                                  ; $4643: $21 $00 $98
IF DEF(MENU_CN) || DEF(MENU_108_CN)
    ld de, $0414
ELSE
    ld de, $1214                                  ; $4646: $11 $14 $12
ENDC
    ld bc, BackgroundMap                          ; $4649: $01 $88 $49

.copy_loop
    ld a, [bc]                                    ; $464c: $0a
    inc bc                                        ; $464d: $03
    call LCD_Wait                                 ; $464e: $cd $42 $42
    ld [hl], a                                    ; $4651: $77
    inc hl                                        ; $4652: $23
    dec e                                         ; $4653: $1d
    jr nz, .copy_loop                             ; $4654: $20 $f6

    dec d                                         ; $4656: $15
    jr z, .ret                                    ; $4657: $28 $0c

    push de                                       ; $4659: $d5
    ld de, $000c                                  ; $465a: $11 $0c $00
    add hl, de                                    ; $465d: $19
    pop de                                        ; $465e: $d1
    ld a, $14                                     ; $465f: $3e $14
    ld e, a                                       ; $4661: $5f
    jp .copy_loop                                 ; $4662: $c3 $4c $46

.ret
    ret                                           ; $4665: $c9


LoadPaletteData::
    ld hl, PaletteData                            ; $4666: $21 $f0 $4a
    ld a, $40                                     ; $4669: $3e $40
    ld d, a                                       ; $466b: $57
    ld a, $80                                     ; $466c: $3e $80
    ldh [rBCPS], a                                ; $466e: $e0 $68

jr_001_4670:
    ld a, [hl+]                                   ; $4670: $2a
    call LCD_Wait                                 ; $4671: $cd $42 $42
    ldh [rBCPD], a                                ; $4674: $e0 $69
    dec d                                         ; $4676: $15
    jr nz, jr_001_4670                            ; $4677: $20 $f7

    ret                                           ; $4679: $c9


    ld a, [$c0b8]                                 ; $467a: $fa $b8 $c0
    cp $11                                        ; $467d: $fe $11
    jr nz, jr_001_46ab                            ; $467f: $20 $2a

    ld a, $01                                     ; $4681: $3e $01
    ldh [rVBK], a                                 ; $4683: $e0 $4f
    ld hl, $9800                                  ; $4685: $21 $00 $98
    ld de, $1214                                  ; $4688: $11 $14 $12
    ld bc, GraphicData                            ; $468b: $01 $70 $4b

Jump_001_468e:
jr_001_468e:
    ld a, [bc]                                    ; $468e: $0a
    inc bc                                        ; $468f: $03
    call LCD_Wait                                 ; $4690: $cd $42 $42
    ld [hl], a                                    ; $4693: $77
    inc hl                                        ; $4694: $23
    dec e                                         ; $4695: $1d
    jr nz, jr_001_468e                            ; $4696: $20 $f6

    dec d                                         ; $4698: $15
    jr z, jr_001_46a7                             ; $4699: $28 $0c

    push de                                       ; $469b: $d5
    ld de, $000c                                  ; $469c: $11 $0c $00
    add hl, de                                    ; $469f: $19
    pop de                                        ; $46a0: $d1
    ld a, $14                                     ; $46a1: $3e $14
    ld e, a                                       ; $46a3: $5f
    jp Jump_001_468e                              ; $46a4: $c3 $8e $46

jr_001_46a7:
    ld a, $00                                     ; $46a7: $3e $00
    ldh [rVBK], a                                 ; $46a9: $e0 $4f

jr_001_46ab:
    ret                                           ; $46ab: $c9

Call_001_46ac:
    ld hl, $9881                                  ; $46ac: $21 $81 $98
    ld a, [wSelectedROMinPage]                    ; $46af: $fa $b3 $c0
    ld e, a                                       ; $46b2: $5f
    xor a                                         ; $46b3: $af
    ld d, a                                       ; $46b4: $57
    sla e                                         ; $46b5: $cb $23
    rl d                                          ; $46b7: $cb $12
    sla e                                         ; $46b9: $cb $23
    rl d                                          ; $46bb: $cb $12
    sla e                                         ; $46bd: $cb $23
    rl d                                          ; $46bf: $cb $12
    sla e                                         ; $46c1: $cb $23
    rl d                                          ; $46c3: $cb $12
    sla e                                         ; $46c5: $cb $23
    rl d                                          ; $46c7: $cb $12
IF !DEF(MENU) && !DEF(MENU_61) && !DEF(MENU_108) && !DEF(MENU_CN) && !DEF(MENU_108_CN)
    sla e                                         ; $46c9: $cb $23
    rl d                                          ; $46cb: $cb $12
ENDC
    add hl, de                                    ; $46cd: $19
    ld a, $ac                                     ; $46ce: $3e $ac
    call LCD_Wait                                 ; $46d0: $cd $42 $42
    ld [hl+], a                                   ; $46d3: $22
    ret                                           ; $46d4: $c9


Call_001_46d5:
    ld hl, $9881                                  ; $46d5: $21 $81 $98
    ld a, [wSelectedROMinPage]                    ; $46d8: $fa $b3 $c0
    ld e, a                                       ; $46db: $5f
    xor a                                         ; $46dc: $af
    ld d, a                                       ; $46dd: $57
    sla e                                         ; $46de: $cb $23
    rl d                                          ; $46e0: $cb $12
    sla e                                         ; $46e2: $cb $23
    rl d                                          ; $46e4: $cb $12
    sla e                                         ; $46e6: $cb $23
    rl d                                          ; $46e8: $cb $12
    sla e                                         ; $46ea: $cb $23
    rl d                                          ; $46ec: $cb $12
    sla e                                         ; $46ee: $cb $23
    rl d                                          ; $46f0: $cb $12
IF !DEF(MENU) && !DEF(MENU_61) && !DEF(MENU_108) && !DEF(MENU_CN) && !DEF(MENU_108_CN)
    sla e                                         ; $46f2: $cb $23
    rl d                                          ; $46f4: $cb $12
ENDC
    add hl, de                                    ; $46f6: $19
    ld a, $ab                                     ; $46f7: $3e $ab
    call LCD_Wait                                 ; $46f9: $cd $42 $42
    ld [hl+], a                                   ; $46fc: $22
    ret                                           ; $46fd: $c9

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

IF DEF(MENU)
	ds $6000 - @, 0x00
	ds $8000 - @, 0xff
ENDC
