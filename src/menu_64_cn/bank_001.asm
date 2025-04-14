; Disassembly of "menu_64_cn.gbc"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    call EnableLCD                            ; $4000: $cd $b4 $42
    call Call_001_42a1                            ; $4003: $cd $a1 $42
    call Call_001_438f                            ; $4006: $cd $8f $43
    xor a                                         ; $4009: $af
    ldh [rSCY], a                                 ; $400a: $e0 $42
    ldh [rSCX], a                                 ; $400c: $e0 $43
    ldh [rSTAT], a                                ; $400e: $e0 $41
    ldh [rWY], a                                  ; $4010: $e0 $4a
    ld a, $07                                     ; $4012: $3e $07
    ldh [rWX], a                                  ; $4014: $e0 $4b
    ld a, $e4                                     ; $4016: $3e $e4
    ldh [rBGP], a                                 ; $4018: $e0 $47
    ldh [rOBP0], a                                ; $401a: $e0 $48
    ld a, $1b                                     ; $401c: $3e $1b
    ldh [rOBP1], a                                ; $401e: $e0 $49
    ld a, $c0                                     ; $4020: $3e $c0
    ldh [rLCDC], a                                ; $4022: $e0 $40
    xor a                                         ; $4024: $af
    ldh [rIF], a                                  ; $4025: $e0 $0f
    ldh [rNR52], a                                ; $4027: $e0 $26
    call Call_001_4351                            ; $4029: $cd $51 $43
    call Call_001_44d1                            ; $402c: $cd $d1 $44
    call Call_001_4276                            ; $402f: $cd $76 $42
    call Call_001_4372                            ; $4032: $cd $72 $43
    xor a                                         ; $4035: $af
    ld [$c800], a                                 ; $4036: $ea $00 $c8
    ld [$c801], a                                 ; $4039: $ea $01 $c8
    ld [$c805], a                                 ; $403c: $ea $05 $c8
    ld a, $40                                     ; $403f: $3e $40
    ld [$c802], a                                 ; $4041: $ea $02 $c8
    ld a, $06                                     ; $4044: $3e $06
    ld [$c804], a                                 ; $4046: $ea $04 $c8
    call Call_001_420e                            ; $4049: $cd $0e $42
    ld a, $00                                     ; $404c: $3e $00
    ld [$c803], a                                 ; $404e: $ea $03 $c8
    call Call_001_41c9                            ; $4051: $cd $c9 $41
    call Call_001_43ad                            ; $4054: $cd $ad $43
    call Call_001_4436                            ; $4057: $cd $36 $44
    pop af                                        ; $405a: $f1
    ld [$d000], a                                 ; $405b: $ea $00 $d0
    call Call_001_42d7                            ; $405e: $cd $d7 $42

Jump_001_4061:
    call $62ce                                    ; $4061: $cd $ce $62
    call Call_001_42e0                            ; $4064: $cd $e0 $42
    ld a, [$dee7]                                 ; $4067: $fa $e7 $de
    cp $08                                        ; $406a: $fe $08
    jp nz, Jump_001_4075                          ; $406c: $c2 $75 $40

    call Call_001_417a                            ; $406f: $cd $7a $41
    jp Jump_001_4061                              ; $4072: $c3 $61 $40


Jump_001_4075:
    cp $04                                        ; $4075: $fe $04
    jp nz, Jump_001_4080                          ; $4077: $c2 $80 $40

    call Call_001_4148                            ; $407a: $cd $48 $41
    jp Jump_001_4061                              ; $407d: $c3 $61 $40


Jump_001_4080:
    cp $10                                        ; $4080: $fe $10
    jp nz, Jump_001_408b                          ; $4082: $c2 $8b $40

    call Call_001_4100                            ; $4085: $cd $00 $41
    jp Jump_001_4061                              ; $4088: $c3 $61 $40


Jump_001_408b:
    cp $20                                        ; $408b: $fe $20
    jp nz, Jump_001_4096                          ; $408d: $c2 $96 $40

    call Call_001_40b7                            ; $4090: $cd $b7 $40
    jp Jump_001_4061                              ; $4093: $c3 $61 $40


Jump_001_4096:
    cp $80                                        ; $4096: $fe $80
    jp nz, Jump_001_409e                          ; $4098: $c2 $9e $40

    jp Jump_001_40a1                              ; $409b: $c3 $a1 $40


Jump_001_409e:
    jp Jump_001_4061                              ; $409e: $c3 $61 $40


Jump_001_40a1:
    di                                            ; $40a1: $f3
    ld hl, $65c6                                  ; $40a2: $21 $c6 $65
    ld bc, $ff80                                  ; $40a5: $01 $80 $ff
    ld de, $0080                                  ; $40a8: $11 $80 $00

Jump_001_40ab:
    ld a, [hl+]                                   ; $40ab: $2a
    ld [bc], a                                    ; $40ac: $02
    inc bc                                        ; $40ad: $03
    dec de                                        ; $40ae: $1b
    ld a, d                                       ; $40af: $7a
    or e                                          ; $40b0: $b3
    jp nz, Jump_001_40ab                          ; $40b1: $c2 $ab $40

    jp $ff80                                      ; $40b4: $c3 $80 $ff


Call_001_40b7:
    ld a, [$c802]                                 ; $40b7: $fa $02 $c8
    cp $0a                                        ; $40ba: $fe $0a
    jp nc, Jump_001_40c0                          ; $40bc: $d2 $c0 $40

    ret                                           ; $40bf: $c9


Jump_001_40c0:
    ld a, [$c805]                                 ; $40c0: $fa $05 $c8
    cp $00                                        ; $40c3: $fe $00
    jp nz, Jump_001_40c9                          ; $40c5: $c2 $c9 $40

    ret                                           ; $40c8: $c9


Jump_001_40c9:
    ld hl, $c805                                  ; $40c9: $21 $05 $c8
    dec [hl]                                      ; $40cc: $35
    ld a, [hl]                                    ; $40cd: $7e
    push af                                       ; $40ce: $f5
    xor a                                         ; $40cf: $af
    ld [$c800], a                                 ; $40d0: $ea $00 $c8

Jump_001_40d3:
    ld a, [hl]                                    ; $40d3: $7e
    cp $00                                        ; $40d4: $fe $00
    jp z, Jump_001_40e5                           ; $40d6: $ca $e5 $40

    ld a, [$c800]                                 ; $40d9: $fa $00 $c8
    add $0a                                       ; $40dc: $c6 $0a
    ld [$c800], a                                 ; $40de: $ea $00 $c8
    dec [hl]                                      ; $40e1: $35
    jp Jump_001_40d3                              ; $40e2: $c3 $d3 $40


Jump_001_40e5:
    pop af                                        ; $40e5: $f1
    ld [$c805], a                                 ; $40e6: $ea $05 $c8
    call Call_001_41ed                            ; $40e9: $cd $ed $41
    call Call_001_420e                            ; $40ec: $cd $0e $42
    xor a                                         ; $40ef: $af
    ld [$c803], a                                 ; $40f0: $ea $03 $c8
    call Call_001_43ad                            ; $40f3: $cd $ad $43
    call Call_001_4436                            ; $40f6: $cd $36 $44
    call Call_001_43d2                            ; $40f9: $cd $d2 $43
    call Call_001_41c9                            ; $40fc: $cd $c9 $41
    ret                                           ; $40ff: $c9


Call_001_4100:
    ld a, [$c802]                                 ; $4100: $fa $02 $c8
    cp $0a                                        ; $4103: $fe $0a
    jp nc, Jump_001_4109                          ; $4105: $d2 $09 $41

    ret                                           ; $4108: $c9


Jump_001_4109:
    ld a, [$c804]                                 ; $4109: $fa $04 $c8
    ld hl, $c805                                  ; $410c: $21 $05 $c8
    cp [hl]                                       ; $410f: $be
    jp nz, Jump_001_4114                          ; $4110: $c2 $14 $41

    ret                                           ; $4113: $c9


Jump_001_4114:
    inc [hl]                                      ; $4114: $34
    ld a, [hl]                                    ; $4115: $7e
    push af                                       ; $4116: $f5
    xor a                                         ; $4117: $af
    ld [$c800], a                                 ; $4118: $ea $00 $c8

Jump_001_411b:
    ld a, [hl]                                    ; $411b: $7e
    cp $00                                        ; $411c: $fe $00
    jp z, Jump_001_412d                           ; $411e: $ca $2d $41

    ld a, [$c800]                                 ; $4121: $fa $00 $c8
    add $0a                                       ; $4124: $c6 $0a
    ld [$c800], a                                 ; $4126: $ea $00 $c8
    dec [hl]                                      ; $4129: $35
    jp Jump_001_411b                              ; $412a: $c3 $1b $41


Jump_001_412d:
    pop af                                        ; $412d: $f1
    ld [$c805], a                                 ; $412e: $ea $05 $c8
    call Call_001_41ed                            ; $4131: $cd $ed $41
    call Call_001_420e                            ; $4134: $cd $0e $42
    xor a                                         ; $4137: $af
    ld [$c803], a                                 ; $4138: $ea $03 $c8
    call Call_001_43ad                            ; $413b: $cd $ad $43
    call Call_001_4436                            ; $413e: $cd $36 $44
    call Call_001_43d2                            ; $4141: $cd $d2 $43
    call Call_001_41c9                            ; $4144: $cd $c9 $41
    ret                                           ; $4147: $c9


Call_001_4148:
    ld a, [$c803]                                 ; $4148: $fa $03 $c8
    cp $00                                        ; $414b: $fe $00
    jp nz, Jump_001_4167                          ; $414d: $c2 $67 $41

    ld a, [$c805]                                 ; $4150: $fa $05 $c8
    cp $00                                        ; $4153: $fe $00
    jp nz, Jump_001_4159                          ; $4155: $c2 $59 $41

    ret                                           ; $4158: $c9


Jump_001_4159:
    call Call_001_40b7                            ; $4159: $cd $b7 $40
    call Call_001_41c4                            ; $415c: $cd $c4 $41
    ld a, $00                                     ; $415f: $3e $00
    ld [$c803], a                                 ; $4161: $ea $03 $c8
    jp Jump_001_41c9                              ; $4164: $c3 $c9 $41


Jump_001_4167:
    call Call_001_41c4                            ; $4167: $cd $c4 $41
    ld hl, $c803                                  ; $416a: $21 $03 $c8
    dec [hl]                                      ; $416d: $35
    call Call_001_43ad                            ; $416e: $cd $ad $43
    call Call_001_4436                            ; $4171: $cd $36 $44
    call Call_001_43d2                            ; $4174: $cd $d2 $43
    jp Jump_001_41c9                              ; $4177: $c3 $c9 $41


Call_001_417a:
    ld a, [$c805]                                 ; $417a: $fa $05 $c8
    cp $00                                        ; $417d: $fe $00
    jp nz, Jump_001_4188                          ; $417f: $c2 $88 $41

    ld a, [$c803]                                 ; $4182: $fa $03 $c8
    jp Jump_001_4192                              ; $4185: $c3 $92 $41


Jump_001_4188:
    ld d, a                                       ; $4188: $57
    ld a, [$c803]                                 ; $4189: $fa $03 $c8

Jump_001_418c:
    add $0a                                       ; $418c: $c6 $0a
    dec d                                         ; $418e: $15
    jp nz, Jump_001_418c                          ; $418f: $c2 $8c $41

Jump_001_4192:
    inc a                                         ; $4192: $3c
    ld hl, $c802                                  ; $4193: $21 $02 $c8
    cp [hl]                                       ; $4196: $be
    jp nz, Jump_001_419b                          ; $4197: $c2 $9b $41

    ret                                           ; $419a: $c9


Jump_001_419b:
    ld a, [$c803]                                 ; $419b: $fa $03 $c8
    cp $09                                        ; $419e: $fe $09
    jp nz, Jump_001_41b1                          ; $41a0: $c2 $b1 $41

    call Call_001_4100                            ; $41a3: $cd $00 $41
    call Call_001_41c4                            ; $41a6: $cd $c4 $41
    ld a, $00                                     ; $41a9: $3e $00
    ld [$c803], a                                 ; $41ab: $ea $03 $c8
    jp Jump_001_41b8                              ; $41ae: $c3 $b8 $41


Jump_001_41b1:
    call Call_001_41c4                            ; $41b1: $cd $c4 $41
    ld hl, $c803                                  ; $41b4: $21 $03 $c8
    inc [hl]                                      ; $41b7: $34

Jump_001_41b8:
    call Call_001_43ad                            ; $41b8: $cd $ad $43
    call Call_001_4436                            ; $41bb: $cd $36 $44
    call Call_001_43d2                            ; $41be: $cd $d2 $43
    jp Jump_001_41c9                              ; $41c1: $c3 $c9 $41


Call_001_41c4:
    ld b, $2b                                     ; $41c4: $06 $2b
    jp Jump_001_41cb                              ; $41c6: $c3 $cb $41


Call_001_41c9:
Jump_001_41c9:
    ld b, $2c                                     ; $41c9: $06 $2c

Jump_001_41cb:
    ld hl, $9881                                  ; $41cb: $21 $81 $98
    ld de, $0020                                  ; $41ce: $11 $20 $00
    ld a, [$c803]                                 ; $41d1: $fa $03 $c8

Jump_001_41d4:
    cp $00                                        ; $41d4: $fe $00
    jp z, Jump_001_41de                           ; $41d6: $ca $de $41

    add hl, de                                    ; $41d9: $19
    dec a                                         ; $41da: $3d
    jp Jump_001_41d4                              ; $41db: $c3 $d4 $41


Jump_001_41de:
    call Call_001_41e3                            ; $41de: $cd $e3 $41
    ld [hl], b                                    ; $41e1: $70
    ret                                           ; $41e2: $c9


Call_001_41e3:
    push af                                       ; $41e3: $f5

Jump_001_41e4:
    ldh a, [rSTAT]                                ; $41e4: $f0 $41
    and $02                                       ; $41e6: $e6 $02
    jp nz, Jump_001_41e4                          ; $41e8: $c2 $e4 $41

    pop af                                        ; $41eb: $f1
    ret                                           ; $41ec: $c9


Call_001_41ed:
    ld hl, $9880                                  ; $41ed: $21 $80 $98
    ld a, $0a                                     ; $41f0: $3e $0a
    ld d, a                                       ; $41f2: $57

Jump_001_41f3:
    push hl                                       ; $41f3: $e5
    ld a, $14                                     ; $41f4: $3e $14
    ld e, a                                       ; $41f6: $5f

Jump_001_41f7:
    call Call_001_41e3                            ; $41f7: $cd $e3 $41
    ld a, $80                                     ; $41fa: $3e $80
    ld [hl+], a                                   ; $41fc: $22
    dec e                                         ; $41fd: $1d
    jp nz, Jump_001_41f7                          ; $41fe: $c2 $f7 $41

    pop hl                                        ; $4201: $e1
    dec d                                         ; $4202: $15
    jp nz, Jump_001_4207                          ; $4203: $c2 $07 $42

    ret                                           ; $4206: $c9


Jump_001_4207:
    ld bc, $0020                                  ; $4207: $01 $20 $00
    add hl, bc                                    ; $420a: $09
    jp Jump_001_41f3                              ; $420b: $c3 $f3 $41


Call_001_420e:
    ld hl, $9882                                  ; $420e: $21 $82 $98
    ld de, $0010                                  ; $4211: $11 $10 $00
    xor a                                         ; $4214: $af
    ld [$c801], a                                 ; $4215: $ea $01 $c8

Jump_001_4218:
    ld a, [$c800]                                 ; $4218: $fa $00 $c8
    ld d, a                                       ; $421b: $57
    ld a, [$c802]                                 ; $421c: $fa $02 $c8
    cp d                                          ; $421f: $ba
    jp z, Jump_001_425a                           ; $4220: $ca $5a $42

    ld a, [$c801]                                 ; $4223: $fa $01 $c8
    cp $0a                                        ; $4226: $fe $0a
    jp z, Jump_001_425a                           ; $4228: $ca $5a $42

    push hl                                       ; $422b: $e5
    push de                                       ; $422c: $d5
    ld hl, $5c66                                  ; $422d: $21 $66 $5c
    ld de, $0010                                  ; $4230: $11 $10 $00
    ld a, [$c800]                                 ; $4233: $fa $00 $c8

Jump_001_4236:
    cp $00                                        ; $4236: $fe $00
    jp z, Jump_001_4240                           ; $4238: $ca $40 $42

    add hl, de                                    ; $423b: $19
    dec a                                         ; $423c: $3d
    jp Jump_001_4236                              ; $423d: $c3 $36 $42


Jump_001_4240:
    push hl                                       ; $4240: $e5
    pop bc                                        ; $4241: $c1
    pop de                                        ; $4242: $d1
    pop hl                                        ; $4243: $e1
    push hl                                       ; $4244: $e5
    call Call_001_425b                            ; $4245: $cd $5b $42
    ld hl, $c800                                  ; $4248: $21 $00 $c8
    inc [hl]                                      ; $424b: $34
    ld hl, $c801                                  ; $424c: $21 $01 $c8
    inc [hl]                                      ; $424f: $34
    pop hl                                        ; $4250: $e1
    push de                                       ; $4251: $d5
    ld de, $0020                                  ; $4252: $11 $20 $00
    add hl, de                                    ; $4255: $19
    pop de                                        ; $4256: $d1
    jp Jump_001_4218                              ; $4257: $c3 $18 $42


Jump_001_425a:
    ret                                           ; $425a: $c9


Call_001_425b:
    ld a, $10                                     ; $425b: $3e $10
    ld e, a                                       ; $425d: $5f

Jump_001_425e:
    ld a, [bc]                                    ; $425e: $0a
    cp $20                                        ; $425f: $fe $20
    jp nz, Jump_001_4269                          ; $4261: $c2 $69 $42

    ld a, $2b                                     ; $4264: $3e $2b
    jp Jump_001_426b                              ; $4266: $c3 $6b $42


Jump_001_4269:
    sub $30                                       ; $4269: $d6 $30

Jump_001_426b:
    call Call_001_41e3                            ; $426b: $cd $e3 $41
    ld [hl], a                                    ; $426e: $77
    inc hl                                        ; $426f: $23
    inc bc                                        ; $4270: $03
    dec e                                         ; $4271: $1d
    jp nz, Jump_001_425e                          ; $4272: $c2 $5e $42

    ret                                           ; $4275: $c9


Call_001_4276:
    ld bc, $6166                                  ; $4276: $01 $66 $61
    ld hl, $9000                                  ; $4279: $21 $00 $90
    ld de, $0170                                  ; $427c: $11 $70 $01

Jump_001_427f:
    ld a, [bc]                                    ; $427f: $0a
    call Call_001_41e3                            ; $4280: $cd $e3 $41
    ld [hl+], a                                   ; $4283: $22
    call Call_001_41e3                            ; $4284: $cd $e3 $41
    ld [hl+], a                                   ; $4287: $22
    inc bc                                        ; $4288: $03
    dec de                                        ; $4289: $1b
    ld a, d                                       ; $428a: $7a
    or e                                          ; $428b: $b3
    jp nz, Jump_001_427f                          ; $428c: $c2 $7f $42

    ret                                           ; $428f: $c9


    ld hl, $dfff                                  ; $4290: $21 $ff $df
    ld bc, $0020                                  ; $4293: $01 $20 $00
    xor a                                         ; $4296: $af

; write a to area - usually 0
; from cb to hl
DeleteData:
    ld [hl-], a                                   ; $4297: $32
    dec b                                         ; $4298: $05
    jp nz, DeleteData                          ; $4299: $c2 $97 $42

    dec c                                         ; $429c: $0d
    jp nz, DeleteData                          ; $429d: $c2 $97 $42

    ret                                           ; $42a0: $c9


Call_001_42a1:
    ld hl, $feff                                  ; $42a1: $21 $ff $fe
    ld bc, $0001                                  ; $42a4: $01 $01 $00
    xor a                                         ; $42a7: $af
    jp DeleteData                                 ; $42a8: $c3 $97 $42


    ld hl, $ffff                                  ; $42ab: $21 $ff $ff
    ld bc, $8000                                  ; $42ae: $01 $00 $80
    jp DeleteData                                 ; $42b1: $c3 $97 $42


EnableLCD:
    xor a                                         ; $42b4: $af
    ldh [rIF], a                                  ; $42b5: $e0 $0f
    ldh a, [rIE]                                  ; $42b7: $f0 $ff
    ld b, a                                       ; $42b9: $47
    res 0, a                                      ; $42ba: $cb $87
    ldh [rIE], a                                  ; $42bc: $e0 $ff
    ldh a, [rLCDC]                                ; $42be: $f0 $40
    cp $80                                        ; $42c0: $fe $80
    jp nc, Jump_001_42c6                          ; $42c2: $d2 $c6 $42

    ret                                           ; $42c5: $c9


Jump_001_42c6:
    ldh a, [rLY]                                  ; $42c6: $f0 $44
    cp $91                                        ; $42c8: $fe $91
    jp c, Jump_001_42c6                           ; $42ca: $da $c6 $42

    ldh a, [rLCDC]                                ; $42cd: $f0 $40
    and $7f                                       ; $42cf: $e6 $7f
    ldh [rLCDC], a                                ; $42d1: $e0 $40
    ld a, b                                       ; $42d3: $78
    ldh [rIE], a                                  ; $42d4: $e0 $ff
    ret                                           ; $42d6: $c9


Call_001_42d7:
    ldh a, [rLCDC]                                ; $42d7: $f0 $40
    or $81                                        ; $42d9: $f6 $81
    and $e7                                       ; $42db: $e6 $e7
    ldh [rLCDC], a                                ; $42dd: $e0 $40
    ret                                           ; $42df: $c9


Call_001_42e0:
    ld a, [$dee6]                                 ; $42e0: $fa $e6 $de
    ld [$dea0], a                                 ; $42e3: $ea $a0 $de
    ld a, [$dee7]                                 ; $42e6: $fa $e7 $de
    ld [$dea1], a                                 ; $42e9: $ea $a1 $de
    call Call_001_431d                            ; $42ec: $cd $1d $43
    ld a, [$dee6]                                 ; $42ef: $fa $e6 $de
    ld d, a                                       ; $42f2: $57
    ld a, [$dea0]                                 ; $42f3: $fa $a0 $de
    ld [$dee6], a                                 ; $42f6: $ea $e6 $de
    ld a, [$dee7]                                 ; $42f9: $fa $e7 $de
    ld e, a                                       ; $42fc: $5f
    ld a, [$dea1]                                 ; $42fd: $fa $a1 $de
    ld [$dee7], a                                 ; $4300: $ea $e7 $de
    call Call_001_431d                            ; $4303: $cd $1d $43
    ld a, [$dee6]                                 ; $4306: $fa $e6 $de
    cp d                                          ; $4309: $ba
    jp nz, Jump_001_4312                          ; $430a: $c2 $12 $43

    ld a, [$dee7]                                 ; $430d: $fa $e7 $de
    cp e                                          ; $4310: $bb
    ret z                                         ; $4311: $c8

Jump_001_4312:
    ld a, [$dea0]                                 ; $4312: $fa $a0 $de
    ld [$dee6], a                                 ; $4315: $ea $e6 $de
    xor a                                         ; $4318: $af
    ld [$dee7], a                                 ; $4319: $ea $e7 $de
    ret                                           ; $431c: $c9


Call_001_431d:
    ld a, $20                                     ; $431d: $3e $20
    ldh [rP1], a                                  ; $431f: $e0 $00
    ldh a, [rP1]                                  ; $4321: $f0 $00
    ldh a, [rP1]                                  ; $4323: $f0 $00
    cpl                                           ; $4325: $2f
    and $0f                                       ; $4326: $e6 $0f
    ld b, a                                       ; $4328: $47
    ld a, $10                                     ; $4329: $3e $10
    ldh [rP1], a                                  ; $432b: $e0 $00
    ldh a, [rP1]                                  ; $432d: $f0 $00
    ldh a, [rP1]                                  ; $432f: $f0 $00
    ldh a, [rP1]                                  ; $4331: $f0 $00
    ldh a, [rP1]                                  ; $4333: $f0 $00
    ldh a, [rP1]                                  ; $4335: $f0 $00
    ldh a, [rP1]                                  ; $4337: $f0 $00
    cpl                                           ; $4339: $2f
    and $0f                                       ; $433a: $e6 $0f
    swap a                                        ; $433c: $cb $37
    or b                                          ; $433e: $b0
    ld c, a                                       ; $433f: $4f
    ld a, [$dee6]                                 ; $4340: $fa $e6 $de
    xor c                                         ; $4343: $a9
    and c                                         ; $4344: $a1
    ld [$dee7], a                                 ; $4345: $ea $e7 $de
    ld a, c                                       ; $4348: $79
    ld [$dee6], a                                 ; $4349: $ea $e6 $de
    ld a, $30                                     ; $434c: $3e $30
    ldh [rP1], a                                  ; $434e: $e0 $00
    ret                                           ; $4350: $c9


Call_001_4351:
    ld de, $ff68                                  ; $4351: $11 $68 $ff
    ld hl, $62ee                                  ; $4354: $21 $ee $62
    ld a, $80                                     ; $4357: $3e $80
    call Call_001_41e3                            ; $4359: $cd $e3 $41
    ld [de], a                                    ; $435c: $12
    inc e                                         ; $435d: $1c
    ld b, $01                                     ; $435e: $06 $01

Jump_001_4360:
    push hl                                       ; $4360: $e5
    ld c, $08                                     ; $4361: $0e $08

Jump_001_4363:
    ld a, [hl+]                                   ; $4363: $2a
    call Call_001_41e3                            ; $4364: $cd $e3 $41
    ld [de], a                                    ; $4367: $12
    dec c                                         ; $4368: $0d
    jp nz, Jump_001_4363                          ; $4369: $c2 $63 $43

    pop hl                                        ; $436c: $e1
    dec b                                         ; $436d: $05
    jp nz, Jump_001_4360                          ; $436e: $c2 $60 $43

    ret                                           ; $4371: $c9


Call_001_4372:
    ld hl, $9300                                  ; $4372: $21 $00 $93
    ld de, $0008                                  ; $4375: $11 $08 $00

Jump_001_4378:
    ld a, $00                                     ; $4378: $3e $00
    push af                                       ; $437a: $f5
    call Call_001_41e3                            ; $437b: $cd $e3 $41
    pop af                                        ; $437e: $f1
    ld [hl+], a                                   ; $437f: $22
    ld a, $ff                                     ; $4380: $3e $ff
    push af                                       ; $4382: $f5
    call Call_001_41e3                            ; $4383: $cd $e3 $41
    pop af                                        ; $4386: $f1
    ld [hl+], a                                   ; $4387: $22
    dec de                                        ; $4388: $1b
    ld a, d                                       ; $4389: $7a
    or e                                          ; $438a: $b3
    jp nz, Jump_001_4378                          ; $438b: $c2 $78 $43

    ret                                           ; $438e: $c9


Call_001_438f:
    ld hl, $8000                                  ; $438f: $21 $00 $80
    ld bc, $1000                                  ; $4392: $01 $00 $10
    ld de, $0000                                  ; $4395: $11 $00 $00
    call Call_001_43a4                            ; $4398: $cd $a4 $43
    ld hl, $9000                                  ; $439b: $21 $00 $90
    ld bc, $1000                                  ; $439e: $01 $00 $10
    ld de, $0080                                  ; $43a1: $11 $80 $00

Call_001_43a4:
Jump_001_43a4:
    ld a, e                                       ; $43a4: $7b
    ld [hl+], a                                   ; $43a5: $22
    dec bc                                        ; $43a6: $0b
    ld a, b                                       ; $43a7: $78
    or c                                          ; $43a8: $b1
    jp nz, Jump_001_43a4                          ; $43a9: $c2 $a4 $43

    ret                                           ; $43ac: $c9


Call_001_43ad:
    ld hl, $99e0                                  ; $43ad: $21 $e0 $99
    ld de, $0014                                  ; $43b0: $11 $14 $00

Jump_001_43b3:
    push hl                                       ; $43b3: $e5
    push hl                                       ; $43b4: $e5
    ld a, $30                                     ; $43b5: $3e $30
    push af                                       ; $43b7: $f5
    call Call_001_41e3                            ; $43b8: $cd $e3 $41
    pop af                                        ; $43bb: $f1
    ld [hl], a                                    ; $43bc: $77
    pop hl                                        ; $43bd: $e1
    ld bc, $0020                                  ; $43be: $01 $20 $00
    add hl, bc                                    ; $43c1: $09
    ld a, $30                                     ; $43c2: $3e $30
    push af                                       ; $43c4: $f5
    call Call_001_41e3                            ; $43c5: $cd $e3 $41
    pop af                                        ; $43c8: $f1
    ld [hl], a                                    ; $43c9: $77
    pop hl                                        ; $43ca: $e1
    inc hl                                        ; $43cb: $23
    dec de                                        ; $43cc: $1b
    ld a, d                                       ; $43cd: $7a
    or e                                          ; $43ce: $b3
    jp nz, Jump_001_43b3                          ; $43cf: $c2 $b3 $43

Call_001_43d2:
    ld a, [$c805]                                 ; $43d2: $fa $05 $c8
    cp $00                                        ; $43d5: $fe $00
    jp z, Jump_001_43e7                           ; $43d7: $ca $e7 $43

    ld d, a                                       ; $43da: $57
    ld a, [$c803]                                 ; $43db: $fa $03 $c8

Jump_001_43de:
    add $0a                                       ; $43de: $c6 $0a
    dec d                                         ; $43e0: $15
    jp nz, Jump_001_43de                          ; $43e1: $c2 $de $43

    jp Jump_001_43ea                              ; $43e4: $c3 $ea $43


Jump_001_43e7:
    ld a, [$c803]                                 ; $43e7: $fa $03 $c8

Jump_001_43ea:
    ld [$c806], a                                 ; $43ea: $ea $06 $c8
    ld e, a                                       ; $43ed: $5f
    xor a                                         ; $43ee: $af
    ld d, a                                       ; $43ef: $57
    ld hl, $4507                                  ; $43f0: $21 $07 $45
    add hl, de                                    ; $43f3: $19
    ld a, [hl]                                    ; $43f4: $7e
    ld c, a                                       ; $43f5: $4f
    ld a, $0a                                     ; $43f6: $3e $0a
    sub c                                         ; $43f8: $91
    ld e, a                                       ; $43f9: $5f
    xor a                                         ; $43fa: $af
    ld d, a                                       ; $43fb: $57
    ld hl, $99e0                                  ; $43fc: $21 $e0 $99
    add hl, de                                    ; $43ff: $19
    ld a, $84                                     ; $4400: $3e $84
    ld b, a                                       ; $4402: $47

Jump_001_4403:
    push hl                                       ; $4403: $e5
    push hl                                       ; $4404: $e5
    ld a, b                                       ; $4405: $78
    push af                                       ; $4406: $f5
    call Call_001_41e3                            ; $4407: $cd $e3 $41
    pop af                                        ; $440a: $f1
    ld [hl], a                                    ; $440b: $77
    inc b                                         ; $440c: $04
    inc b                                         ; $440d: $04
    inc hl                                        ; $440e: $23
    ld a, b                                       ; $440f: $78
    push af                                       ; $4410: $f5
    call Call_001_41e3                            ; $4411: $cd $e3 $41
    pop af                                        ; $4414: $f1
    ld [hl], a                                    ; $4415: $77
    pop hl                                        ; $4416: $e1
    ld de, $0020                                  ; $4417: $11 $20 $00
    add hl, de                                    ; $441a: $19
    dec b                                         ; $441b: $05
    ld a, b                                       ; $441c: $78
    push af                                       ; $441d: $f5
    call Call_001_41e3                            ; $441e: $cd $e3 $41
    pop af                                        ; $4421: $f1
    ld [hl], a                                    ; $4422: $77
    inc hl                                        ; $4423: $23
    inc b                                         ; $4424: $04
    inc b                                         ; $4425: $04
    ld a, b                                       ; $4426: $78
    push af                                       ; $4427: $f5
    call Call_001_41e3                            ; $4428: $cd $e3 $41
    pop af                                        ; $442b: $f1
    ld [hl], a                                    ; $442c: $77
    pop hl                                        ; $442d: $e1
    inc b                                         ; $442e: $04
    inc hl                                        ; $442f: $23
    inc hl                                        ; $4430: $23
    dec c                                         ; $4431: $0d
    jp nz, Jump_001_4403                          ; $4432: $c2 $03 $44

    ret                                           ; $4435: $c9


Call_001_4436:
    ld a, [$c805]                                 ; $4436: $fa $05 $c8
    cp $00                                        ; $4439: $fe $00
    jp z, Jump_001_444b                           ; $443b: $ca $4b $44

    ld d, a                                       ; $443e: $57
    ld a, [$c803]                                 ; $443f: $fa $03 $c8

Jump_001_4442:
    add $0a                                       ; $4442: $c6 $0a
    dec d                                         ; $4444: $15
    jp nz, Jump_001_4442                          ; $4445: $c2 $42 $44

    jp Jump_001_444e                              ; $4448: $c3 $4e $44


Jump_001_444b:
    ld a, [$c803]                                 ; $444b: $fa $03 $c8

Jump_001_444e:
    ld [$c807], a                                 ; $444e: $ea $07 $c8
    ld hl, $4507                                  ; $4451: $21 $07 $45
    ld c, a                                       ; $4454: $4f
    xor a                                         ; $4455: $af
    ld b, a                                       ; $4456: $47
    add hl, bc                                    ; $4457: $09
    ld a, [hl]                                    ; $4458: $7e
    ld [$c806], a                                 ; $4459: $ea $06 $c8
    ld a, [$c807]                                 ; $445c: $fa $07 $c8
    cp $00                                        ; $445f: $fe $00
    jp z, Jump_001_4482                           ; $4461: $ca $82 $44

    ld bc, $0000                                  ; $4464: $01 $00 $00
    ld hl, $4507                                  ; $4467: $21 $07 $45

Jump_001_446a:
    ld a, [hl+]                                   ; $446a: $2a
    add c                                         ; $446b: $81
    ld c, a                                       ; $446c: $4f
    ld a, $00                                     ; $446d: $3e $00
    adc b                                         ; $446f: $88
    ld b, a                                       ; $4470: $47
    ld a, [$c807]                                 ; $4471: $fa $07 $c8
    dec a                                         ; $4474: $3d
    ld [$c807], a                                 ; $4475: $ea $07 $c8
    jp nz, Jump_001_446a                          ; $4478: $c2 $6a $44

    ld hl, $5b47                                  ; $447b: $21 $47 $5b
    add hl, bc                                    ; $447e: $09
    jp Jump_001_4485                              ; $447f: $c3 $85 $44


Jump_001_4482:
    ld hl, $5b47                                  ; $4482: $21 $47 $5b

Jump_001_4485:
    ld a, [$c806]                                 ; $4485: $fa $06 $c8
    ld bc, $8840                                  ; $4488: $01 $40 $88

Jump_001_448b:
    push af                                       ; $448b: $f5
    ld a, [hl+]                                   ; $448c: $2a
    push hl                                       ; $448d: $e5
    push bc                                       ; $448e: $c5
    sub $01                                       ; $448f: $d6 $01
    ld c, a                                       ; $4491: $4f
    xor a                                         ; $4492: $af
    ld b, a                                       ; $4493: $47
    sla c                                         ; $4494: $cb $21
    rl b                                          ; $4496: $cb $10
    sla c                                         ; $4498: $cb $21
    rl b                                          ; $449a: $cb $10
    sla c                                         ; $449c: $cb $21
    rl b                                          ; $449e: $cb $10
    sla c                                         ; $44a0: $cb $21
    rl b                                          ; $44a2: $cb $10
    sla c                                         ; $44a4: $cb $21
    rl b                                          ; $44a6: $cb $10
    ld hl, $4547                                  ; $44a8: $21 $47 $45
    add hl, bc                                    ; $44ab: $09
    ld de, $0020                                  ; $44ac: $11 $20 $00
    pop bc                                        ; $44af: $c1

Jump_001_44b0:
    ld a, [hl+]                                   ; $44b0: $2a
    push af                                       ; $44b1: $f5
    xor a                                         ; $44b2: $af
    push af                                       ; $44b3: $f5
    call Call_001_41e3                            ; $44b4: $cd $e3 $41
    pop af                                        ; $44b7: $f1
    ld [bc], a                                    ; $44b8: $02
    inc bc                                        ; $44b9: $03
    pop af                                        ; $44ba: $f1
    xor $ff                                       ; $44bb: $ee $ff
    push af                                       ; $44bd: $f5
    call Call_001_41e3                            ; $44be: $cd $e3 $41
    pop af                                        ; $44c1: $f1
    ld [bc], a                                    ; $44c2: $02
    inc bc                                        ; $44c3: $03
    dec de                                        ; $44c4: $1b
    ld a, d                                       ; $44c5: $7a
    or e                                          ; $44c6: $b3
    jp nz, Jump_001_44b0                          ; $44c7: $c2 $b0 $44

    pop hl                                        ; $44ca: $e1
    pop af                                        ; $44cb: $f1
    dec a                                         ; $44cc: $3d
    jp nz, Jump_001_448b                          ; $44cd: $c2 $8b $44

    ret                                           ; $44d0: $c9


Call_001_44d1:
    ld hl, $8b00                                  ; $44d1: $21 $00 $8b
    ld de, $62f6                                  ; $44d4: $11 $f6 $62
    ld bc, $0400                                  ; $44d7: $01 $00 $04

Jump_001_44da:
    ld a, [de]                                    ; $44da: $1a
    call Call_001_41e3                            ; $44db: $cd $e3 $41
    ld [hl+], a                                   ; $44de: $22
    inc de                                        ; $44df: $13
    dec bc                                        ; $44e0: $0b
    ld a, c                                       ; $44e1: $79
    or b                                          ; $44e2: $b0
    jp nz, Jump_001_44da                          ; $44e3: $c2 $da $44

    ld hl, $9800                                  ; $44e6: $21 $00 $98
    ld de, $6576                                  ; $44e9: $11 $76 $65
    ld b, $04                                     ; $44ec: $06 $04

Jump_001_44ee:
    push bc                                       ; $44ee: $c5
    ld c, $14                                     ; $44ef: $0e $14

Jump_001_44f1:
    ld a, [de]                                    ; $44f1: $1a
    add $b0                                       ; $44f2: $c6 $b0
    call Call_001_41e3                            ; $44f4: $cd $e3 $41
    ld [hl+], a                                   ; $44f7: $22
    inc de                                        ; $44f8: $13
    dec c                                         ; $44f9: $0d
    jp nz, Jump_001_44f1                          ; $44fa: $c2 $f1 $44

    ld bc, $000c                                  ; $44fd: $01 $0c $00
    add hl, bc                                    ; $4500: $09
    pop bc                                        ; $4501: $c1
    dec b                                         ; $4502: $05
    jp nz, Jump_001_44ee                          ; $4503: $c2 $ee $44

    ret                                           ; $4506: $c9


    db $08, $08, $08, $06, $08, $04, $05, $05, $04, $03, $04, $05, $04, $05, $04, $04
    db $05, $03, $05, $05, $05, $03, $04, $03, $07, $06, $05, $04, $04, $05, $03, $05
    db $05, $04, $05, $04, $05, $04, $06, $06, $03, $04, $03, $03, $03, $04, $04, $02
    db $05, $03, $04, $03, $03, $03, $05, $04, $04, $04, $03, $04, $05, $04, $04, $06
    db $00, $00, $3f, $20, $20, $20, $20, $20, $20, $20, $20, $20, $3f, $20, $00, $00
    db $00, $08, $fc, $08, $08, $08, $08, $08, $08, $08, $08, $08, $f8, $08, $00, $00
    db $08, $08, $10, $37, $d0, $10, $12, $11, $ff, $0a, $09, $18, $28, $c9, $0a, $0c
    db $a0, $90, $fc, $80, $40, $24, $1c, $00, $fe, $08, $18, $a0, $40, $30, $0e, $04
    db $10, $17, $12, $11, $58, $54, $50, $93, $1c, $10, $17, $10, $10, $10, $1f, $10
    db $08, $fc, $08, $10, $a0, $40, $b0, $0e, $44, $40, $fc, $40, $40, $44, $fe, $00
    db $08, $04, $3f, $21, $3f, $21, $3f, $00, $ff, $00, $1f, $10, $10, $10, $1f, $10
    db $20, $48, $fc, $08, $f8, $08, $f8, $00, $fe, $00, $f0, $10, $10, $10, $f0, $10
    db $01, $01, $02, $04, $08, $10, $2f, $c1, $01, $1f, $01, $11, $09, $05, $7f, $00
    db $00, $00, $80, $40, $20, $10, $ee, $04, $00, $f0, $00, $10, $20, $40, $fc, $00
    db $01, $01, $01, $7f, $41, $41, $41, $41, $7f, $41, $01, $01, $01, $01, $01, $01
    db $00, $00, $04, $fe, $04, $04, $04, $04, $fc, $04, $00, $00, $00, $00, $00, $00
    db $02, $01, $01, $ff, $10, $08, $08, $04, $04, $02, $01, $02, $04, $08, $30, $c0
    db $00, $00, $04, $fe, $10, $10, $20, $20, $40, $80, $00, $80, $60, $10, $0e, $04
    db $08, $48, $49, $49, $49, $7d, $41, $41, $79, $49, $49, $4a, $4a, $4c, $88, $0b
    db $08, $1c, $e0, $00, $00, $fc, $04, $84, $48, $48, $50, $20, $20, $50, $8e, $04
    db $10, $11, $11, $3d, $21, $21, $7d, $91, $11, $fd, $11, $13, $15, $19, $11, $01
    db $08, $fc, $08, $08, $f8, $08, $08, $f8, $04, $8c, $50, $20, $10, $4e, $84, $00
    db $04, $04, $3f, $04, $04, $ff, $01, $01, $1f, $11, $1f, $11, $1f, $04, $18, $60
    db $40, $40, $f8, $40, $44, $fe, $00, $00, $f0, $10, $f0, $10, $f0, $60, $18, $04
    db $00, $00, $7f, $00, $00, $00, $00, $3f, $00, $00, $00, $00, $00, $ff, $00, $00
    db $00, $08, $fc, $00, $00, $00, $10, $f8, $00, $00, $00, $00, $04, $fe, $00, $00
    db $00, $7f, $40, $40, $5f, $41, $41, $4f, $41, $41, $41, $5f, $40, $40, $7f, $40
    db $04, $fe, $04, $24, $f4, $04, $04, $e4, $04, $44, $24, $f4, $04, $04, $fc, $04
    db $01, $01, $01, $ff, $01, $01, $01, $3f, $00, $02, $11, $50, $50, $90, $0f, $00
    db $00, $00, $04, $fe, $00, $00, $00, $fc, $00, $00, $80, $84, $12, $12, $f0, $00
    db $10, $10, $11, $11, $fd, $11, $31, $39, $55, $51, $91, $11, $11, $12, $14, $18
    db $00, $10, $f8, $10, $10, $10, $10, $10, $10, $10, $10, $10, $12, $12, $0e, $00
    db $3e, $22, $22, $22, $3e, $01, $01, $ff, $02, $0c, $30, $fe, $22, $22, $22, $3e
    db $f8, $88, $88, $88, $f8, $20, $10, $fe, $80, $60, $18, $fe, $88, $88, $88, $f8
    db $01, $01, $01, $01, $01, $01, $01, $02, $02, $02, $04, $04, $08, $10, $20, $40
    db $00, $00, $00, $00, $00, $00, $00, $80, $80, $80, $40, $40, $20, $10, $0e, $04
    db $01, $01, $01, $01, $01, $ff, $01, $02, $02, $02, $04, $04, $08, $10, $60, $00
    db $00, $00, $00, $00, $04, $fe, $00, $80, $80, $40, $40, $20, $10, $0e, $04, $00
    db $10, $10, $12, $1f, $10, $13, $10, $10, $7e, $42, $42, $42, $42, $7e, $41, $02
    db $40, $50, $48, $48, $7e, $c0, $40, $40, $48, $28, $30, $20, $50, $92, $0a, $06
    db $00, $00, $08, $fc, $10, $17, $10, $10, $10, $10, $1d, $f1, $41, $02, $04, $08
    db $80, $80, $80, $80, $84, $fe, $84, $84, $84, $84, $04, $04, $04, $44, $28, $10
    db $01, $01, $01, $7f, $01, $01, $01, $ff, $01, $02, $02, $04, $04, $08, $10, $60
    db $00, $00, $08, $fc, $00, $00, $04, $fe, $00, $80, $80, $40, $40, $30, $0e, $04
    db $00, $07, $08, $10, $10, $10, $10, $08, $07, $00, $00, $00, $00, $01, $06, $00
    db $00, $80, $40, $20, $20, $20, $20, $60, $a0, $20, $40, $40, $80, $00, $00, $00
    db $00, $01, $02, $04, $08, $08, $10, $17, $18, $10, $10, $10, $10, $08, $07, $00
    db $00, $80, $00, $00, $00, $00, $00, $80, $40, $20, $20, $20, $20, $40, $80, $00
    db $01, $01, $09, $49, $49, $51, $53, $7d, $45, $49, $55, $7f, $43, $41, $7f, $40
    db $00, $00, $20, $24, $24, $44, $4c, $f4, $14, $24, $54, $fc, $0c, $04, $fc, $04
    db $02, $41, $20, $2f, $82, $62, $23, $0a, $12, $22, $e2, $24, $24, $28, $31, $20
    db $10, $10, $1e, $e0, $40, $3e, $84, $88, $88, $fe, $88, $88, $88, $88, $a8, $10
    db $02, $04, $08, $3f, $20, $20, $20, $20, $3f, $20, $20, $20, $20, $3f, $20, $00
    db $00, $00, $08, $fc, $08, $08, $08, $08, $f8, $08, $08, $08, $08, $f8, $08, $00
    db $02, $02, $02, $7f, $02, $02, $02, $02, $ff, $02, $02, $02, $02, $02, $02, $02
    db $00, $10, $0c, $e4, $20, $20, $20, $20, $fc, $04, $04, $04, $04, $28, $10, $00
    db $00, $00, $7f, $44, $44, $44, $44, $44, $44, $44, $48, $50, $40, $7f, $40, $00
    db $00, $04, $fe, $44, $44, $44, $44, $44, $44, $44, $3c, $04, $04, $fc, $04, $00
    db $01, $01, $01, $09, $09, $11, $11, $21, $41, $01, $01, $00, $01, $02, $0c, $70
    db $00, $00, $00, $20, $10, $0c, $04, $10, $10, $20, $40, $80, $00, $00, $00, $00
    db $08, $08, $0f, $11, $11, $21, $5f, $11, $11, $11, $ff, $01, $01, $01, $01, $01
    db $00, $08, $fc, $00, $00, $10, $f8, $00, $00, $04, $fe, $00, $00, $00, $00, $00
    db $12, $12, $22, $4f, $82, $12, $1f, $22, $62, $af, $22, $22, $23, $3e, $28, $20
    db $00, $04, $3e, $80, $00, $00, $be, $08, $08, $88, $08, $08, $c8, $08, $28, $10
    db $3f, $01, $7f, $89, $22, $7f, $22, $3e, $08, $7f, $49, $7f, $08, $7f, $08, $09
    db $f8, $00, $fe, $24, $00, $7c, $44, $44, $7c, $44, $44, $7c, $44, $44, $94, $08
    db $10, $10, $10, $10, $5b, $54, $50, $90, $10, $1f, $10, $11, $11, $12, $14, $18
    db $80, $80, $80, $88, $fc, $88, $88, $88, $88, $fe, $80, $40, $20, $10, $0e, $04
    db $10, $10, $10, $13, $fc, $10, $14, $18, $30, $d0, $10, $10, $10, $10, $50, $20
    db $00, $00, $04, $fe, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $a0, $40
    db $20, $10, $10, $fe, $21, $22, $3c, $24, $24, $24, $24, $24, $44, $55, $8a, $04
    db $80, $84, $fe, $80, $00, $fe, $22, $24, $a0, $a0, $bc, $a0, $a0, $60, $20, $1e
    db $00, $3f, $20, $28, $24, $22, $22, $21, $21, $22, $22, $24, $28, $30, $40, $80
    db $10, $f8, $10, $50, $50, $90, $90, $10, $10, $90, $90, $50, $50, $12, $0a, $06
    db $02, $02, $02, $02, $ff, $02, $02, $04, $04, $04, $08, $08, $11, $16, $20, $40
    db $00, $40, $20, $04, $fe, $80, $88, $88, $90, $a0, $c0, $82, $82, $82, $7e, $00
    db $01, $01, $01, $01, $01, $01, $ff, $01, $01, $01, $01, $01, $01, $01, $3f, $00
    db $00, $00, $00, $00, $00, $04, $fe, $00, $00, $00, $00, $00, $00, $10, $f8, $00
    db $00, $7f, $02, $12, $12, $12, $24, $04, $08, $12, $01, $08, $28, $28, $48, $07
    db $10, $f8, $10, $10, $10, $10, $10, $50, $20, $00, $00, $88, $a4, $22, $22, $e0
    db $02, $02, $3f, $02, $02, $ff, $01, $02, $0f, $18, $28, $4f, $88, $08, $0f, $08
    db $00, $10, $e0, $20, $44, $fe, $00, $00, $f0, $10, $10, $f0, $10, $10, $f0, $10
    db $20, $10, $10, $fd, $09, $11, $19, $35, $55, $91, $11, $11, $11, $10, $10, $10
    db $20, $20, $24, $fe, $24, $24, $24, $fc, $24, $24, $24, $fc, $24, $20, $20, $20
    db $08, $08, $1f, $10, $20, $7f, $a1, $21, $3f, $21, $21, $3f, $21, $01, $01, $00
    db $00, $40, $e0, $40, $88, $fc, $08, $08, $f8, $08, $08, $f8, $08, $02, $02, $fe
    db $02, $01, $7f, $40, $84, $0c, $10, $20, $00, $3f, $01, $01, $01, $01, $ff, $00
    db $00, $00, $fe, $02, $44, $30, $18, $08, $00, $f8, $00, $00, $00, $04, $fe, $00
    db $00, $00, $7f, $01, $01, $3f, $01, $01, $01, $ff, $01, $01, $01, $01, $05, $02
    db $10, $f8, $00, $00, $10, $f8, $00, $00, $04, $fe, $00, $00, $00, $00, $00, $00
    db $02, $41, $30, $17, $00, $01, $f3, $12, $13, $12, $13, $12, $13, $2a, $44, $03
    db $08, $10, $20, $fc, $80, $00, $f8, $08, $f8, $08, $f8, $08, $f8, $08, $00, $fe
    db $01, $01, $01, $3f, $02, $02, $ff, $04, $04, $0f, $00, $00, $00, $06, $01, $00
    db $00, $00, $10, $f8, $00, $04, $fe, $00, $10, $f8, $10, $20, $40, $80, $80, $40
    db $02, $01, $7f, $40, $80, $3f, $04, $1a, $63, $05, $19, $63, $05, $19, $65, $02
    db $00, $04, $fe, $04, $08, $f8, $00, $10, $30, $40, $80, $40, $30, $0e, $04, $00
    db $1f, $10, $1f, $10, $1f, $04, $7f, $04, $ff, $04, $09, $35, $c3, $09, $11, $03
    db $f0, $10, $f0, $10, $f0, $40, $fc, $40, $fe, $40, $20, $5e, $84, $20, $10, $00
    db $01, $ff, $10, $1f, $31, $4a, $04, $39, $01, $ff, $02, $04, $0c, $15, $66, $04
    db $04, $84, $24, $24, $24, $24, $04, $14, $08, $fe, $08, $90, $60, $30, $0e, $04
    db $00, $01, $7b, $02, $02, $ff, $22, $22, $23, $42, $48, $fd, $45, $02, $04, $08
    db $80, $08, $fc, $48, $48, $f8, $48, $48, $f8, $80, $c8, $48, $54, $5c, $42, $3e
    db $00, $08, $06, $02, $10, $0c, $04, $00, $00, $ff, $00, $00, $00, $00, $00, $00
    db $40, $40, $40, $40, $40, $40, $40, $44, $7e, $c0, $40, $40, $40, $40, $40, $40
    db $00, $7f, $44, $44, $44, $7f, $42, $02, $07, $08, $14, $62, $01, $06, $18, $e0
    db $04, $fe, $44, $44, $44, $fc, $04, $00, $f0, $10, $20, $c0, $00, $00, $00, $00
    db $00, $04, $02, $03, $01, $ff, $00, $00, $04, $0c, $08, $10, $10, $20, $40, $00
    db $00, $00, $00, $00, $04, $fe, $00, $00, $40, $20, $10, $18, $0c, $0c, $04, $00
    db $08, $08, $08, $10, $10, $30, $5f, $90, $10, $10, $10, $10, $10, $10, $10, $10
    db $80, $a0, $90, $90, $84, $fe, $80, $40, $40, $40, $20, $20, $12, $12, $0a, $06
    db $20, $20, $23, $22, $22, $fa, $22, $23, $22, $22, $22, $3b, $e2, $40, $0f, $00
    db $00, $08, $fc, $08, $08, $08, $08, $f8, $08, $08, $08, $f8, $08, $00, $fe, $00
    db $01, $01, $ff, $01, $01, $1f, $10, $10, $10, $1f, $04, $04, $04, $08, $10, $60
    db $00, $04, $fe, $00, $00, $f0, $10, $10, $10, $f0, $40, $40, $40, $42, $42, $3e
    db $01, $01, $01, $01, $11, $11, $11, $21, $42, $02, $04, $04, $08, $10, $20, $40
    db $00, $00, $00, $00, $08, $18, $20, $40, $80, $80, $40, $40, $20, $10, $0e, $04
    db $10, $10, $10, $15, $5a, $50, $53, $92, $12, $12, $13, $2a, $26, $46, $83, $02
    db $80, $88, $fc, $08, $10, $80, $3c, $04, $04, $04, $bc, $04, $04, $04, $fc, $04
    db $09, $09, $09, $11, $12, $32, $54, $98, $10, $10, $10, $10, $10, $10, $10, $10
    db $00, $00, $04, $fe, $80, $80, $90, $f8, $80, $80, $88, $fc, $80, $80, $80, $80
    db $08, $08, $08, $7f, $08, $0a, $1c, $68, $08, $08, $29, $12, $00, $48, $44, $84
    db $40, $40, $48, $fc, $48, $48, $c8, $48, $a8, $8a, $0a, $04, $00, $88, $46, $42
    db $02, $01, $ff, $04, $04, $14, $24, $44, $84, $0a, $09, $29, $28, $48, $07, $00
    db $00, $04, $fe, $40, $40, $50, $48, $46, $42, $00, $00, $28, $24, $24, $e0, $00
    db $08, $fd, $09, $49, $49, $49, $49, $49, $7d, $05, $05, $1d, $e5, $45, $15, $08
    db $04, $fe, $00, $44, $44, $28, $28, $10, $10, $28, $28, $44, $84, $00, $fe, $00
    db $02, $02, $7f, $04, $09, $11, $21, $3f, $01, $01, $ff, $01, $01, $01, $01, $01
    db $00, $08, $fc, $00, $00, $00, $10, $f8, $00, $04, $fe, $00, $00, $00, $00, $00
    db $10, $10, $13, $10, $fc, $10, $14, $19, $30, $d0, $10, $10, $10, $13, $50, $20
    db $00, $04, $fe, $04, $04, $04, $04, $fc, $04, $04, $04, $04, $04, $fc, $04, $00
    db $00, $3f, $01, $7f, $41, $9d, $01, $1d, $01, $1f, $11, $11, $1f, $11, $11, $1f
    db $10, $f8, $00, $fe, $02, $74, $00, $70, $00, $f0, $10, $10, $f0, $10, $10, $f0
    db $10, $20, $7f, $49, $49, $6a, $5a, $4f, $f8, $48, $48, $6c, $5a, $49, $8a, $1c
    db $00, $0c, $70, $10, $10, $10, $7e, $90, $90, $90, $90, $fc, $80, $00, $80, $7e
    db $11, $11, $11, $15, $5a, $52, $54, $90, $10, $10, $10, $28, $24, $44, $80, $00
    db $00, $00, $04, $fe, $80, $80, $88, $fc, $80, $80, $84, $fe, $80, $80, $80, $80
    db $02, $79, $08, $0b, $0a, $7a, $4b, $42, $42, $7b, $08, $0f, $08, $08, $50, $20
    db $08, $10, $a0, $f8, $48, $48, $f8, $48, $48, $f8, $40, $fe, $40, $40, $40, $40
    db $01, $01, $01, $ff, $03, $05, $09, $11, $21, $c1, $01, $00, $24, $22, $22, $40
    db $00, $00, $04, $fe, $80, $40, $20, $10, $0e, $04, $00, $00, $90, $48, $44, $04
    db $01, $01, $01, $01, $01, $ff, $01, $01, $02, $02, $04, $06, $09, $31, $c0, $00
    db $00, $00, $00, $00, $04, $fe, $00, $00, $80, $80, $40, $40, $30, $0e, $04, $00
    db $08, $0b, $0a, $12, $12, $33, $32, $50, $9f, $10, $10, $11, $12, $14, $18, $10
    db $08, $fc, $08, $08, $08, $f8, $40, $44, $fe, $40, $e0, $50, $48, $4e, $44, $40
    db $00, $00, $7f, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $ff, $00
    db $00, $08, $fc, $08, $08, $08, $08, $08, $08, $28, $10, $00, $00, $04, $fe, $00
    db $00, $7f, $01, $11, $09, $09, $09, $01, $ff, $01, $01, $01, $01, $01, $01, $01
    db $08, $fc, $00, $10, $10, $20, $20, $04, $fe, $00, $00, $00, $00, $00, $00, $00
    db $02, $01, $3f, $20, $42, $02, $02, $ff, $04, $08, $18, $06, $01, $02, $0c, $30
    db $00, $00, $fc, $04, $08, $00, $04, $fe, $20, $20, $40, $40, $80, $40, $30, $10
    db $02, $01, $ff, $00, $00, $1f, $10, $10, $10, $1f, $01, $09, $19, $21, $45, $02
    db $00, $04, $fe, $00, $00, $f0, $10, $10, $10, $f0, $00, $20, $18, $0c, $04, $00
    db $01, $01, $02, $02, $04, $08, $30, $cf, $08, $08, $09, $08, $08, $08, $07, $00
    db $00, $00, $80, $80, $40, $20, $1e, $e4, $20, $20, $20, $c0, $08, $08, $f8, $00
    db $01, $00, $3f, $21, $21, $3f, $22, $24, $28, $2f, $20, $20, $3f, $40, $40, $80
    db $00, $88, $fc, $00, $08, $fc, $00, $80, $90, $f8, $80, $84, $fe, $80, $80, $80
    db $00, $3f, $11, $0d, $05, $ff, $09, $11, $3f, $d1, $11, $1f, $11, $11, $1f, $10
    db $78, $80, $10, $30, $44, $fe, $20, $10, $fe, $14, $10, $f0, $10, $10, $f0, $10
    db $01, $01, $01, $01, $01, $7d, $05, $05, $09, $09, $11, $21, $41, $81, $05, $02
    db $00, $00, $00, $08, $18, $20, $c0, $80, $40, $20, $10, $0e, $04, $00, $00, $00
    db $10, $1f, $28, $45, $01, $7f, $40, $9f, $10, $1f, $10, $1f, $10, $10, $1f, $10
    db $40, $7c, $90, $08, $00, $fe, $02, $e4, $20, $e0, $00, $f0, $10, $10, $f0, $00
    db $00, $03, $7c, $11, $11, $11, $7d, $11, $11, $10, $1c, $f3, $40, $00, $00, $00
    db $10, $f8, $10, $10, $10, $10, $10, $10, $fc, $04, $24, $f4, $04, $04, $14, $08
    db $01, $07, $7c, $04, $04, $04, $ff, $0c, $0e, $15, $14, $24, $44, $04, $04, $04
    db $04, $84, $04, $24, $24, $24, $a4, $24, $24, $a4, $a4, $24, $04, $04, $14, $08
    db $22, $22, $22, $fb, $ad, $a9, $a9, $af, $f9, $a1, $29, $3a, $ea, $44, $08, $10
    db $00, $00, $04, $fe, $24, $24, $24, $e4, $24, $24, $24, $24, $bc, $64, $40, $00
    db $10, $11, $11, $11, $7d, $56, $54, $57, $54, $7c, $10, $14, $1d, $f6, $44, $00
    db $20, $20, $20, $fc, $20, $20, $24, $fe, $60, $70, $b0, $a8, $2e, $24, $20, $20
    db $08, $08, $10, $17, $30, $32, $51, $90, $1f, $10, $10, $10, $11, $11, $12, $14
    db $40, $40, $48, $fc, $40, $48, $50, $40, $fe, $40, $a0, $a0, $10, $08, $0e, $04
    db $01, $01, $02, $04, $08, $10, $2f, $c1, $01, $01, $0f, $01, $01, $01, $7f, $00
    db $00, $00, $80, $40, $20, $10, $ee, $04, $00, $00, $e0, $00, $00, $00, $fc, $00
    db $08, $06, $02, $7f, $01, $3f, $01, $ff, $01, $01, $7f, $01, $02, $04, $18, $e0
    db $20, $60, $80, $fc, $00, $f8, $00, $fe, $00, $08, $fc, $00, $80, $60, $1e, $04
    db $00, $04, $7e, $44, $44, $44, $7c, $44, $44, $44, $7c, $44, $01, $01, $02, $04
    db $04, $fe, $84, $84, $84, $fc, $84, $84, $84, $fc, $84, $84, $04, $04, $14, $08
    db $00, $3f, $20, $3f, $20, $3f, $01, $21, $3f, $21, $41, $bf, $01, $01, $ff, $00
    db $08, $fc, $08, $f8, $08, $f8, $00, $08, $fc, $00, $10, $f8, $00, $04, $fe, $00
    db $10, $1f, $28, $45, $84, $24, $25, $26, $24, $04, $3f, $24, $24, $24, $ff, $00
    db $40, $7e, $a0, $10, $80, $fc, $40, $20, $20, $00, $f8, $48, $48, $48, $fe, $00
    db $00, $00, $fc, $10, $13, $10, $7a, $11, $11, $10, $1c, $f1, $06, $00, $01, $00
    db $40, $50, $48, $40, $fe, $40, $44, $44, $68, $70, $d0, $48, $46, $44, $40, $80
    db $01, $7f, $44, $9f, $04, $1f, $04, $7f, $08, $1f, $28, $c9, $09, $01, $06, $18
    db $00, $fe, $42, $f4, $40, $f0, $40, $fc, $20, $f0, $2e, $24, $20, $00, $c0, $30
    db $04, $04, $ff, $04, $01, $1f, $11, $11, $11, $ff, $01, $02, $04, $08, $30, $c0
    db $40, $44, $fe, $40, $00, $f0, $10, $10, $10, $fe, $00, $80, $40, $30, $0e, $04
    db $02, $02, $04, $08, $10, $20, $7f, $00, $00, $1f, $10, $10, $10, $10, $1f, $10
    db $00, $00, $00, $20, $10, $08, $fc, $04, $00, $f0, $10, $10, $10, $10, $f0, $10
    db $00, $03, $01, $01, $01, $01, $01, $01, $01, $09, $09, $06, $00, $00, $00, $00
    db $00, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $fe, $24, $24, $3d, $24, $24, $24, $3d, $24, $24, $24, $3e, $e4, $05, $06
    db $04, $cc, $50, $00, $fc, $20, $20, $24, $fe, $20, $20, $50, $50, $88, $0e, $04
    db $3e, $22, $22, $3e, $22, $22, $3e, $21, $02, $04, $3f, $24, $24, $24, $ff, $00
    db $f8, $88, $88, $f8, $88, $88, $f8, $08, $28, $10, $f8, $48, $48, $48, $fe, $00
    db $00, $1f, $10, $10, $10, $10, $1f, $11, $01, $11, $11, $11, $11, $29, $47, $80
    db $10, $f8, $10, $10, $10, $10, $f0, $10, $00, $00, $f8, $00, $00, $00, $fe, $00
    db $00, $01, $01, $02, $3f, $24, $24, $24, $24, $24, $24, $24, $24, $24, $ff, $00
    db $00, $00, $00, $08, $fc, $48, $48, $48, $48, $48, $48, $48, $48, $48, $fe, $00
    db $00, $20, $18, $08, $81, $61, $22, $0a, $14, $20, $e0, $20, $20, $20, $23, $2c
    db $40, $40, $40, $40, $50, $48, $46, $42, $48, $48, $50, $20, $40, $80, $00, $00
    db $00, $40, $30, $1f, $81, $69, $29, $06, $12, $25, $e9, $30, $20, $20, $20, $20
    db $20, $30, $48, $7e, $48, $c8, $7e, $48, $48, $7e, $48, $48, $48, $7e, $40, $40
    db $10, $10, $10, $17, $fc, $10, $14, $1b, $30, $d0, $10, $17, $10, $10, $50, $20
    db $90, $90, $94, $9e, $90, $90, $90, $9c, $90, $90, $94, $9e, $90, $90, $90, $90
    db $00, $60, $30, $28, $24, $22, $21, $20, $20, $20, $20, $70, $00, $00, $00, $00
    db $00, $1c, $08, $08, $08, $08, $08, $88, $48, $28, $18, $08, $00, $00, $00, $00
    db $00, $7f, $20, $20, $20, $20, $3f, $20, $20, $20, $20, $7f, $00, $00, $00, $00
    db $00, $e0, $10, $10, $10, $20, $c0, $20, $10, $10, $10, $e0, $00, $00, $00, $00
    db $00, $01, $02, $02, $04, $04, $08, $0f, $10, $10, $20, $70, $00, $00, $00, $00
    db $00, $00, $80, $80, $40, $40, $20, $e0, $10, $10, $08, $1c, $00, $00, $00, $00
    db $08, $28, $28, $2f, $28, $29, $ff, $00, $49, $49, $49, $55, $63, $41, $7f, $41
    db $20, $20, $50, $50, $88, $4e, $24, $20, $00, $fc, $04, $08, $50, $20, $10, $10
    db $01, $7f, $44, $44, $7f, $4e, $55, $64, $4f, $40, $47, $40, $5f, $40, $82, $01
    db $00, $fc, $20, $20, $fc, $70, $ae, $24, $f0, $80, $f0, $80, $fc, $80, $80, $00
    db $10, $10, $17, $10, $fc, $10, $14, $18, $37, $d0, $10, $10, $10, $10, $50, $20
    db $10, $38, $c0, $40, $40, $40, $40, $44, $fe, $40, $40, $40, $42, $42, $3e, $00
    db $00, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $00, $00, $00, $00
    db $00, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00
    db $00, $07, $08, $10, $20, $20, $20, $20, $20, $11, $08, $07, $00, $00, $00, $00
    db $00, $c0, $20, $10, $08, $08, $08, $08, $08, $90, $60, $c0, $30, $00, $00, $00
    db $00, $00, $00, $fc, $05, $04, $48, $29, $10, $10, $28, $24, $44, $80, $00, $00
    db $10, $10, $10, $10, $fe, $10, $10, $10, $90, $90, $10, $10, $10, $10, $50, $20
    db $01, $08, $fc, $20, $23, $40, $40, $78, $cc, $4a, $4a, $48, $48, $78, $47, $00
    db $08, $88, $90, $00, $fc, $90, $90, $92, $96, $94, $98, $90, $90, $94, $fe, $00
    db $00, $7f, $40, $42, $62, $54, $54, $48, $48, $54, $52, $62, $61, $42, $40, $40
    db $04, $fe, $04, $0c, $8c, $54, $54, $24, $24, $54, $4c, $8c, $04, $04, $14, $08
    db $10, $13, $10, $7c, $10, $10, $fd, $12, $51, $5d, $51, $51, $71, $58, $87, $00
    db $08, $fc, $88, $88, $88, $a8, $10, $00, $f8, $08, $08, $08, $f8, $00, $fe, $00
    db $10, $17, $21, $21, $49, $f9, $11, $21, $41, $f9, $02, $02, $1c, $e4, $49, $02
    db $08, $fc, $08, $08, $10, $10, $3c, $84, $88, $48, $50, $20, $50, $88, $0e, $04
    db $00, $43, $30, $10, $00, $07, $f0, $10, $11, $11, $12, $17, $10, $28, $47, $00
    db $10, $f8, $00, $00, $08, $fc, $80, $80, $00, $20, $10, $f8, $08, $00, $fe, $00
    db $00, $00, $7c, $00, $01, $fe, $10, $10, $20, $24, $42, $fe, $42, $01, $02, $04
    db $40, $40, $40, $44, $fe, $44, $44, $44, $44, $44, $84, $84, $84, $04, $28, $10
    db $00, $1f, $10, $10, $1f, $00, $00, $3f, $21, $21, $21, $21, $22, $04, $18, $60
    db $10, $f8, $10, $10, $f0, $00, $08, $fc, $08, $08, $08, $08, $08, $60, $18, $04
    db $08, $08, $08, $08, $7f, $08, $0a, $0c, $18, $68, $08, $08, $08, $08, $28, $10
    db $40, $40, $40, $40, $40, $50, $4c, $46, $42, $40, $40, $40, $40, $40, $40, $40
    db $01, $01, $01, $01, $01, $01, $09, $19, $21, $41, $81, $01, $01, $01, $05, $02
    db $00, $00, $00, $00, $00, $00, $20, $10, $08, $0c, $04, $00, $00, $00, $00, $00
    db $00, $3f, $00, $00, $00, $01, $01, $ff, $01, $01, $01, $01, $01, $01, $05, $02
    db $10, $f8, $10, $20, $40, $80, $04, $fe, $00, $00, $00, $00, $00, $00, $00, $00
    db $20, $22, $3f, $48, $08, $ff, $10, $14, $22, $42, $9f, $10, $1f, $10, $1f, $10
    db $00, $04, $7e, $44, $44, $c4, $44, $7c, $44, $10, $f8, $10, $f0, $10, $f0, $10
    db $08, $7e, $08, $3e, $08, $7e, $08, $3f, $00, $ff, $00, $3f, $09, $28, $48, $07
    db $20, $fc, $20, $f8, $20, $fc, $20, $f8, $08, $fe, $08, $f8, $00, $a8, $24, $e0
    db $00, $7c, $44, $44, $46, $7d, $11, $10, $59, $52, $54, $51, $5d, $f2, $44, $08
    db $a0, $a0, $a0, $a0, $a4, $ac, $b0, $a0, $b0, $a8, $a8, $20, $22, $22, $1e, $00
    db $00, $7f, $40, $5f, $40, $5f, $40, $00, $1f, $10, $1f, $10, $1f, $10, $1f, $10
    db $04, $fe, $04, $f4, $04, $f4, $04, $00, $f0, $10, $f0, $10, $f0, $10, $f0, $10
    db $00, $78, $48, $51, $52, $65, $50, $48, $48, $4a, $69, $51, $41, $40, $4f, $40
    db $40, $40, $a0, $10, $0e, $f4, $00, $88, $48, $48, $48, $10, $10, $24, $fe, $00
    db $04, $03, $01, $00, $ff, $04, $04, $07, $04, $04, $04, $08, $08, $10, $20, $40
    db $00, $00, $00, $04, $fe, $00, $10, $f8, $10, $10, $10, $10, $10, $10, $a0, $40
    db $10, $10, $10, $10, $13, $fc, $10, $10, $10, $17, $10, $1d, $f1, $42, $04, $08
    db $80, $80, $80, $88, $fc, $88, $88, $88, $88, $fe, $80, $40, $20, $10, $0e, $04
    db $10, $10, $13, $10, $7c, $57, $54, $54, $55, $7d, $51, $15, $1d, $f5, $41, $01
    db $90, $90, $fc, $90, $90, $fe, $00, $08, $fc, $08, $08, $f8, $08, $08, $f8, $08
    db $08, $08, $1f, $28, $45, $00, $7f, $01, $01, $3f, $01, $01, $ff, $01, $01, $00
    db $20, $20, $7c, $a0, $10, $fc, $00, $00, $f8, $00, $00, $fc, $00, $02, $02, $fe
    db $10, $08, $7f, $00, $22, $14, $ff, $08, $7f, $08, $0a, $29, $48, $88, $29, $10
    db $00, $0c, $70, $40, $40, $40, $7e, $48, $48, $48, $48, $48, $88, $88, $08, $08
    db $01, $89, $51, $2f, $51, $91, $17, $14, $34, $54, $97, $14, $14, $14, $57, $24
    db $10, $10, $10, $fe, $10, $10, $fc, $44, $44, $44, $fc, $44, $44, $44, $fc, $04
    db $10, $10, $13, $12, $fe, $12, $16, $1a, $32, $d2, $12, $12, $14, $14, $58, $20
    db $08, $1c, $e0, $50, $50, $50, $50, $50, $50, $48, $48, $48, $44, $44, $42, $40
    db $02, $02, $02, $3f, $02, $02, $ff, $01, $02, $04, $0c, $17, $24, $44, $84, $03
    db $00, $00, $08, $d8, $20, $44, $fe, $00, $10, $38, $c0, $00, $00, $04, $04, $fc
    db $0c, $71, $40, $7c, $40, $7f, $02, $52, $4a, $42, $52, $4a, $42, $73, $c6, $00
    db $08, $fc, $08, $f8, $08, $f8, $00, $90, $50, $10, $90, $50, $10, $8a, $0a, $06
    db $00, $00, $00, $3f, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $00, $00, $00
    db $00, $00, $10, $f8, $00, $00, $00, $00, $00, $00, $00, $04, $fe, $00, $00, $00
    db $01, $01, $7f, $01, $3f, $02, $ff, $04, $09, $39, $c5, $03, $0d, $31, $05, $02
    db $00, $08, $fc, $00, $f8, $00, $fe, $40, $20, $30, $4e, $84, $60, $10, $00, $00
    db $01, $01, $01, $01, $41, $41, $41, $41, $41, $41, $41, $41, $41, $7f, $40, $00
    db $00, $00, $00, $00, $04, $04, $04, $04, $04, $04, $04, $04, $04, $fc, $04, $00
    db $10, $10, $22, $7f, $00, $3e, $22, $3e, $22, $3e, $22, $26, $00, $48, $44, $80
    db $80, $98, $e0, $84, $84, $7c, $80, $98, $e0, $84, $84, $7c, $00, $88, $46, $02
    db $08, $08, $08, $17, $10, $30, $5f, $90, $11, $13, $10, $11, $10, $10, $10, $10
    db $40, $40, $40, $fc, $40, $44, $fe, $80, $08, $fc, $08, $10, $a0, $40, $60, $20
    db $01, $01, $3f, $02, $04, $08, $ff, $00, $00, $1f, $10, $10, $1f, $10, $00, $00
    db $00, $10, $f8, $80, $40, $24, $fe, $10, $90, $d0, $90, $90, $90, $10, $50, $20
    db $08, $0f, $10, $20, $7f, $a1, $21, $21, $3f, $22, $02, $04, $04, $08, $10, $60
    db $00, $e0, $40, $88, $fc, $08, $08, $08, $f8, $88, $a0, $90, $92, $82, $7e, $00
    db $02, $01, $7f, $40, $80, $00, $3f, $01, $01, $1f, $01, $01, $01, $01, $7f, $00
    db $00, $04, $fe, $04, $08, $00, $f8, $00, $00, $f0, $00, $40, $20, $20, $fc, $00
    db $01, $02, $06, $09, $37, $c0, $00, $1f, $10, $11, $11, $11, $12, $04, $08, $30
    db $00, $80, $40, $30, $ce, $44, $80, $f0, $10, $10, $10, $10, $10, $c0, $30, $08
    db $01, $02, $04, $0a, $31, $df, $10, $1f, $10, $1f, $10, $13, $10, $14, $18, $10
    db $00, $80, $40, $30, $0e, $f4, $10, $f0, $10, $f8, $10, $20, $c0, $30, $18, $08
    db $02, $04, $3f, $21, $21, $3f, $21, $21, $3f, $21, $02, $02, $04, $08, $30, $c0
    db $00, $08, $fc, $08, $08, $f8, $08, $08, $f8, $80, $90, $a0, $a8, $fa, $8a, $7e
    db $00, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $20, $40, $00
    db $04, $04, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $84, $04, $04, $04
    db $01, $09, $09, $11, $11, $20, $03, $0c, $3f, $c8, $0f, $08, $0f, $08, $0f, $08
    db $00, $20, $10, $0c, $24, $c0, $00, $08, $fc, $08, $f8, $08, $f8, $08, $f8, $08
    db $01, $01, $ff, $01, $01, $7f, $48, $44, $5f, $41, $41, $5f, $41, $41, $41, $40
    db $00, $04, $fe, $00, $00, $fc, $24, $44, $f4, $04, $04, $f4, $04, $04, $14, $08
    db $10, $17, $11, $11, $fd, $11, $31, $39, $55, $51, $92, $12, $12, $14, $19, $12
    db $08, $fc, $08, $08, $10, $10, $3c, $84, $88, $48, $50, $20, $50, $88, $0e, $04
    db $01, $01, $02, $04, $09, $11, $21, $c9, $09, $09, $09, $09, $09, $09, $ff, $00
    db $00, $00, $80, $40, $20, $10, $0e, $04, $f0, $00, $00, $00, $00, $04, $fe, $00
    db $08, $38, $ec, $2a, $28, $fe, $28, $28, $38, $ea, $2c, $28, $35, $24, $a5, $42
    db $20, $40, $f8, $88, $a8, $88, $a8, $90, $80, $fe, $02, $12, $fa, $02, $14, $08
    db $00, $7f, $44, $44, $47, $48, $50, $5f, $40, $41, $41, $42, $4c, $40, $7f, $00
    db $08, $fc, $00, $10, $f8, $80, $88, $fc, $80, $40, $30, $18, $08, $00, $fc, $00
    db $01, $11, $11, $11, $3f, $21, $41, $41, $81, $3f, $01, $01, $01, $01, $ff, $00
    db $00, $00, $00, $08, $fc, $00, $00, $00, $10, $f8, $00, $00, $00, $04, $fe, $00
    db $02, $01, $7f, $44, $44, $44, $7f, $44, $4e, $4d, $54, $54, $65, $44, $84, $04
    db $00, $08, $fc, $20, $20, $24, $fe, $20, $70, $70, $a8, $a6, $24, $20, $20, $20
    db $01, $09, $0d, $11, $21, $03, $0c, $30, $df, $10, $1f, $10, $1f, $10, $1f, $10
    db $00, $20, $18, $4c, $84, $00, $00, $88, $fc, $80, $f8, $80, $f8, $80, $fe, $00
    db $00, $7d, $44, $48, $49, $51, $49, $49, $45, $45, $45, $69, $50, $40, $40, $40
    db $04, $fe, $08, $08, $e8, $28, $28, $28, $28, $28, $e8, $28, $08, $08, $28, $10
    db $01, $21, $19, $0d, $05, $01, $ff, $03, $03, $05, $09, $11, $21, $c1, $01, $01
    db $00, $08, $18, $20, $40, $04, $fe, $00, $80, $40, $20, $10, $0e, $04, $00, $00
    db $00, $40, $20, $20, $00, $0f, $e0, $21, $21, $22, $22, $24, $28, $50, $8f, $00
    db $80, $80, $80, $80, $88, $fc, $80, $00, $40, $20, $10, $18, $08, $00, $fe, $00
    db $00, $04, $fe, $11, $11, $21, $21, $3d, $65, $a5, $25, $25, $3d, $21, $02, $04
    db $40, $20, $24, $fe, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $7f, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $ff, $00, $00
    db $00, $08, $fc, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $fe, $00, $00
    db $04, $0e, $f8, $10, $13, $10, $fe, $10, $10, $7c, $44, $44, $44, $7c, $44, $00
    db $88, $88, $88, $88, $fe, $88, $88, $88, $88, $f8, $88, $88, $88, $88, $f8, $88
    db $02, $01, $00, $00, $08, $08, $28, $28, $28, $48, $88, $08, $08, $08, $07, $00
    db $00, $00, $80, $c0, $80, $00, $08, $04, $02, $02, $02, $10, $10, $10, $f0, $00
    db $00, $7f, $04, $24, $14, $14, $04, $04, $ff, $00, $0a, $29, $28, $48, $88, $07
    db $08, $fc, $40, $48, $58, $60, $40, $44, $fe, $00, $00, $90, $88, $24, $24, $e0
    db $00, $3f, $22, $3f, $26, $2b, $32, $2f, $28, $2f, $28, $2f, $49, $42, $8c, $30
    db $80, $fe, $20, $fc, $30, $6e, $a4, $f8, $88, $f8, $88, $f8, $40, $52, $4a, $3e
    db $20, $20, $20, $27, $fc, $24, $24, $27, $24, $24, $3c, $e6, $45, $08, $08, $10
    db $20, $28, $24, $fe, $20, $20, $24, $a4, $a8, $a8, $90, $90, $30, $52, $8a, $06
    db $01, $41, $31, $12, $82, $67, $2a, $02, $0a, $13, $e2, $22, $22, $22, $21, $20
    db $00, $04, $fe, $04, $04, $e4, $24, $24, $24, $e4, $04, $18, $02, $02, $fe, $00
    db $08, $09, $0f, $11, $11, $3f, $51, $91, $11, $13, $1d, $11, $11, $11, $15, $12
    db $20, $a8, $24, $20, $24, $fe, $20, $20, $a4, $18, $10, $30, $48, $0a, $06, $02
    db $22, $22, $7f, $22, $22, $3e, $22, $22, $3e, $22, $22, $ff, $00, $14, $23, $42
    db $08, $1c, $60, $40, $40, $40, $7e, $48, $48, $48, $48, $48, $88, $88, $08, $08
    db $01, $01, $01, $01, $01, $ff, $01, $03, $05, $09, $11, $21, $c1, $01, $01, $01
    db $00, $20, $10, $10, $00, $fe, $00, $80, $40, $20, $10, $0e, $04, $00, $00, $00
    db $10, $10, $3e, $24, $48, $be, $2b, $2a, $3e, $2a, $2a, $3f, $2a, $2a, $42, $86
    db $04, $fe, $44, $44, $54, $88, $10, $50, $7c, $90, $10, $fe, $10, $10, $10, $10
    db $00, $40, $32, $11, $01, $00, $f7, $10, $11, $11, $12, $14, $10, $28, $44, $83
    db $40, $40, $48, $48, $50, $40, $fe, $40, $60, $50, $4c, $44, $40, $40, $00, $fe
    db $10, $11, $17, $25, $24, $65, $a7, $22, $25, $29, $23, $24, $28, $20, $23, $2c
    db $80, $04, $fe, $14, $e4, $14, $fc, $08, $06, $fa, $08, $90, $60, $90, $0e, $04
    db $00, $01, $1e, $12, $12, $12, $12, $12, $12, $12, $22, $22, $22, $42, $43, $80
    db $38, $c0, $40, $40, $40, $40, $40, $40, $40, $20, $20, $90, $48, $a6, $24, $00
    db $00, $01, $fd, $11, $11, $12, $7c, $13, $10, $10, $1c, $f0, $41, $02, $04, $00
    db $20, $20, $20, $fc, $20, $20, $24, $fe, $60, $70, $b0, $a8, $2e, $24, $20, $20
    db $01, $02, $0f, $08, $0a, $09, $08, $08, $0f, $08, $02, $22, $22, $3f, $20, $00
    db $00, $20, $f0, $20, $20, $20, $60, $04, $fe, $04, $04, $24, $24, $e4, $34, $08
    db $10, $10, $11, $fd, $11, $13, $25, $21, $51, $51, $a1, $25, $45, $7d, $05, $01
    db $80, $c0, $24, $fe, $20, $20, $fc, $20, $20, $fc, $20, $20, $24, $fe, $00, $00
    db $01, $02, $03, $04, $05, $06, $07, $08, $01, $02, $03, $04, $09, $06, $07, $08
    db $01, $02, $03, $04, $0a, $06, $07, $08, $0b, $0c, $0d, $06, $07, $08, $0e, $0f
    db $10, $11, $12, $06, $07, $08, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c
    db $1d, $1e, $1f, $0b, $20, $21, $22, $23, $24, $12, $25, $26, $27, $28, $29, $2a
    db $2b, $2c, $2d, $2e, $2f, $30, $12, $25, $31, $32, $33, $34, $35, $36, $37, $11
    db $12, $38, $39, $3a, $12, $3b, $3c, $1b, $3d, $3e, $3f, $40, $41, $42, $43, $10
    db $44, $37, $45, $2a, $46, $47, $12, $48, $49, $4a, $03, $04, $4b, $4c, $4d, $4e
    db $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $55, $5c, $5d
    db $5a, $11, $5b, $5e, $5f, $60, $61, $5a, $3b, $62, $61, $5a, $63, $64, $65, $5a
    db $66, $67, $68, $59, $5a, $46, $69, $5a, $6a, $6b, $3e, $11, $5b, $6c, $6d, $6e
    db $6e, $6f, $50, $51, $70, $5a, $71, $72, $73, $74, $75, $76, $37, $77, $78, $79
    db $7a, $43, $7b, $5a, $7c, $7d, $7e, $7f, $80, $81, $77, $82, $1b, $35, $83, $84
    db $85, $86, $87, $35, $77, $88, $89, $02, $8a, $8b, $8c, $8d, $8e, $8e, $8f, $90
    db $91, $1b, $92, $93, $94, $95, $96, $97, $50, $51, $98, $99, $9a, $9b, $9c, $9d
    db $9e, $77, $78, $77, $9f, $a0, $a1, $a2, $71, $10, $a3, $a4, $a5, $6d, $7e, $7f
    db $a6, $a6, $24, $a7, $33, $a8, $7e, $7f, $a4, $a9, $7e, $7f, $aa, $ab, $77, $78
    db $4b, $4c, $4d, $87, $21, $ac, $ad, $71, $72, $50, $51, $01, $02, $43, $ae, $5d
    db $7c, $7d, $af, $0b, $5b, $3e, $5c, $b0, $80, $81, $77, $82, $0b, $35

    or c                                          ; $5c65: $b1

    db $30, $31, $20, $50, $4f, $4b, $45, $4d, $4f, $4e, $20, $47, $4f, $4c, $44, $45
    db $30, $32, $20, $50, $4f, $4b, $45, $4d, $4f, $4e, $20, $53, $4c, $49, $56, $45
    db $30, $33, $20, $50, $4f, $4b, $45, $4d, $4f, $4e, $20, $59, $45, $4c, $4c, $4f
    db $30, $34, $20, $53, $41, $4e, $47, $55, $4f, $43, $48, $49, $20, $20, $20, $20
    db $30, $35, $20, $52, $4f, $42, $4f, $54, $20, $57, $41, $52, $20, $20, $20, $20
    db $30, $36, $20, $4e, $45, $54, $54, $4f, $55, $20, $4b, $4f, $46, $20, $39, $36
    db $30, $37, $20, $59, $55, $55, $59, $55, $55, $20, $34, $20, $20, $20, $20, $20
    db $30, $38, $20, $53, $54, $52, $45, $45, $54, $20, $46, $49, $47, $48, $54, $45
    db $30, $39, $20, $56, $53, $20, $42, $41, $54, $54, $4c, $45, $52, $20, $20, $20
    db $31, $30, $20, $44, $52, $41, $47, $4f, $4e, $20, $53, $4c, $41, $59, $45, $52
    db $31, $31, $20, $54, $4d, $4e, $54, $33, $20, $20, $20, $20, $20, $20, $20, $20
    db $31, $32, $20, $4d, $41, $53, $54, $45, $52, $20, $4b, $41, $52, $41, $54, $45
    db $31, $33, $20, $46, $49, $4e, $41, $4c, $20, $52, $45, $56, $45, $52, $53, $45
    db $31, $34, $20, $43, $4f, $4e, $54, $52, $41, $20, $41, $4c, $49, $45, $4e, $20
    db $31, $35, $20, $42, $41, $54, $54, $4c, $45, $43, $49, $54, $59, $20, $20, $20
    db $31, $36, $20, $46, $49, $52, $45, $20, $46, $49, $47, $48, $54, $45, $52, $20
    db $31, $37, $20, $4b, $4f, $49, $20, $57, $41, $20, $4b, $41, $4b, $45, $48, $49
    db $31, $38, $20, $4d, $49, $4e, $45, $53, $57, $45, $45, $50, $45, $52, $20, $20
    db $31, $39, $20, $42, $4f, $4d, $42, $20, $4a, $41, $43, $4b, $20, $20, $20, $20
    db $32, $30, $20, $53, $50, $41, $43, $45, $20, $49, $4e, $56, $41, $44, $45, $52
    db $32, $31, $20, $48, $45, $49, $41, $4e, $4b, $59, $4f, $20, $41, $4c, $49, $45
    db $32, $32, $20, $42, $4f, $58, $58, $4c, $45, $20, $20, $20, $20, $20, $20, $20
    db $32, $33, $20, $50, $49, $50, $45, $20, $44, $52, $45, $41, $4d, $20, $20, $20
    db $32, $34, $20, $53, $50, $49, $44, $45, $52, $20, $4d, $41, $4e, $20, $20, $20
    db $32, $35, $20, $41, $4c, $4c, $53, $54, $41, $52, $43, $48, $41, $4c, $4c, $45
    db $32, $36, $20, $53, $49, $44, $45, $20, $50, $4f, $43, $4b, $45, $54, $20, $20
    db $32, $37, $20, $53, $4f, $43, $43, $45, $52, $20, $42, $4f, $59, $20, $20, $20
    db $32, $38, $20, $53, $4f, $43, $43, $45, $52, $20, $4d, $41, $4e, $49, $41, $20
    db $32, $39, $20, $53, $45, $41, $53, $49, $44, $45, $20, $56, $4f, $4c, $4c, $45
    db $33, $30, $20, $47, $42, $20, $42, $41, $53, $4b, $45, $54, $42, $41, $4c, $4c
    db $33, $31, $20, $57, $4f, $52, $4c, $44, $20, $42, $4f, $57, $4c, $49, $4e, $47
    db $33, $32, $20, $4d, $4f, $54, $4f, $43, $52, $4f, $53, $53, $4d, $41, $4e, $49
    db $33, $33, $20, $42, $52, $41, $49, $4e, $42, $45, $4e, $44, $45, $52, $20, $20
    db $33, $34, $20, $54, $45, $4e, $4e, $49, $53, $20, $20, $20, $20, $20, $20, $20
    db $33, $35, $20, $48, $59, $50, $45, $52, $4c, $4f, $44, $45, $52, $55, $4e, $4e
    db $33, $36, $20, $54, $52, $55, $4d, $50, $20, $20, $42, $4f, $59, $20, $20, $20
    db $33, $37, $20, $50, $4f, $50, $20, $55, $50, $20, $20, $20, $20, $20, $20, $20
    db $33, $38, $20, $4d, $41, $52, $49, $4f, $20, $41, $4e, $44, $20, $59, $4f, $53
    db $33, $39, $20, $4b, $55, $52, $45, $59, $4f, $20, $53, $48, $49, $4e, $20, $34
    db $34, $30, $20, $54, $4f, $4d, $20, $41, $4e, $44, $20, $4a, $45, $52, $52, $59
    db $34, $31, $20, $54, $41, $52, $5a, $41, $4e, $20, $20, $20, $20, $20, $20, $20
    db $34, $32, $20, $54, $41, $53, $4d, $41, $4e, $49, $41, $20, $53, $54, $4f, $52
    db $34, $33, $20, $42, $55, $47, $53, $20, $42, $55, $4e, $4e, $59, $20, $20, $20
    db $34, $34, $20, $50, $41, $43, $20, $4d, $41, $4e, $20, $20, $20, $20, $20, $20
    db $34, $35, $20, $53, $48, $49, $53, $45, $4e, $53, $59, $4f, $20, $20, $20, $20
    db $34, $36, $20, $50, $45, $4e, $47, $55, $49, $4e, $20, $4c, $41, $4e, $44, $20
    db $34, $37, $20, $44, $52, $2e, $4d, $41, $52, $49, $4f, $20, $20, $20, $20, $20
    db $34, $38, $20, $53, $48, $41, $4e, $47, $48, $41, $49, $20, $20, $20, $20, $20
    db $34, $39, $20, $41, $4d, $49, $44, $41, $20, $20, $20, $20, $20, $20, $20, $20
    db $35, $30, $20, $50, $49, $54, $4d, $41, $4e, $20, $20, $20, $20, $20, $20, $20
    db $35, $31, $20, $55, $4c, $54, $52, $41, $4d, $41, $4e, $43, $4c, $55, $42, $20
    db $35, $32, $20, $43, $41, $53, $54, $4c, $45, $56, $41, $4e, $49, $41, $20, $41
    db $35, $33, $20, $4b, $4c, $41, $58, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $35, $34, $20, $42, $55, $42, $42, $4c, $45, $20, $47, $48, $4f, $53, $54, $20
    db $35, $35, $20, $54, $45, $54, $52, $49, $53, $20, $20, $20, $20, $20, $20, $20
    db $35, $36, $20, $46, $4c, $49, $50, $55, $4c, $4c, $20, $20, $20, $20, $20, $20
    db $35, $37, $20, $50, $55, $5a, $5a, $4c, $45, $20, $42, $4f, $59, $20, $20, $20
    db $35, $38, $20, $42, $4f, $58, $58, $4c, $45, $32, $20, $20, $20, $20, $20, $20
    db $35, $39, $20, $4d, $4f, $47, $55, $52, $41, $20, $44, $45, $20, $50, $4f, $4e
    db $36, $30, $20, $53, $55, $50, $45, $52, $20, $4d, $41, $52, $49, $4f, $4c, $41
    db $36, $31, $20, $50, $49, $4e, $42, $41, $4c, $4c, $20, $20, $20, $20, $20, $20
    db $36, $32, $20, $41, $44, $56, $45, $4e, $54, $55, $52, $45, $20, $49, $53, $4c
    db $36, $33, $20, $46, $31, $20, $42, $4f, $59, $20, $20, $20, $20, $20, $20, $20
    db $36, $34, $20, $4b, $55, $52, $45, $59, $4f, $20, $53, $48, $49, $4e, $20, $33

    sub b                                         ; $6066: $90
    ret nz                                        ; $6067: $c0

    add b                                         ; $6068: $80
    nop                                           ; $6069: $00
    sub c                                         ; $606a: $91
    ret nz                                        ; $606b: $c0

    ret nz                                        ; $606c: $c0

    nop                                           ; $606d: $00
    sub d                                         ; $606e: $92
    ldh [$60], a                                  ; $606f: $e0 $60
    nop                                           ; $6071: $00
    sub e                                         ; $6072: $93
    ld hl, sp-$18                                 ; $6073: $f8 $e8
    nop                                           ; $6075: $00
    sub e                                         ; $6076: $93
    db $fc                                        ; $6077: $fc
    ld b, b                                       ; $6078: $40
    nop                                           ; $6079: $00
    ldh a, [$f0]                                  ; $607a: $f0 $f0
    or b                                          ; $607c: $b0
    nop                                           ; $607d: $00
    ldh a, [$f8]                                  ; $607e: $f0 $f8
    xor b                                         ; $6080: $a8
    nop                                           ; $6081: $00
    ldh a, [$f0]                                  ; $6082: $f0 $f0
    ldh a, [rP1]                                  ; $6084: $f0 $00
    ldh a, [$fe]                                  ; $6086: $f0 $fe
    jr nz, jr_001_608a                            ; $6088: $20 $00

jr_001_608a:
    ldh a, [rIE]                                  ; $608a: $f0 $ff
    ld bc, $f000                                  ; $608c: $01 $00 $f0
    db $fc                                        ; $608f: $fc
    ld b, h                                       ; $6090: $44
    nop                                           ; $6091: $00
    ldh a, [rIE]                                  ; $6092: $f0 $ff
    ld [bc], a                                    ; $6094: $02
    nop                                           ; $6095: $00
    ldh a, [$fe]                                  ; $6096: $f0 $fe
    ld [hl+], a                                   ; $6098: $22
    nop                                           ; $6099: $00
    ldh a, [$fc]                                  ; $609a: $f0 $fc
    ld c, b                                       ; $609c: $48
    nop                                           ; $609d: $00
    ldh a, [rIE]                                  ; $609e: $f0 $ff
    inc bc                                        ; $60a0: $03
    nop                                           ; $60a1: $00
    ldh a, [$fc]                                  ; $60a2: $f0 $fc
    ld c, h                                       ; $60a4: $4c
    nop                                           ; $60a5: $00
    ldh a, [rIE]                                  ; $60a6: $f0 $ff
    inc b                                         ; $60a8: $04
    nop                                           ; $60a9: $00
    ldh a, [rIE]                                  ; $60aa: $f0 $ff
    dec b                                         ; $60ac: $05
    nop                                           ; $60ad: $00
    ldh a, [rIE]                                  ; $60ae: $f0 $ff
    ld b, $00                                     ; $60b0: $06 $00
    ldh a, [rIE]                                  ; $60b2: $f0 $ff
    rlca                                          ; $60b4: $07
    nop                                           ; $60b5: $00
    ldh a, [rIE]                                  ; $60b6: $f0 $ff
    ld [$f000], sp                                ; $60b8: $08 $00 $f0
    rst $38                                       ; $60bb: $ff
    add hl, bc                                    ; $60bc: $09
    nop                                           ; $60bd: $00
    ldh a, [rIE]                                  ; $60be: $f0 $ff
    ld a, [bc]                                    ; $60c0: $0a
    nop                                           ; $60c1: $00
    ldh a, [$fe]                                  ; $60c2: $f0 $fe
    inc h                                         ; $60c4: $24
    nop                                           ; $60c5: $00
    ldh a, [$fe]                                  ; $60c6: $f0 $fe
    ld h, $00                                     ; $60c8: $26 $00
    ldh a, [$fe]                                  ; $60ca: $f0 $fe
    jr z, jr_001_60ce                             ; $60cc: $28 $00

jr_001_60ce:
    ldh a, [$fe]                                  ; $60ce: $f0 $fe
    ld a, [hl+]                                   ; $60d0: $2a
    nop                                           ; $60d1: $00
    ldh a, [$fe]                                  ; $60d2: $f0 $fe
    ld a, $00                                     ; $60d4: $3e $00
    ldh a, [$fe]                                  ; $60d6: $f0 $fe
    inc l                                         ; $60d8: $2c
    nop                                           ; $60d9: $00
    ldh a, [$fc]                                  ; $60da: $f0 $fc
    and h                                         ; $60dc: $a4
    nop                                           ; $60dd: $00
    ldh a, [rIE]                                  ; $60de: $f0 $ff
    dec bc                                        ; $60e0: $0b
    nop                                           ; $60e1: $00
    ldh a, [rIE]                                  ; $60e2: $f0 $ff
    inc c                                         ; $60e4: $0c
    nop                                           ; $60e5: $00
    ldh a, [rIE]                                  ; $60e6: $f0 $ff
    dec c                                         ; $60e8: $0d
    nop                                           ; $60e9: $00
    ldh a, [rIE]                                  ; $60ea: $f0 $ff
    ld c, $00                                     ; $60ec: $0e $00
    ldh a, [rIE]                                  ; $60ee: $f0 $ff
    rrca                                          ; $60f0: $0f
    nop                                           ; $60f1: $00
    ldh a, [rIE]                                  ; $60f2: $f0 $ff
    stop                                          ; $60f4: $10 $00
    ldh a, [rIE]                                  ; $60f6: $f0 $ff
    ld de, $f000                                  ; $60f8: $11 $00 $f0
    cp $2e                                        ; $60fb: $fe $2e
    nop                                           ; $60fd: $00
    ldh a, [$fc]                                  ; $60fe: $f0 $fc
    ld d, b                                       ; $6100: $50
    nop                                           ; $6101: $00
    ldh a, [$fc]                                  ; $6102: $f0 $fc
    ld d, h                                       ; $6104: $54
    nop                                           ; $6105: $00
    ldh a, [$fc]                                  ; $6106: $f0 $fc
    ld e, b                                       ; $6108: $58
    nop                                           ; $6109: $00
    ldh a, [rIE]                                  ; $610a: $f0 $ff
    ld [de], a                                    ; $610c: $12
    nop                                           ; $610d: $00
    ldh a, [$fe]                                  ; $610e: $f0 $fe
    jr nc, jr_001_6112                            ; $6110: $30 $00

jr_001_6112:
    ldh a, [$fe]                                  ; $6112: $f0 $fe
    ld [hl-], a                                   ; $6114: $32
    nop                                           ; $6115: $00
    ldh a, [rIE]                                  ; $6116: $f0 $ff
    inc de                                        ; $6118: $13
    nop                                           ; $6119: $00
    ldh a, [rIE]                                  ; $611a: $f0 $ff
    inc d                                         ; $611c: $14
    nop                                           ; $611d: $00
    ldh a, [rIE]                                  ; $611e: $f0 $ff
    dec d                                         ; $6120: $15
    nop                                           ; $6121: $00
    ldh a, [rIE]                                  ; $6122: $f0 $ff
    rra                                           ; $6124: $1f
    nop                                           ; $6125: $00
    ldh a, [rIE]                                  ; $6126: $f0 $ff
    ld d, $00                                     ; $6128: $16 $00
    ldh a, [rIE]                                  ; $612a: $f0 $ff
    rla                                           ; $612c: $17
    nop                                           ; $612d: $00
    ldh a, [$fe]                                  ; $612e: $f0 $fe
    inc [hl]                                      ; $6130: $34
    nop                                           ; $6131: $00
    ldh a, [$fe]                                  ; $6132: $f0 $fe
    ld [hl], $00                                  ; $6134: $36 $00
    ldh a, [rIE]                                  ; $6136: $f0 $ff
    jr jr_001_613a                                ; $6138: $18 $00

jr_001_613a:
    ldh a, [rIE]                                  ; $613a: $f0 $ff
    add hl, de                                    ; $613c: $19
    nop                                           ; $613d: $00
    ldh a, [rIE]                                  ; $613e: $f0 $ff
    ld a, [de]                                    ; $6140: $1a
    nop                                           ; $6141: $00
    ldh a, [rIE]                                  ; $6142: $f0 $ff
    dec de                                        ; $6144: $1b
    nop                                           ; $6145: $00
    ldh a, [rIE]                                  ; $6146: $f0 $ff
    inc e                                         ; $6148: $1c
    nop                                           ; $6149: $00
    ldh a, [rIE]                                  ; $614a: $f0 $ff
    dec e                                         ; $614c: $1d
    nop                                           ; $614d: $00
    ldh a, [rIE]                                  ; $614e: $f0 $ff
    ld e, $00                                     ; $6150: $1e $00
    ldh a, [$fe]                                  ; $6152: $f0 $fe
    jr c, jr_001_6156                             ; $6154: $38 $00

jr_001_6156:
    ldh a, [$fe]                                  ; $6156: $f0 $fe
    ld a, [hl-]                                   ; $6158: $3a
    nop                                           ; $6159: $00
    ldh a, [$fc]                                  ; $615a: $f0 $fc
    ld e, h                                       ; $615c: $5c
    nop                                           ; $615d: $00
    ldh a, [$fe]                                  ; $615e: $f0 $fe
    inc a                                         ; $6160: $3c
    nop                                           ; $6161: $00

    db $f0, $fc, $e4

    nop                                           ; $6165: $00

    db $3c, $66, $6e, $76, $66, $66, $3c, $00, $18, $38, $18, $18, $18, $18, $18, $00
    db $3c, $66, $0e, $1c, $38, $70, $7e, $00, $7e, $0c, $18, $3c, $06, $46, $3c, $00
    db $0c, $1c, $2c, $4c, $7e, $0c, $0c, $00, $7e, $60, $7c, $06, $06, $46, $3c, $00
    db $1c, $20, $60, $7c, $66, $66, $3c, $00, $7e, $06, $0e, $1c, $18, $18, $18, $00
    db $3c, $66, $66, $3c, $66, $66, $3c, $00, $3c, $66, $66, $3e, $06, $0c, $38, $00
    db $00, $18, $18, $00, $00, $18, $18, $00, $00, $18, $18, $00, $18, $18, $10, $00
    db $06, $0c, $18, $30, $18, $0c, $06, $00, $00, $00, $3c, $00, $00, $3c, $00, $00
    db $60, $30, $18, $0c, $18, $30, $60, $00, $3c, $46, $06, $0c, $18, $18, $00, $18
    db $3c, $66, $6e, $6a, $6e, $60, $3c, $00, $3c, $66, $66, $7e, $66, $66, $66, $00
    db $7c, $66, $66, $7c, $66, $66, $7c, $00, $3c, $62, $60, $60, $60, $62, $3c, $00
    db $7c, $66, $66, $66, $66, $66, $7c, $00, $7e, $60, $60, $7c, $60, $60, $7e, $00
    db $7e, $60, $60, $7c, $60, $60, $60, $00, $3c, $62, $60, $6e, $66, $66, $3e, $00
    db $66, $66, $66, $7e, $66, $66, $66, $00, $18, $18, $18, $18, $18, $18, $18, $00
    db $06, $06, $06, $06, $06, $46, $3c, $00, $66, $6c, $78, $70, $78, $6c

    ld h, [hl]                                    ; $6244: $66
    nop                                           ; $6245: $00
    ld h, b                                       ; $6246: $60
    ld h, b                                       ; $6247: $60
    ld h, b                                       ; $6248: $60
    ld h, b                                       ; $6249: $60
    ld h, b                                       ; $624a: $60
    ld h, b                                       ; $624b: $60
    ld a, h                                       ; $624c: $7c
    nop                                           ; $624d: $00
    db $fc                                        ; $624e: $fc
    sub $d6                                       ; $624f: $d6 $d6
    sub $d6                                       ; $6251: $d6 $d6
    add $c6                                       ; $6253: $c6 $c6
    nop                                           ; $6255: $00
    ld h, d                                       ; $6256: $62
    ld [hl], d                                    ; $6257: $72
    ld a, d                                       ; $6258: $7a
    ld e, [hl]                                    ; $6259: $5e
    ld c, [hl]                                    ; $625a: $4e
    ld b, [hl]                                    ; $625b: $46
    ld b, d                                       ; $625c: $42
    nop                                           ; $625d: $00
    inc a                                         ; $625e: $3c
    ld h, [hl]                                    ; $625f: $66
    ld h, [hl]                                    ; $6260: $66
    ld h, [hl]                                    ; $6261: $66
    ld h, [hl]                                    ; $6262: $66
    ld h, [hl]                                    ; $6263: $66
    inc a                                         ; $6264: $3c
    nop                                           ; $6265: $00
    ld a, h                                       ; $6266: $7c
    ld h, [hl]                                    ; $6267: $66
    ld h, [hl]                                    ; $6268: $66
    ld a, h                                       ; $6269: $7c
    ld h, b                                       ; $626a: $60
    ld h, b                                       ; $626b: $60
    ld h, b                                       ; $626c: $60
    nop                                           ; $626d: $00
    inc a                                         ; $626e: $3c
    ld h, [hl]                                    ; $626f: $66
    ld h, [hl]                                    ; $6270: $66
    ld h, [hl]                                    ; $6271: $66
    ld h, [hl]                                    ; $6272: $66
    ld h, [hl]                                    ; $6273: $66
    inc a                                         ; $6274: $3c
    ld b, $7c                                     ; $6275: $06 $7c
    ld h, [hl]                                    ; $6277: $66
    ld h, [hl]                                    ; $6278: $66
    ld a, h                                       ; $6279: $7c
    ld h, [hl]                                    ; $627a: $66
    ld h, [hl]                                    ; $627b: $66
    ld h, [hl]                                    ; $627c: $66
    nop                                           ; $627d: $00
    inc a                                         ; $627e: $3c
    ld h, d                                       ; $627f: $62
    ld [hl], b                                    ; $6280: $70
    inc a                                         ; $6281: $3c
    ld c, $46                                     ; $6282: $0e $46
    inc a                                         ; $6284: $3c
    nop                                           ; $6285: $00
    ld a, [hl]                                    ; $6286: $7e
    jr jr_001_62a1                                ; $6287: $18 $18

    db $18, $18, $18, $18, $00, $66, $66, $66, $66, $66, $66, $3c, $00, $66, $66, $66
    db $66, $66, $64, $78, $00, $c6, $c6, $c6

jr_001_62a1:
    sub $d6                                       ; $62a1: $d6 $d6
    sub $fc                                       ; $62a3: $d6 $fc
    nop                                           ; $62a5: $00
    ld h, [hl]                                    ; $62a6: $66
    ld h, [hl]                                    ; $62a7: $66
    ld h, [hl]                                    ; $62a8: $66
    inc a                                         ; $62a9: $3c
    ld h, [hl]                                    ; $62aa: $66
    ld h, [hl]                                    ; $62ab: $66
    ld h, [hl]                                    ; $62ac: $66
    nop                                           ; $62ad: $00
    ld h, [hl]                                    ; $62ae: $66
    ld h, [hl]                                    ; $62af: $66
    ld h, [hl]                                    ; $62b0: $66
    inc a                                         ; $62b1: $3c
    jr jr_001_62cc                                ; $62b2: $18 $18

    db $18, $00, $7e, $0e, $1c, $38, $70, $60, $7e, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $18, $14, $f2, $81, $81, $f2

jr_001_62cc:
    inc d                                         ; $62cc: $14
    jr jr_001_630d                                ; $62cd: $18 $3e

    db $ff, $e0, $24, $3e, $77, $e0, $10

    ld a, $80                                     ; $62d6: $3e $80
    ldh [rNR11], a                                ; $62d8: $e0 $11
    ld a, $f7                                     ; $62da: $3e $f7
    ldh [rNR12], a                                ; $62dc: $e0 $12
    ld a, $a0                                     ; $62de: $3e $a0
    ldh [rNR13], a                                ; $62e0: $e0 $13
    ld a, $f7                                     ; $62e2: $3e $f7
    ldh [rNR14], a                                ; $62e4: $e0 $14
    xor a                                         ; $62e6: $af

jr_001_62e7:
    ldh a, [rLY]                                  ; $62e7: $f0 $44
    cp $91                                        ; $62e9: $fe $91
    jr c, jr_001_62e7                             ; $62eb: $38 $fa

    ret                                           ; $62ed: $c9


    db $ff, $7f, $1f, $00, $42, $7c, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

jr_001_630d:
    nop                                           ; $630d: $00
    nop                                           ; $630e: $00
    nop                                           ; $630f: $00
    nop                                           ; $6310: $00
    nop                                           ; $6311: $00
    nop                                           ; $6312: $00
    nop                                           ; $6313: $00
    nop                                           ; $6314: $00
    db $fc                                        ; $6315: $fc
    nop                                           ; $6316: $00
    nop                                           ; $6317: $00
    nop                                           ; $6318: $00
    nop                                           ; $6319: $00
    nop                                           ; $631a: $00
    nop                                           ; $631b: $00
    nop                                           ; $631c: $00
    nop                                           ; $631d: $00
    nop                                           ; $631e: $00
    nop                                           ; $631f: $00
    nop                                           ; $6320: $00
    nop                                           ; $6321: $00
    nop                                           ; $6322: $00
    nop                                           ; $6323: $00
    rrca                                          ; $6324: $0f
    rrca                                          ; $6325: $0f
    nop                                           ; $6326: $00
    nop                                           ; $6327: $00
    nop                                           ; $6328: $00
    nop                                           ; $6329: $00
    nop                                           ; $632a: $00
    nop                                           ; $632b: $00
    nop                                           ; $632c: $00
    nop                                           ; $632d: $00
    nop                                           ; $632e: $00
    nop                                           ; $632f: $00
    nop                                           ; $6330: $00
    nop                                           ; $6331: $00
    nop                                           ; $6332: $00
    nop                                           ; $6333: $00
    ret nz                                        ; $6334: $c0

    db $c0, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff
    db $00, $00, $03, $00, $07, $00, $0e, $00, $1c, $00, $1c, $00, $3f, $00, $3f, $00
    db $3e, $00, $c0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $f8, $00, $bc, $00
    db $1e, $00, $00, $00, $00, $00, $01, $00, $03, $00, $07, $00, $06, $00, $0c, $00
    db $1c, $00, $f0, $00, $f0, $00, $f0, $00, $f0, $00, $f0, $00, $f0, $00, $f0, $00
    db $f0, $00, $7f, $00, $1c, $00, $1c, $00, $1c, $00, $1c, $00, $1c, $00, $1c, $00
    db $1c, $00, $3f, $00, $0f, $00, $0f, $00, $0f, $00, $0d, $00, $0c, $00, $0c, $00
    db $0c, $00, $07, $00, $81, $00, $c1, $00, $c1, $00, $e1, $00, $f1, $00, $f1, $00
    db $79, $00, $e0, $00, $80, $00, $80, $00, $80, $00, $80, $00, $80, $00, $80, $00
    db $80, $00, $1c, $00, $fc, $00, $1c, $00, $1c, $00, $1c, $00, $1c, $00, $1c, $00
    db $1c, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff
    db $00, $03, $03, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $c0
    db $00, $f8, $f8, $e0, $e0, $e0, $e0, $e0, $e0, $f0, $f0, $70, $70, $78, $78, $38
    db $38, $7e, $7e, $1c, $1c, $18, $18, $38, $38, $30, $30, $30, $30, $70, $70, $60
    db $60, $38, $38, $30, $30, $70, $70, $00, $00, $00, $00, $00, $00, $00, $00, $07
    db $07, $f0, $f0, $78, $78, $38, $38, $38, $38, $38, $38, $70, $70, $c0, $c0, $f0
    db $f0, $00, $3e, $00, $3c, $00, $3c, $00, $3c, $00, $1c, $00, $1e, $00, $0f, $00
    db $03, $00, $0e, $00, $0e, $00, $0e, $00, $0e, $00, $0e, $00, $0c, $00, $18, $00
    db $f0, $00, $38, $00, $30, $00, $3f, $00, $00, $00, $00, $00, $00, $00, $01, $00
    db $00, $00, $f0, $00, $f0, $00, $fc, $00, $f0, $00, $f0, $00, $f0, $00, $f0, $00
    db $00, $00, $1c, $00, $1c, $00, $1c, $00, $1c, $00, $1c, $00, $1c, $00, $1c, $00
    db $7f, $00, $0c, $00, $0c, $00, $0c, $00, $0c, $00, $0c, $00, $0c, $00, $0c, $00
    db $3f, $00, $3d, $00, $3d, $00, $1f, $00, $0f, $00, $0f, $00, $07, $00, $03, $00
    db $03, $00, $80, $00, $80, $00, $80, $00, $80, $00, $80, $00, $80, $00, $80, $00
    db $80, $00, $1c, $00, $1c, $00, $1c, $00, $1c, $00, $1c, $00, $1c, $00, $1c, $00
    db $ff, $07, $00, $07, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $80, $ff, $00, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $c0, $00, $c0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $38, $38, $3c, $3c, $1c, $1c, $1d, $1d, $1f, $1f, $0f, $0f, $0f, $0f, $07
    db $07, $60, $60, $e0, $e0, $c0, $c0, $c0, $c0, $80, $80, $80, $80, $80, $80, $00
    db $00, $00, $00, $00, $00, $00, $00, $60, $60, $f0, $f0, $70, $70, $38, $38, $0f
    db $0f, $78, $78, $38, $38, $3c, $3c, $3c, $3c, $38, $38, $38, $38, $f0, $f0, $c0
    db $c0, $00, $00, $00, $00, $18, $00, $3c, $00, $3c, $00, $18, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $18, $00, $3c, $00, $3c, $00, $18, $00, $00, $00
    db $00, $00, $00, $00, $00, $18, $18, $3c, $3c, $3c, $3c, $18, $18, $00, $00, $00
    db $00, $00, $00, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $02, $03, $00, $00, $00, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e
    db $0f, $0f, $10, $11, $12, $13, $14, $00, $00, $00, $15, $16, $17, $18, $19, $1a
    db $1b, $1c, $1d, $1e, $1f, $1f, $20, $21, $22, $23, $24, $00, $00, $25, $26, $27
    db $25, $26, $27, $25, $26, $27, $25, $25, $26, $27, $25, $26, $27, $25, $26, $27
    db $25, $fa, $05, $c8, $fe, $00, $ca, $95, $ff, $57, $fa, $03, $c8, $c6, $0a, $15
    db $c2, $8c, $ff, $c3, $98, $ff, $fa, $03, $c8, $fe, $ff, $ca, $f6, $ff, $fe, $ff
    db $ca, $f6, $ff, $fe, $ff, $ca, $f6, $ff, $fe, $ff, $ca, $f6, $ff, $fe, $ff, $ca
    db $f6, $ff, $fe, $ff, $ca, $f6, $ff, $fe, $ff, $ca, $f6, $ff, $fe, $ff, $ca, $f6
    db $ff, $fe, $ff, $ca, $f6, $ff, $fe, $ff, $ca, $f6, $ff, $fe, $ff, $ca, $f6, $ff
    db $4f, $06, $00, $cb, $21, $cb, $10, $cb, $21, $cb, $10, $21, $66, $60, $09, $2a
    db $f5, $2a, $f5, $7e, $ea, $00, $70, $f1, $ea, $01, $70, $f1, $ea, $02, $70, $3e
    db $01, $ea, $00, $20, $c3, $00, $01, $fa, $00, $d0, $c3, $c5, $05, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00

    nop                                           ; $66f6: $00
    nop                                           ; $66f7: $00
    nop                                           ; $66f8: $00
    nop                                           ; $66f9: $00
    nop                                           ; $66fa: $00
    nop                                           ; $66fb: $00
    nop                                           ; $66fc: $00
    nop                                           ; $66fd: $00
    nop                                           ; $66fe: $00
    nop                                           ; $66ff: $00
    nop                                           ; $6700: $00
    nop                                           ; $6701: $00
    nop                                           ; $6702: $00
    nop                                           ; $6703: $00
    nop                                           ; $6704: $00
    nop                                           ; $6705: $00
    nop                                           ; $6706: $00
    nop                                           ; $6707: $00
    nop                                           ; $6708: $00
    nop                                           ; $6709: $00
    nop                                           ; $670a: $00
    nop                                           ; $670b: $00
    nop                                           ; $670c: $00
    nop                                           ; $670d: $00
    nop                                           ; $670e: $00
    nop                                           ; $670f: $00
    nop                                           ; $6710: $00
    nop                                           ; $6711: $00
    nop                                           ; $6712: $00
    nop                                           ; $6713: $00
    nop                                           ; $6714: $00
    nop                                           ; $6715: $00
    nop                                           ; $6716: $00
    nop                                           ; $6717: $00
    nop                                           ; $6718: $00
    nop                                           ; $6719: $00
    nop                                           ; $671a: $00
    nop                                           ; $671b: $00
    nop                                           ; $671c: $00
    nop                                           ; $671d: $00
    nop                                           ; $671e: $00
    nop                                           ; $671f: $00
    nop                                           ; $6720: $00
    nop                                           ; $6721: $00
    nop                                           ; $6722: $00
    nop                                           ; $6723: $00
    nop                                           ; $6724: $00
    nop                                           ; $6725: $00
    nop                                           ; $6726: $00
    nop                                           ; $6727: $00
    nop                                           ; $6728: $00
    nop                                           ; $6729: $00
    nop                                           ; $672a: $00
    nop                                           ; $672b: $00
    nop                                           ; $672c: $00
    nop                                           ; $672d: $00
    nop                                           ; $672e: $00
    nop                                           ; $672f: $00
    nop                                           ; $6730: $00
    nop                                           ; $6731: $00
    nop                                           ; $6732: $00
    nop                                           ; $6733: $00
    nop                                           ; $6734: $00
    nop                                           ; $6735: $00
    nop                                           ; $6736: $00
    nop                                           ; $6737: $00
    nop                                           ; $6738: $00
    nop                                           ; $6739: $00
    nop                                           ; $673a: $00
    nop                                           ; $673b: $00
    nop                                           ; $673c: $00
    nop                                           ; $673d: $00
    nop                                           ; $673e: $00
    nop                                           ; $673f: $00
    nop                                           ; $6740: $00
    nop                                           ; $6741: $00
    nop                                           ; $6742: $00
    nop                                           ; $6743: $00
    nop                                           ; $6744: $00
    nop                                           ; $6745: $00
    nop                                           ; $6746: $00
    nop                                           ; $6747: $00
    nop                                           ; $6748: $00
    nop                                           ; $6749: $00
    nop                                           ; $674a: $00
    nop                                           ; $674b: $00
    nop                                           ; $674c: $00
    nop                                           ; $674d: $00
    nop                                           ; $674e: $00
    nop                                           ; $674f: $00
    nop                                           ; $6750: $00
    nop                                           ; $6751: $00
    nop                                           ; $6752: $00
    nop                                           ; $6753: $00
    nop                                           ; $6754: $00
    nop                                           ; $6755: $00
    nop                                           ; $6756: $00
    nop                                           ; $6757: $00
    nop                                           ; $6758: $00
    nop                                           ; $6759: $00
    nop                                           ; $675a: $00
    nop                                           ; $675b: $00
    nop                                           ; $675c: $00
    nop                                           ; $675d: $00
    nop                                           ; $675e: $00
    nop                                           ; $675f: $00
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    nop                                           ; $6762: $00
    nop                                           ; $6763: $00
    nop                                           ; $6764: $00
    nop                                           ; $6765: $00
    nop                                           ; $6766: $00
    nop                                           ; $6767: $00
    nop                                           ; $6768: $00
    nop                                           ; $6769: $00
    nop                                           ; $676a: $00
    nop                                           ; $676b: $00
    nop                                           ; $676c: $00
    nop                                           ; $676d: $00
    nop                                           ; $676e: $00
    nop                                           ; $676f: $00
    nop                                           ; $6770: $00
    nop                                           ; $6771: $00
    nop                                           ; $6772: $00
    nop                                           ; $6773: $00
    nop                                           ; $6774: $00
    nop                                           ; $6775: $00
    nop                                           ; $6776: $00
    nop                                           ; $6777: $00
    nop                                           ; $6778: $00
    nop                                           ; $6779: $00
    nop                                           ; $677a: $00
    nop                                           ; $677b: $00
    nop                                           ; $677c: $00
    nop                                           ; $677d: $00
    nop                                           ; $677e: $00
    nop                                           ; $677f: $00
    nop                                           ; $6780: $00
    nop                                           ; $6781: $00
    nop                                           ; $6782: $00
    nop                                           ; $6783: $00
    nop                                           ; $6784: $00
    nop                                           ; $6785: $00
    nop                                           ; $6786: $00
    nop                                           ; $6787: $00
    nop                                           ; $6788: $00
    nop                                           ; $6789: $00
    nop                                           ; $678a: $00
    nop                                           ; $678b: $00
    nop                                           ; $678c: $00
    nop                                           ; $678d: $00
    nop                                           ; $678e: $00
    nop                                           ; $678f: $00
    nop                                           ; $6790: $00
    nop                                           ; $6791: $00
    nop                                           ; $6792: $00
    nop                                           ; $6793: $00
    nop                                           ; $6794: $00
    nop                                           ; $6795: $00
    nop                                           ; $6796: $00
    nop                                           ; $6797: $00
    nop                                           ; $6798: $00
    nop                                           ; $6799: $00
    nop                                           ; $679a: $00
    nop                                           ; $679b: $00
    nop                                           ; $679c: $00
    nop                                           ; $679d: $00
    nop                                           ; $679e: $00
    nop                                           ; $679f: $00
    nop                                           ; $67a0: $00
    nop                                           ; $67a1: $00
    nop                                           ; $67a2: $00
    nop                                           ; $67a3: $00
    nop                                           ; $67a4: $00
    nop                                           ; $67a5: $00
    nop                                           ; $67a6: $00
    nop                                           ; $67a7: $00
    nop                                           ; $67a8: $00
    nop                                           ; $67a9: $00
    nop                                           ; $67aa: $00
    nop                                           ; $67ab: $00
    nop                                           ; $67ac: $00
    nop                                           ; $67ad: $00
    nop                                           ; $67ae: $00
    nop                                           ; $67af: $00
    nop                                           ; $67b0: $00
    nop                                           ; $67b1: $00
    nop                                           ; $67b2: $00
    nop                                           ; $67b3: $00
    nop                                           ; $67b4: $00
    nop                                           ; $67b5: $00
    nop                                           ; $67b6: $00
    nop                                           ; $67b7: $00
    nop                                           ; $67b8: $00
    nop                                           ; $67b9: $00
    nop                                           ; $67ba: $00
    nop                                           ; $67bb: $00
    nop                                           ; $67bc: $00
    nop                                           ; $67bd: $00
    nop                                           ; $67be: $00
    nop                                           ; $67bf: $00
    nop                                           ; $67c0: $00
    nop                                           ; $67c1: $00
    nop                                           ; $67c2: $00
    nop                                           ; $67c3: $00
    nop                                           ; $67c4: $00
    nop                                           ; $67c5: $00
    nop                                           ; $67c6: $00
    nop                                           ; $67c7: $00
    nop                                           ; $67c8: $00
    nop                                           ; $67c9: $00
    nop                                           ; $67ca: $00
    nop                                           ; $67cb: $00
    nop                                           ; $67cc: $00
    nop                                           ; $67cd: $00
    nop                                           ; $67ce: $00
    nop                                           ; $67cf: $00
    nop                                           ; $67d0: $00
    nop                                           ; $67d1: $00
    nop                                           ; $67d2: $00
    nop                                           ; $67d3: $00
    nop                                           ; $67d4: $00
    nop                                           ; $67d5: $00
    nop                                           ; $67d6: $00
    nop                                           ; $67d7: $00
    nop                                           ; $67d8: $00
    nop                                           ; $67d9: $00
    nop                                           ; $67da: $00
    nop                                           ; $67db: $00
    nop                                           ; $67dc: $00
    nop                                           ; $67dd: $00
    nop                                           ; $67de: $00
    nop                                           ; $67df: $00
    nop                                           ; $67e0: $00
    nop                                           ; $67e1: $00
    nop                                           ; $67e2: $00
    nop                                           ; $67e3: $00
    nop                                           ; $67e4: $00
    nop                                           ; $67e5: $00
    nop                                           ; $67e6: $00
    nop                                           ; $67e7: $00
    nop                                           ; $67e8: $00
    nop                                           ; $67e9: $00
    nop                                           ; $67ea: $00
    nop                                           ; $67eb: $00
    nop                                           ; $67ec: $00
    nop                                           ; $67ed: $00
    nop                                           ; $67ee: $00
    nop                                           ; $67ef: $00
    nop                                           ; $67f0: $00
    nop                                           ; $67f1: $00
    nop                                           ; $67f2: $00
    nop                                           ; $67f3: $00
    nop                                           ; $67f4: $00
    nop                                           ; $67f5: $00
    nop                                           ; $67f6: $00
    nop                                           ; $67f7: $00
    nop                                           ; $67f8: $00
    nop                                           ; $67f9: $00
    nop                                           ; $67fa: $00
    nop                                           ; $67fb: $00
    nop                                           ; $67fc: $00
    nop                                           ; $67fd: $00
    nop                                           ; $67fe: $00
    nop                                           ; $67ff: $00
    nop                                           ; $6800: $00
    nop                                           ; $6801: $00
    nop                                           ; $6802: $00
    nop                                           ; $6803: $00
    nop                                           ; $6804: $00
    nop                                           ; $6805: $00
    nop                                           ; $6806: $00
    nop                                           ; $6807: $00
    nop                                           ; $6808: $00
    nop                                           ; $6809: $00
    nop                                           ; $680a: $00
    nop                                           ; $680b: $00
    nop                                           ; $680c: $00
    nop                                           ; $680d: $00
    nop                                           ; $680e: $00
    nop                                           ; $680f: $00
    nop                                           ; $6810: $00
    nop                                           ; $6811: $00
    nop                                           ; $6812: $00
    nop                                           ; $6813: $00
    nop                                           ; $6814: $00
    nop                                           ; $6815: $00
    nop                                           ; $6816: $00
    nop                                           ; $6817: $00
    nop                                           ; $6818: $00
    nop                                           ; $6819: $00
    nop                                           ; $681a: $00
    nop                                           ; $681b: $00
    nop                                           ; $681c: $00
    nop                                           ; $681d: $00
    nop                                           ; $681e: $00
    nop                                           ; $681f: $00
    nop                                           ; $6820: $00
    nop                                           ; $6821: $00
    nop                                           ; $6822: $00
    nop                                           ; $6823: $00
    nop                                           ; $6824: $00
    nop                                           ; $6825: $00
    nop                                           ; $6826: $00
    nop                                           ; $6827: $00
    nop                                           ; $6828: $00
    nop                                           ; $6829: $00
    nop                                           ; $682a: $00
    nop                                           ; $682b: $00
    nop                                           ; $682c: $00
    nop                                           ; $682d: $00
    nop                                           ; $682e: $00
    nop                                           ; $682f: $00
    nop                                           ; $6830: $00
    nop                                           ; $6831: $00
    nop                                           ; $6832: $00
    nop                                           ; $6833: $00
    nop                                           ; $6834: $00
    nop                                           ; $6835: $00
    nop                                           ; $6836: $00
    nop                                           ; $6837: $00
    nop                                           ; $6838: $00
    nop                                           ; $6839: $00
    nop                                           ; $683a: $00
    nop                                           ; $683b: $00
    nop                                           ; $683c: $00
    nop                                           ; $683d: $00
    nop                                           ; $683e: $00
    nop                                           ; $683f: $00
    nop                                           ; $6840: $00
    nop                                           ; $6841: $00
    nop                                           ; $6842: $00
    nop                                           ; $6843: $00
    nop                                           ; $6844: $00
    nop                                           ; $6845: $00
    nop                                           ; $6846: $00
    nop                                           ; $6847: $00
    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    nop                                           ; $684a: $00
    nop                                           ; $684b: $00
    nop                                           ; $684c: $00
    nop                                           ; $684d: $00
    nop                                           ; $684e: $00
    nop                                           ; $684f: $00
    nop                                           ; $6850: $00
    nop                                           ; $6851: $00
    nop                                           ; $6852: $00
    nop                                           ; $6853: $00
    nop                                           ; $6854: $00
    nop                                           ; $6855: $00
    nop                                           ; $6856: $00
    nop                                           ; $6857: $00
    nop                                           ; $6858: $00
    nop                                           ; $6859: $00
    nop                                           ; $685a: $00
    nop                                           ; $685b: $00
    nop                                           ; $685c: $00
    nop                                           ; $685d: $00
    nop                                           ; $685e: $00
    nop                                           ; $685f: $00
    nop                                           ; $6860: $00
    nop                                           ; $6861: $00
    nop                                           ; $6862: $00
    nop                                           ; $6863: $00
    nop                                           ; $6864: $00
    nop                                           ; $6865: $00
    nop                                           ; $6866: $00
    nop                                           ; $6867: $00
    nop                                           ; $6868: $00
    nop                                           ; $6869: $00
    nop                                           ; $686a: $00
    nop                                           ; $686b: $00
    nop                                           ; $686c: $00
    nop                                           ; $686d: $00
    nop                                           ; $686e: $00
    nop                                           ; $686f: $00
    nop                                           ; $6870: $00
    nop                                           ; $6871: $00
    nop                                           ; $6872: $00
    nop                                           ; $6873: $00
    nop                                           ; $6874: $00
    nop                                           ; $6875: $00
    nop                                           ; $6876: $00
    nop                                           ; $6877: $00
    nop                                           ; $6878: $00
    nop                                           ; $6879: $00
    nop                                           ; $687a: $00
    nop                                           ; $687b: $00
    nop                                           ; $687c: $00
    nop                                           ; $687d: $00
    nop                                           ; $687e: $00
    nop                                           ; $687f: $00
    nop                                           ; $6880: $00
    nop                                           ; $6881: $00
    nop                                           ; $6882: $00
    nop                                           ; $6883: $00
    nop                                           ; $6884: $00
    nop                                           ; $6885: $00
    nop                                           ; $6886: $00
    nop                                           ; $6887: $00
    nop                                           ; $6888: $00
    nop                                           ; $6889: $00
    nop                                           ; $688a: $00
    nop                                           ; $688b: $00
    nop                                           ; $688c: $00
    nop                                           ; $688d: $00
    nop                                           ; $688e: $00
    nop                                           ; $688f: $00
    nop                                           ; $6890: $00
    nop                                           ; $6891: $00
    nop                                           ; $6892: $00
    nop                                           ; $6893: $00
    nop                                           ; $6894: $00
    nop                                           ; $6895: $00
    nop                                           ; $6896: $00
    nop                                           ; $6897: $00
    nop                                           ; $6898: $00
    nop                                           ; $6899: $00
    nop                                           ; $689a: $00
    nop                                           ; $689b: $00
    nop                                           ; $689c: $00
    nop                                           ; $689d: $00
    nop                                           ; $689e: $00
    nop                                           ; $689f: $00
    nop                                           ; $68a0: $00
    nop                                           ; $68a1: $00
    nop                                           ; $68a2: $00
    nop                                           ; $68a3: $00
    nop                                           ; $68a4: $00
    nop                                           ; $68a5: $00
    nop                                           ; $68a6: $00
    nop                                           ; $68a7: $00
    nop                                           ; $68a8: $00
    nop                                           ; $68a9: $00
    nop                                           ; $68aa: $00
    nop                                           ; $68ab: $00
    nop                                           ; $68ac: $00
    nop                                           ; $68ad: $00
    nop                                           ; $68ae: $00
    nop                                           ; $68af: $00
    nop                                           ; $68b0: $00
    nop                                           ; $68b1: $00
    nop                                           ; $68b2: $00
    nop                                           ; $68b3: $00
    nop                                           ; $68b4: $00
    nop                                           ; $68b5: $00
    nop                                           ; $68b6: $00
    nop                                           ; $68b7: $00
    nop                                           ; $68b8: $00
    nop                                           ; $68b9: $00
    nop                                           ; $68ba: $00
    nop                                           ; $68bb: $00
    nop                                           ; $68bc: $00
    nop                                           ; $68bd: $00
    nop                                           ; $68be: $00
    nop                                           ; $68bf: $00
    nop                                           ; $68c0: $00
    nop                                           ; $68c1: $00
    nop                                           ; $68c2: $00
    nop                                           ; $68c3: $00
    nop                                           ; $68c4: $00
    nop                                           ; $68c5: $00
    nop                                           ; $68c6: $00
    nop                                           ; $68c7: $00
    nop                                           ; $68c8: $00
    nop                                           ; $68c9: $00
    nop                                           ; $68ca: $00
    nop                                           ; $68cb: $00
    nop                                           ; $68cc: $00
    nop                                           ; $68cd: $00
    nop                                           ; $68ce: $00
    nop                                           ; $68cf: $00
    nop                                           ; $68d0: $00
    nop                                           ; $68d1: $00
    nop                                           ; $68d2: $00
    nop                                           ; $68d3: $00
    nop                                           ; $68d4: $00
    nop                                           ; $68d5: $00
    nop                                           ; $68d6: $00
    nop                                           ; $68d7: $00
    nop                                           ; $68d8: $00
    nop                                           ; $68d9: $00
    nop                                           ; $68da: $00
    nop                                           ; $68db: $00
    nop                                           ; $68dc: $00
    nop                                           ; $68dd: $00
    nop                                           ; $68de: $00
    nop                                           ; $68df: $00
    nop                                           ; $68e0: $00
    nop                                           ; $68e1: $00
    nop                                           ; $68e2: $00
    nop                                           ; $68e3: $00
    nop                                           ; $68e4: $00
    nop                                           ; $68e5: $00
    nop                                           ; $68e6: $00
    nop                                           ; $68e7: $00
    nop                                           ; $68e8: $00
    nop                                           ; $68e9: $00
    nop                                           ; $68ea: $00
    nop                                           ; $68eb: $00
    nop                                           ; $68ec: $00
    nop                                           ; $68ed: $00
    nop                                           ; $68ee: $00
    nop                                           ; $68ef: $00
    nop                                           ; $68f0: $00
    nop                                           ; $68f1: $00
    nop                                           ; $68f2: $00
    nop                                           ; $68f3: $00
    nop                                           ; $68f4: $00
    nop                                           ; $68f5: $00
    nop                                           ; $68f6: $00
    nop                                           ; $68f7: $00
    nop                                           ; $68f8: $00
    nop                                           ; $68f9: $00
    nop                                           ; $68fa: $00
    nop                                           ; $68fb: $00
    nop                                           ; $68fc: $00
    nop                                           ; $68fd: $00
    nop                                           ; $68fe: $00
    nop                                           ; $68ff: $00
    nop                                           ; $6900: $00
    nop                                           ; $6901: $00
    nop                                           ; $6902: $00
    nop                                           ; $6903: $00
    nop                                           ; $6904: $00
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    nop                                           ; $6908: $00
    nop                                           ; $6909: $00
    nop                                           ; $690a: $00
    nop                                           ; $690b: $00
    nop                                           ; $690c: $00
    nop                                           ; $690d: $00
    nop                                           ; $690e: $00
    nop                                           ; $690f: $00
    nop                                           ; $6910: $00
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    nop                                           ; $6913: $00
    nop                                           ; $6914: $00
    nop                                           ; $6915: $00
    nop                                           ; $6916: $00
    nop                                           ; $6917: $00
    nop                                           ; $6918: $00
    nop                                           ; $6919: $00
    nop                                           ; $691a: $00
    nop                                           ; $691b: $00
    nop                                           ; $691c: $00
    nop                                           ; $691d: $00
    nop                                           ; $691e: $00
    nop                                           ; $691f: $00
    nop                                           ; $6920: $00
    nop                                           ; $6921: $00
    nop                                           ; $6922: $00
    nop                                           ; $6923: $00
    nop                                           ; $6924: $00
    nop                                           ; $6925: $00
    nop                                           ; $6926: $00
    nop                                           ; $6927: $00
    nop                                           ; $6928: $00
    nop                                           ; $6929: $00
    nop                                           ; $692a: $00
    nop                                           ; $692b: $00
    nop                                           ; $692c: $00
    nop                                           ; $692d: $00
    nop                                           ; $692e: $00
    nop                                           ; $692f: $00
    nop                                           ; $6930: $00
    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    nop                                           ; $6934: $00
    nop                                           ; $6935: $00
    nop                                           ; $6936: $00
    nop                                           ; $6937: $00
    nop                                           ; $6938: $00
    nop                                           ; $6939: $00
    nop                                           ; $693a: $00
    nop                                           ; $693b: $00
    nop                                           ; $693c: $00
    nop                                           ; $693d: $00
    nop                                           ; $693e: $00
    nop                                           ; $693f: $00
    nop                                           ; $6940: $00
    nop                                           ; $6941: $00
    nop                                           ; $6942: $00
    nop                                           ; $6943: $00
    nop                                           ; $6944: $00
    nop                                           ; $6945: $00
    nop                                           ; $6946: $00
    nop                                           ; $6947: $00
    nop                                           ; $6948: $00
    nop                                           ; $6949: $00
    nop                                           ; $694a: $00
    nop                                           ; $694b: $00
    nop                                           ; $694c: $00
    nop                                           ; $694d: $00
    nop                                           ; $694e: $00
    nop                                           ; $694f: $00
    nop                                           ; $6950: $00
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    nop                                           ; $6953: $00
    nop                                           ; $6954: $00
    nop                                           ; $6955: $00
    nop                                           ; $6956: $00
    nop                                           ; $6957: $00
    nop                                           ; $6958: $00
    nop                                           ; $6959: $00
    nop                                           ; $695a: $00
    nop                                           ; $695b: $00
    nop                                           ; $695c: $00
    nop                                           ; $695d: $00
    nop                                           ; $695e: $00
    nop                                           ; $695f: $00
    nop                                           ; $6960: $00
    nop                                           ; $6961: $00
    nop                                           ; $6962: $00
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00
    nop                                           ; $6965: $00
    nop                                           ; $6966: $00
    nop                                           ; $6967: $00
    nop                                           ; $6968: $00
    nop                                           ; $6969: $00
    nop                                           ; $696a: $00
    nop                                           ; $696b: $00
    nop                                           ; $696c: $00
    nop                                           ; $696d: $00
    nop                                           ; $696e: $00
    nop                                           ; $696f: $00
    nop                                           ; $6970: $00
    nop                                           ; $6971: $00
    nop                                           ; $6972: $00
    nop                                           ; $6973: $00
    nop                                           ; $6974: $00
    nop                                           ; $6975: $00
    nop                                           ; $6976: $00
    nop                                           ; $6977: $00
    nop                                           ; $6978: $00
    nop                                           ; $6979: $00
    nop                                           ; $697a: $00
    nop                                           ; $697b: $00
    nop                                           ; $697c: $00
    nop                                           ; $697d: $00
    nop                                           ; $697e: $00
    nop                                           ; $697f: $00
    nop                                           ; $6980: $00
    nop                                           ; $6981: $00
    nop                                           ; $6982: $00
    nop                                           ; $6983: $00
    nop                                           ; $6984: $00
    nop                                           ; $6985: $00
    nop                                           ; $6986: $00
    nop                                           ; $6987: $00
    nop                                           ; $6988: $00
    nop                                           ; $6989: $00
    nop                                           ; $698a: $00
    nop                                           ; $698b: $00
    nop                                           ; $698c: $00
    nop                                           ; $698d: $00
    nop                                           ; $698e: $00
    nop                                           ; $698f: $00
    nop                                           ; $6990: $00
    nop                                           ; $6991: $00
    nop                                           ; $6992: $00
    nop                                           ; $6993: $00
    nop                                           ; $6994: $00
    nop                                           ; $6995: $00
    nop                                           ; $6996: $00
    nop                                           ; $6997: $00
    nop                                           ; $6998: $00
    nop                                           ; $6999: $00
    nop                                           ; $699a: $00
    nop                                           ; $699b: $00
    nop                                           ; $699c: $00
    nop                                           ; $699d: $00
    nop                                           ; $699e: $00
    nop                                           ; $699f: $00
    nop                                           ; $69a0: $00
    nop                                           ; $69a1: $00
    nop                                           ; $69a2: $00
    nop                                           ; $69a3: $00
    nop                                           ; $69a4: $00
    nop                                           ; $69a5: $00
    nop                                           ; $69a6: $00
    nop                                           ; $69a7: $00
    nop                                           ; $69a8: $00
    nop                                           ; $69a9: $00
    nop                                           ; $69aa: $00
    nop                                           ; $69ab: $00
    nop                                           ; $69ac: $00
    nop                                           ; $69ad: $00
    nop                                           ; $69ae: $00
    nop                                           ; $69af: $00
    nop                                           ; $69b0: $00
    nop                                           ; $69b1: $00
    nop                                           ; $69b2: $00
    nop                                           ; $69b3: $00
    nop                                           ; $69b4: $00
    nop                                           ; $69b5: $00
    nop                                           ; $69b6: $00
    nop                                           ; $69b7: $00
    nop                                           ; $69b8: $00
    nop                                           ; $69b9: $00
    nop                                           ; $69ba: $00
    nop                                           ; $69bb: $00
    nop                                           ; $69bc: $00
    nop                                           ; $69bd: $00
    nop                                           ; $69be: $00
    nop                                           ; $69bf: $00
    nop                                           ; $69c0: $00
    nop                                           ; $69c1: $00
    nop                                           ; $69c2: $00
    nop                                           ; $69c3: $00
    nop                                           ; $69c4: $00
    nop                                           ; $69c5: $00
    nop                                           ; $69c6: $00
    nop                                           ; $69c7: $00
    nop                                           ; $69c8: $00
    nop                                           ; $69c9: $00
    nop                                           ; $69ca: $00
    nop                                           ; $69cb: $00
    nop                                           ; $69cc: $00
    nop                                           ; $69cd: $00
    nop                                           ; $69ce: $00
    nop                                           ; $69cf: $00
    nop                                           ; $69d0: $00
    nop                                           ; $69d1: $00
    nop                                           ; $69d2: $00
    nop                                           ; $69d3: $00
    nop                                           ; $69d4: $00
    nop                                           ; $69d5: $00
    nop                                           ; $69d6: $00
    nop                                           ; $69d7: $00
    nop                                           ; $69d8: $00
    nop                                           ; $69d9: $00
    nop                                           ; $69da: $00
    nop                                           ; $69db: $00
    nop                                           ; $69dc: $00
    nop                                           ; $69dd: $00
    nop                                           ; $69de: $00
    nop                                           ; $69df: $00
    nop                                           ; $69e0: $00
    nop                                           ; $69e1: $00
    nop                                           ; $69e2: $00
    nop                                           ; $69e3: $00
    nop                                           ; $69e4: $00
    nop                                           ; $69e5: $00
    nop                                           ; $69e6: $00
    nop                                           ; $69e7: $00
    nop                                           ; $69e8: $00
    nop                                           ; $69e9: $00
    nop                                           ; $69ea: $00
    nop                                           ; $69eb: $00
    nop                                           ; $69ec: $00
    nop                                           ; $69ed: $00
    nop                                           ; $69ee: $00
    nop                                           ; $69ef: $00
    nop                                           ; $69f0: $00
    nop                                           ; $69f1: $00
    nop                                           ; $69f2: $00
    nop                                           ; $69f3: $00
    nop                                           ; $69f4: $00
    nop                                           ; $69f5: $00
    nop                                           ; $69f6: $00
    nop                                           ; $69f7: $00
    nop                                           ; $69f8: $00
    nop                                           ; $69f9: $00
    nop                                           ; $69fa: $00
    nop                                           ; $69fb: $00
    nop                                           ; $69fc: $00
    nop                                           ; $69fd: $00
    nop                                           ; $69fe: $00
    nop                                           ; $69ff: $00
    nop                                           ; $6a00: $00
    nop                                           ; $6a01: $00
    nop                                           ; $6a02: $00
    nop                                           ; $6a03: $00
    nop                                           ; $6a04: $00
    nop                                           ; $6a05: $00
    nop                                           ; $6a06: $00
    nop                                           ; $6a07: $00
    nop                                           ; $6a08: $00
    nop                                           ; $6a09: $00
    nop                                           ; $6a0a: $00
    nop                                           ; $6a0b: $00
    nop                                           ; $6a0c: $00
    nop                                           ; $6a0d: $00
    nop                                           ; $6a0e: $00
    nop                                           ; $6a0f: $00
    nop                                           ; $6a10: $00
    nop                                           ; $6a11: $00
    nop                                           ; $6a12: $00
    nop                                           ; $6a13: $00
    nop                                           ; $6a14: $00
    nop                                           ; $6a15: $00
    nop                                           ; $6a16: $00
    nop                                           ; $6a17: $00
    nop                                           ; $6a18: $00
    nop                                           ; $6a19: $00
    nop                                           ; $6a1a: $00
    nop                                           ; $6a1b: $00
    nop                                           ; $6a1c: $00
    nop                                           ; $6a1d: $00
    nop                                           ; $6a1e: $00
    nop                                           ; $6a1f: $00
    nop                                           ; $6a20: $00
    nop                                           ; $6a21: $00
    nop                                           ; $6a22: $00
    nop                                           ; $6a23: $00
    nop                                           ; $6a24: $00
    nop                                           ; $6a25: $00
    nop                                           ; $6a26: $00
    nop                                           ; $6a27: $00
    nop                                           ; $6a28: $00
    nop                                           ; $6a29: $00
    nop                                           ; $6a2a: $00
    nop                                           ; $6a2b: $00
    nop                                           ; $6a2c: $00
    nop                                           ; $6a2d: $00
    nop                                           ; $6a2e: $00
    nop                                           ; $6a2f: $00
    nop                                           ; $6a30: $00
    nop                                           ; $6a31: $00
    nop                                           ; $6a32: $00
    nop                                           ; $6a33: $00
    nop                                           ; $6a34: $00
    nop                                           ; $6a35: $00
    nop                                           ; $6a36: $00
    nop                                           ; $6a37: $00
    nop                                           ; $6a38: $00
    nop                                           ; $6a39: $00
    nop                                           ; $6a3a: $00
    nop                                           ; $6a3b: $00
    nop                                           ; $6a3c: $00
    nop                                           ; $6a3d: $00
    nop                                           ; $6a3e: $00
    nop                                           ; $6a3f: $00
    nop                                           ; $6a40: $00
    nop                                           ; $6a41: $00
    nop                                           ; $6a42: $00
    nop                                           ; $6a43: $00
    nop                                           ; $6a44: $00
    nop                                           ; $6a45: $00
    nop                                           ; $6a46: $00
    nop                                           ; $6a47: $00
    nop                                           ; $6a48: $00
    nop                                           ; $6a49: $00
    nop                                           ; $6a4a: $00
    nop                                           ; $6a4b: $00
    nop                                           ; $6a4c: $00
    nop                                           ; $6a4d: $00
    nop                                           ; $6a4e: $00
    nop                                           ; $6a4f: $00
    nop                                           ; $6a50: $00
    nop                                           ; $6a51: $00
    nop                                           ; $6a52: $00
    nop                                           ; $6a53: $00
    nop                                           ; $6a54: $00
    nop                                           ; $6a55: $00
    nop                                           ; $6a56: $00
    nop                                           ; $6a57: $00
    nop                                           ; $6a58: $00
    nop                                           ; $6a59: $00
    nop                                           ; $6a5a: $00
    nop                                           ; $6a5b: $00
    nop                                           ; $6a5c: $00
    nop                                           ; $6a5d: $00
    nop                                           ; $6a5e: $00
    nop                                           ; $6a5f: $00
    nop                                           ; $6a60: $00
    nop                                           ; $6a61: $00
    nop                                           ; $6a62: $00
    nop                                           ; $6a63: $00
    nop                                           ; $6a64: $00
    nop                                           ; $6a65: $00
    nop                                           ; $6a66: $00
    nop                                           ; $6a67: $00
    nop                                           ; $6a68: $00
    nop                                           ; $6a69: $00
    nop                                           ; $6a6a: $00
    nop                                           ; $6a6b: $00
    nop                                           ; $6a6c: $00
    nop                                           ; $6a6d: $00
    nop                                           ; $6a6e: $00
    nop                                           ; $6a6f: $00
    nop                                           ; $6a70: $00
    nop                                           ; $6a71: $00
    nop                                           ; $6a72: $00
    nop                                           ; $6a73: $00
    nop                                           ; $6a74: $00
    nop                                           ; $6a75: $00
    nop                                           ; $6a76: $00
    nop                                           ; $6a77: $00
    nop                                           ; $6a78: $00
    nop                                           ; $6a79: $00
    nop                                           ; $6a7a: $00
    nop                                           ; $6a7b: $00
    nop                                           ; $6a7c: $00
    nop                                           ; $6a7d: $00
    nop                                           ; $6a7e: $00
    nop                                           ; $6a7f: $00
    nop                                           ; $6a80: $00
    nop                                           ; $6a81: $00
    nop                                           ; $6a82: $00
    nop                                           ; $6a83: $00
    nop                                           ; $6a84: $00
    nop                                           ; $6a85: $00
    nop                                           ; $6a86: $00
    nop                                           ; $6a87: $00
    nop                                           ; $6a88: $00
    nop                                           ; $6a89: $00
    nop                                           ; $6a8a: $00
    nop                                           ; $6a8b: $00
    nop                                           ; $6a8c: $00
    nop                                           ; $6a8d: $00
    nop                                           ; $6a8e: $00
    nop                                           ; $6a8f: $00
    nop                                           ; $6a90: $00
    nop                                           ; $6a91: $00
    nop                                           ; $6a92: $00
    nop                                           ; $6a93: $00
    nop                                           ; $6a94: $00
    nop                                           ; $6a95: $00
    nop                                           ; $6a96: $00
    nop                                           ; $6a97: $00
    nop                                           ; $6a98: $00
    nop                                           ; $6a99: $00
    nop                                           ; $6a9a: $00
    nop                                           ; $6a9b: $00
    nop                                           ; $6a9c: $00
    nop                                           ; $6a9d: $00
    nop                                           ; $6a9e: $00
    nop                                           ; $6a9f: $00
    nop                                           ; $6aa0: $00
    nop                                           ; $6aa1: $00
    nop                                           ; $6aa2: $00
    nop                                           ; $6aa3: $00
    nop                                           ; $6aa4: $00
    nop                                           ; $6aa5: $00
    nop                                           ; $6aa6: $00
    nop                                           ; $6aa7: $00
    nop                                           ; $6aa8: $00
    nop                                           ; $6aa9: $00
    nop                                           ; $6aaa: $00
    nop                                           ; $6aab: $00
    nop                                           ; $6aac: $00
    nop                                           ; $6aad: $00
    nop                                           ; $6aae: $00
    nop                                           ; $6aaf: $00
    nop                                           ; $6ab0: $00
    nop                                           ; $6ab1: $00
    nop                                           ; $6ab2: $00
    nop                                           ; $6ab3: $00
    nop                                           ; $6ab4: $00
    nop                                           ; $6ab5: $00
    nop                                           ; $6ab6: $00
    nop                                           ; $6ab7: $00
    nop                                           ; $6ab8: $00
    nop                                           ; $6ab9: $00
    nop                                           ; $6aba: $00
    nop                                           ; $6abb: $00
    nop                                           ; $6abc: $00
    nop                                           ; $6abd: $00
    nop                                           ; $6abe: $00
    nop                                           ; $6abf: $00
    nop                                           ; $6ac0: $00
    nop                                           ; $6ac1: $00
    nop                                           ; $6ac2: $00
    nop                                           ; $6ac3: $00
    nop                                           ; $6ac4: $00
    nop                                           ; $6ac5: $00
    nop                                           ; $6ac6: $00
    nop                                           ; $6ac7: $00
    nop                                           ; $6ac8: $00
    nop                                           ; $6ac9: $00
    nop                                           ; $6aca: $00
    nop                                           ; $6acb: $00
    nop                                           ; $6acc: $00
    nop                                           ; $6acd: $00
    nop                                           ; $6ace: $00
    nop                                           ; $6acf: $00
    nop                                           ; $6ad0: $00
    nop                                           ; $6ad1: $00
    nop                                           ; $6ad2: $00
    nop                                           ; $6ad3: $00
    nop                                           ; $6ad4: $00
    nop                                           ; $6ad5: $00
    nop                                           ; $6ad6: $00
    nop                                           ; $6ad7: $00
    nop                                           ; $6ad8: $00
    nop                                           ; $6ad9: $00
    nop                                           ; $6ada: $00
    nop                                           ; $6adb: $00
    nop                                           ; $6adc: $00
    nop                                           ; $6add: $00
    nop                                           ; $6ade: $00
    nop                                           ; $6adf: $00
    nop                                           ; $6ae0: $00
    nop                                           ; $6ae1: $00
    nop                                           ; $6ae2: $00
    nop                                           ; $6ae3: $00
    nop                                           ; $6ae4: $00
    nop                                           ; $6ae5: $00
    nop                                           ; $6ae6: $00
    nop                                           ; $6ae7: $00
    nop                                           ; $6ae8: $00
    nop                                           ; $6ae9: $00
    nop                                           ; $6aea: $00
    nop                                           ; $6aeb: $00
    nop                                           ; $6aec: $00
    nop                                           ; $6aed: $00
    nop                                           ; $6aee: $00
    nop                                           ; $6aef: $00
    nop                                           ; $6af0: $00
    nop                                           ; $6af1: $00
    nop                                           ; $6af2: $00
    nop                                           ; $6af3: $00
    nop                                           ; $6af4: $00
    nop                                           ; $6af5: $00
    nop                                           ; $6af6: $00
    nop                                           ; $6af7: $00
    nop                                           ; $6af8: $00
    nop                                           ; $6af9: $00
    nop                                           ; $6afa: $00
    nop                                           ; $6afb: $00
    nop                                           ; $6afc: $00
    nop                                           ; $6afd: $00
    nop                                           ; $6afe: $00
    nop                                           ; $6aff: $00
    nop                                           ; $6b00: $00
    nop                                           ; $6b01: $00
    nop                                           ; $6b02: $00
    nop                                           ; $6b03: $00
    nop                                           ; $6b04: $00
    nop                                           ; $6b05: $00
    nop                                           ; $6b06: $00
    nop                                           ; $6b07: $00
    nop                                           ; $6b08: $00
    nop                                           ; $6b09: $00
    nop                                           ; $6b0a: $00
    nop                                           ; $6b0b: $00
    nop                                           ; $6b0c: $00
    nop                                           ; $6b0d: $00
    nop                                           ; $6b0e: $00
    nop                                           ; $6b0f: $00
    nop                                           ; $6b10: $00
    nop                                           ; $6b11: $00
    nop                                           ; $6b12: $00
    nop                                           ; $6b13: $00
    nop                                           ; $6b14: $00
    nop                                           ; $6b15: $00
    nop                                           ; $6b16: $00
    nop                                           ; $6b17: $00
    nop                                           ; $6b18: $00
    nop                                           ; $6b19: $00
    nop                                           ; $6b1a: $00
    nop                                           ; $6b1b: $00
    nop                                           ; $6b1c: $00
    nop                                           ; $6b1d: $00
    nop                                           ; $6b1e: $00
    nop                                           ; $6b1f: $00
    nop                                           ; $6b20: $00
    nop                                           ; $6b21: $00
    nop                                           ; $6b22: $00
    nop                                           ; $6b23: $00
    nop                                           ; $6b24: $00
    nop                                           ; $6b25: $00
    nop                                           ; $6b26: $00
    nop                                           ; $6b27: $00
    nop                                           ; $6b28: $00
    nop                                           ; $6b29: $00
    nop                                           ; $6b2a: $00
    nop                                           ; $6b2b: $00
    nop                                           ; $6b2c: $00
    nop                                           ; $6b2d: $00
    nop                                           ; $6b2e: $00
    nop                                           ; $6b2f: $00
    nop                                           ; $6b30: $00
    nop                                           ; $6b31: $00
    nop                                           ; $6b32: $00
    nop                                           ; $6b33: $00
    nop                                           ; $6b34: $00
    nop                                           ; $6b35: $00
    nop                                           ; $6b36: $00
    nop                                           ; $6b37: $00
    nop                                           ; $6b38: $00
    nop                                           ; $6b39: $00
    nop                                           ; $6b3a: $00
    nop                                           ; $6b3b: $00
    nop                                           ; $6b3c: $00
    nop                                           ; $6b3d: $00
    nop                                           ; $6b3e: $00
    nop                                           ; $6b3f: $00
    nop                                           ; $6b40: $00
    nop                                           ; $6b41: $00
    nop                                           ; $6b42: $00
    nop                                           ; $6b43: $00
    nop                                           ; $6b44: $00
    nop                                           ; $6b45: $00
    nop                                           ; $6b46: $00
    nop                                           ; $6b47: $00
    nop                                           ; $6b48: $00
    nop                                           ; $6b49: $00
    nop                                           ; $6b4a: $00
    nop                                           ; $6b4b: $00
    nop                                           ; $6b4c: $00
    nop                                           ; $6b4d: $00
    nop                                           ; $6b4e: $00
    nop                                           ; $6b4f: $00
    nop                                           ; $6b50: $00
    nop                                           ; $6b51: $00
    nop                                           ; $6b52: $00
    nop                                           ; $6b53: $00
    nop                                           ; $6b54: $00
    nop                                           ; $6b55: $00
    nop                                           ; $6b56: $00
    nop                                           ; $6b57: $00
    nop                                           ; $6b58: $00
    nop                                           ; $6b59: $00
    nop                                           ; $6b5a: $00
    nop                                           ; $6b5b: $00
    nop                                           ; $6b5c: $00
    nop                                           ; $6b5d: $00
    nop                                           ; $6b5e: $00
    nop                                           ; $6b5f: $00
    nop                                           ; $6b60: $00
    nop                                           ; $6b61: $00
    nop                                           ; $6b62: $00
    nop                                           ; $6b63: $00
    nop                                           ; $6b64: $00
    nop                                           ; $6b65: $00
    nop                                           ; $6b66: $00
    nop                                           ; $6b67: $00
    nop                                           ; $6b68: $00
    nop                                           ; $6b69: $00
    nop                                           ; $6b6a: $00
    nop                                           ; $6b6b: $00
    nop                                           ; $6b6c: $00
    nop                                           ; $6b6d: $00
    nop                                           ; $6b6e: $00
    nop                                           ; $6b6f: $00
    nop                                           ; $6b70: $00
    nop                                           ; $6b71: $00
    nop                                           ; $6b72: $00
    nop                                           ; $6b73: $00
    nop                                           ; $6b74: $00
    nop                                           ; $6b75: $00
    nop                                           ; $6b76: $00
    nop                                           ; $6b77: $00
    nop                                           ; $6b78: $00
    nop                                           ; $6b79: $00
    nop                                           ; $6b7a: $00
    nop                                           ; $6b7b: $00
    nop                                           ; $6b7c: $00
    nop                                           ; $6b7d: $00
    nop                                           ; $6b7e: $00
    nop                                           ; $6b7f: $00
    nop                                           ; $6b80: $00
    nop                                           ; $6b81: $00
    nop                                           ; $6b82: $00
    nop                                           ; $6b83: $00
    nop                                           ; $6b84: $00
    nop                                           ; $6b85: $00
    nop                                           ; $6b86: $00
    nop                                           ; $6b87: $00
    nop                                           ; $6b88: $00
    nop                                           ; $6b89: $00
    nop                                           ; $6b8a: $00
    nop                                           ; $6b8b: $00
    nop                                           ; $6b8c: $00
    nop                                           ; $6b8d: $00
    nop                                           ; $6b8e: $00
    nop                                           ; $6b8f: $00
    nop                                           ; $6b90: $00
    nop                                           ; $6b91: $00
    nop                                           ; $6b92: $00
    nop                                           ; $6b93: $00
    nop                                           ; $6b94: $00
    nop                                           ; $6b95: $00
    nop                                           ; $6b96: $00
    nop                                           ; $6b97: $00
    nop                                           ; $6b98: $00
    nop                                           ; $6b99: $00
    nop                                           ; $6b9a: $00
    nop                                           ; $6b9b: $00
    nop                                           ; $6b9c: $00
    nop                                           ; $6b9d: $00
    nop                                           ; $6b9e: $00
    nop                                           ; $6b9f: $00
    nop                                           ; $6ba0: $00
    nop                                           ; $6ba1: $00
    nop                                           ; $6ba2: $00
    nop                                           ; $6ba3: $00
    nop                                           ; $6ba4: $00
    nop                                           ; $6ba5: $00
    nop                                           ; $6ba6: $00
    nop                                           ; $6ba7: $00
    nop                                           ; $6ba8: $00
    nop                                           ; $6ba9: $00
    nop                                           ; $6baa: $00
    nop                                           ; $6bab: $00
    nop                                           ; $6bac: $00
    nop                                           ; $6bad: $00
    nop                                           ; $6bae: $00
    nop                                           ; $6baf: $00
    nop                                           ; $6bb0: $00
    nop                                           ; $6bb1: $00
    nop                                           ; $6bb2: $00
    nop                                           ; $6bb3: $00
    nop                                           ; $6bb4: $00
    nop                                           ; $6bb5: $00
    nop                                           ; $6bb6: $00
    nop                                           ; $6bb7: $00
    nop                                           ; $6bb8: $00
    nop                                           ; $6bb9: $00
    nop                                           ; $6bba: $00
    nop                                           ; $6bbb: $00
    nop                                           ; $6bbc: $00
    nop                                           ; $6bbd: $00
    nop                                           ; $6bbe: $00
    nop                                           ; $6bbf: $00
    nop                                           ; $6bc0: $00
    nop                                           ; $6bc1: $00
    nop                                           ; $6bc2: $00
    nop                                           ; $6bc3: $00
    nop                                           ; $6bc4: $00
    nop                                           ; $6bc5: $00
    nop                                           ; $6bc6: $00
    nop                                           ; $6bc7: $00
    nop                                           ; $6bc8: $00
    nop                                           ; $6bc9: $00
    nop                                           ; $6bca: $00
    nop                                           ; $6bcb: $00
    nop                                           ; $6bcc: $00
    nop                                           ; $6bcd: $00
    nop                                           ; $6bce: $00
    nop                                           ; $6bcf: $00
    nop                                           ; $6bd0: $00
    nop                                           ; $6bd1: $00
    nop                                           ; $6bd2: $00
    nop                                           ; $6bd3: $00
    nop                                           ; $6bd4: $00
    nop                                           ; $6bd5: $00
    nop                                           ; $6bd6: $00
    nop                                           ; $6bd7: $00
    nop                                           ; $6bd8: $00
    nop                                           ; $6bd9: $00
    nop                                           ; $6bda: $00
    nop                                           ; $6bdb: $00
    nop                                           ; $6bdc: $00
    nop                                           ; $6bdd: $00
    nop                                           ; $6bde: $00
    nop                                           ; $6bdf: $00
    nop                                           ; $6be0: $00
    nop                                           ; $6be1: $00
    nop                                           ; $6be2: $00
    nop                                           ; $6be3: $00
    nop                                           ; $6be4: $00
    nop                                           ; $6be5: $00
    nop                                           ; $6be6: $00
    nop                                           ; $6be7: $00
    nop                                           ; $6be8: $00
    nop                                           ; $6be9: $00
    nop                                           ; $6bea: $00
    nop                                           ; $6beb: $00
    nop                                           ; $6bec: $00
    nop                                           ; $6bed: $00
    nop                                           ; $6bee: $00
    nop                                           ; $6bef: $00
    nop                                           ; $6bf0: $00
    nop                                           ; $6bf1: $00
    nop                                           ; $6bf2: $00
    nop                                           ; $6bf3: $00
    nop                                           ; $6bf4: $00
    nop                                           ; $6bf5: $00
    nop                                           ; $6bf6: $00
    nop                                           ; $6bf7: $00
    nop                                           ; $6bf8: $00
    nop                                           ; $6bf9: $00
    nop                                           ; $6bfa: $00
    nop                                           ; $6bfb: $00
    nop                                           ; $6bfc: $00
    nop                                           ; $6bfd: $00
    nop                                           ; $6bfe: $00
    nop                                           ; $6bff: $00
    nop                                           ; $6c00: $00
    nop                                           ; $6c01: $00
    nop                                           ; $6c02: $00
    nop                                           ; $6c03: $00
    nop                                           ; $6c04: $00
    nop                                           ; $6c05: $00
    nop                                           ; $6c06: $00
    nop                                           ; $6c07: $00
    nop                                           ; $6c08: $00
    nop                                           ; $6c09: $00
    nop                                           ; $6c0a: $00
    nop                                           ; $6c0b: $00
    nop                                           ; $6c0c: $00
    nop                                           ; $6c0d: $00
    nop                                           ; $6c0e: $00
    nop                                           ; $6c0f: $00
    nop                                           ; $6c10: $00
    nop                                           ; $6c11: $00
    nop                                           ; $6c12: $00
    nop                                           ; $6c13: $00
    nop                                           ; $6c14: $00
    nop                                           ; $6c15: $00
    nop                                           ; $6c16: $00
    nop                                           ; $6c17: $00
    nop                                           ; $6c18: $00
    nop                                           ; $6c19: $00
    nop                                           ; $6c1a: $00
    nop                                           ; $6c1b: $00
    nop                                           ; $6c1c: $00
    nop                                           ; $6c1d: $00
    nop                                           ; $6c1e: $00
    nop                                           ; $6c1f: $00
    nop                                           ; $6c20: $00
    nop                                           ; $6c21: $00
    nop                                           ; $6c22: $00
    nop                                           ; $6c23: $00
    nop                                           ; $6c24: $00
    nop                                           ; $6c25: $00
    nop                                           ; $6c26: $00
    nop                                           ; $6c27: $00
    nop                                           ; $6c28: $00
    nop                                           ; $6c29: $00
    nop                                           ; $6c2a: $00
    nop                                           ; $6c2b: $00
    nop                                           ; $6c2c: $00
    nop                                           ; $6c2d: $00
    nop                                           ; $6c2e: $00
    nop                                           ; $6c2f: $00
    nop                                           ; $6c30: $00
    nop                                           ; $6c31: $00
    nop                                           ; $6c32: $00
    nop                                           ; $6c33: $00
    nop                                           ; $6c34: $00
    nop                                           ; $6c35: $00
    nop                                           ; $6c36: $00
    nop                                           ; $6c37: $00
    nop                                           ; $6c38: $00
    nop                                           ; $6c39: $00
    nop                                           ; $6c3a: $00
    nop                                           ; $6c3b: $00
    nop                                           ; $6c3c: $00
    nop                                           ; $6c3d: $00
    nop                                           ; $6c3e: $00
    nop                                           ; $6c3f: $00
    nop                                           ; $6c40: $00
    nop                                           ; $6c41: $00
    nop                                           ; $6c42: $00
    nop                                           ; $6c43: $00
    nop                                           ; $6c44: $00
    nop                                           ; $6c45: $00
    nop                                           ; $6c46: $00
    nop                                           ; $6c47: $00
    nop                                           ; $6c48: $00
    nop                                           ; $6c49: $00
    nop                                           ; $6c4a: $00
    nop                                           ; $6c4b: $00
    nop                                           ; $6c4c: $00
    nop                                           ; $6c4d: $00
    nop                                           ; $6c4e: $00
    nop                                           ; $6c4f: $00
    nop                                           ; $6c50: $00
    nop                                           ; $6c51: $00
    nop                                           ; $6c52: $00
    nop                                           ; $6c53: $00
    nop                                           ; $6c54: $00
    nop                                           ; $6c55: $00
    nop                                           ; $6c56: $00
    nop                                           ; $6c57: $00
    nop                                           ; $6c58: $00
    nop                                           ; $6c59: $00
    nop                                           ; $6c5a: $00
    nop                                           ; $6c5b: $00
    nop                                           ; $6c5c: $00
    nop                                           ; $6c5d: $00
    nop                                           ; $6c5e: $00
    nop                                           ; $6c5f: $00
    nop                                           ; $6c60: $00
    nop                                           ; $6c61: $00
    nop                                           ; $6c62: $00
    nop                                           ; $6c63: $00
    nop                                           ; $6c64: $00
    nop                                           ; $6c65: $00
    nop                                           ; $6c66: $00
    nop                                           ; $6c67: $00
    nop                                           ; $6c68: $00
    nop                                           ; $6c69: $00
    nop                                           ; $6c6a: $00
    nop                                           ; $6c6b: $00
    nop                                           ; $6c6c: $00
    nop                                           ; $6c6d: $00
    nop                                           ; $6c6e: $00
    nop                                           ; $6c6f: $00
    nop                                           ; $6c70: $00
    nop                                           ; $6c71: $00
    nop                                           ; $6c72: $00
    nop                                           ; $6c73: $00
    nop                                           ; $6c74: $00
    nop                                           ; $6c75: $00
    nop                                           ; $6c76: $00
    nop                                           ; $6c77: $00
    nop                                           ; $6c78: $00
    nop                                           ; $6c79: $00
    nop                                           ; $6c7a: $00
    nop                                           ; $6c7b: $00
    nop                                           ; $6c7c: $00
    nop                                           ; $6c7d: $00
    nop                                           ; $6c7e: $00
    nop                                           ; $6c7f: $00
    nop                                           ; $6c80: $00
    nop                                           ; $6c81: $00
    nop                                           ; $6c82: $00
    nop                                           ; $6c83: $00
    nop                                           ; $6c84: $00
    nop                                           ; $6c85: $00
    nop                                           ; $6c86: $00
    nop                                           ; $6c87: $00
    nop                                           ; $6c88: $00
    nop                                           ; $6c89: $00
    nop                                           ; $6c8a: $00
    nop                                           ; $6c8b: $00
    nop                                           ; $6c8c: $00
    nop                                           ; $6c8d: $00
    nop                                           ; $6c8e: $00
    nop                                           ; $6c8f: $00
    nop                                           ; $6c90: $00
    nop                                           ; $6c91: $00
    nop                                           ; $6c92: $00
    nop                                           ; $6c93: $00
    nop                                           ; $6c94: $00
    nop                                           ; $6c95: $00
    nop                                           ; $6c96: $00
    nop                                           ; $6c97: $00
    nop                                           ; $6c98: $00
    nop                                           ; $6c99: $00
    nop                                           ; $6c9a: $00
    nop                                           ; $6c9b: $00
    nop                                           ; $6c9c: $00
    nop                                           ; $6c9d: $00
    nop                                           ; $6c9e: $00
    nop                                           ; $6c9f: $00
    nop                                           ; $6ca0: $00
    nop                                           ; $6ca1: $00
    nop                                           ; $6ca2: $00
    nop                                           ; $6ca3: $00
    nop                                           ; $6ca4: $00
    nop                                           ; $6ca5: $00
    nop                                           ; $6ca6: $00
    nop                                           ; $6ca7: $00
    nop                                           ; $6ca8: $00
    nop                                           ; $6ca9: $00
    nop                                           ; $6caa: $00
    nop                                           ; $6cab: $00
    nop                                           ; $6cac: $00
    nop                                           ; $6cad: $00
    nop                                           ; $6cae: $00
    nop                                           ; $6caf: $00
    nop                                           ; $6cb0: $00
    nop                                           ; $6cb1: $00
    nop                                           ; $6cb2: $00
    nop                                           ; $6cb3: $00
    nop                                           ; $6cb4: $00
    nop                                           ; $6cb5: $00
    nop                                           ; $6cb6: $00
    nop                                           ; $6cb7: $00
    nop                                           ; $6cb8: $00
    nop                                           ; $6cb9: $00
    nop                                           ; $6cba: $00
    nop                                           ; $6cbb: $00
    nop                                           ; $6cbc: $00
    nop                                           ; $6cbd: $00
    nop                                           ; $6cbe: $00
    nop                                           ; $6cbf: $00
    nop                                           ; $6cc0: $00
    nop                                           ; $6cc1: $00
    nop                                           ; $6cc2: $00
    nop                                           ; $6cc3: $00
    nop                                           ; $6cc4: $00
    nop                                           ; $6cc5: $00
    nop                                           ; $6cc6: $00
    nop                                           ; $6cc7: $00
    nop                                           ; $6cc8: $00
    nop                                           ; $6cc9: $00
    nop                                           ; $6cca: $00
    nop                                           ; $6ccb: $00
    nop                                           ; $6ccc: $00
    nop                                           ; $6ccd: $00
    nop                                           ; $6cce: $00
    nop                                           ; $6ccf: $00
    nop                                           ; $6cd0: $00
    nop                                           ; $6cd1: $00
    nop                                           ; $6cd2: $00
    nop                                           ; $6cd3: $00
    nop                                           ; $6cd4: $00
    nop                                           ; $6cd5: $00
    nop                                           ; $6cd6: $00
    nop                                           ; $6cd7: $00
    nop                                           ; $6cd8: $00
    nop                                           ; $6cd9: $00
    nop                                           ; $6cda: $00
    nop                                           ; $6cdb: $00
    nop                                           ; $6cdc: $00
    nop                                           ; $6cdd: $00
    nop                                           ; $6cde: $00
    nop                                           ; $6cdf: $00
    nop                                           ; $6ce0: $00
    nop                                           ; $6ce1: $00
    nop                                           ; $6ce2: $00
    nop                                           ; $6ce3: $00
    nop                                           ; $6ce4: $00
    nop                                           ; $6ce5: $00
    nop                                           ; $6ce6: $00
    nop                                           ; $6ce7: $00
    nop                                           ; $6ce8: $00
    nop                                           ; $6ce9: $00
    nop                                           ; $6cea: $00
    nop                                           ; $6ceb: $00
    nop                                           ; $6cec: $00
    nop                                           ; $6ced: $00
    nop                                           ; $6cee: $00
    nop                                           ; $6cef: $00
    nop                                           ; $6cf0: $00
    nop                                           ; $6cf1: $00
    nop                                           ; $6cf2: $00
    nop                                           ; $6cf3: $00
    nop                                           ; $6cf4: $00
    nop                                           ; $6cf5: $00
    nop                                           ; $6cf6: $00
    nop                                           ; $6cf7: $00
    nop                                           ; $6cf8: $00
    nop                                           ; $6cf9: $00
    nop                                           ; $6cfa: $00
    nop                                           ; $6cfb: $00
    nop                                           ; $6cfc: $00
    nop                                           ; $6cfd: $00
    nop                                           ; $6cfe: $00
    nop                                           ; $6cff: $00
    nop                                           ; $6d00: $00
    nop                                           ; $6d01: $00
    nop                                           ; $6d02: $00
    nop                                           ; $6d03: $00
    nop                                           ; $6d04: $00
    nop                                           ; $6d05: $00
    nop                                           ; $6d06: $00
    nop                                           ; $6d07: $00
    nop                                           ; $6d08: $00
    nop                                           ; $6d09: $00
    nop                                           ; $6d0a: $00
    nop                                           ; $6d0b: $00
    nop                                           ; $6d0c: $00
    nop                                           ; $6d0d: $00
    nop                                           ; $6d0e: $00
    nop                                           ; $6d0f: $00
    nop                                           ; $6d10: $00
    nop                                           ; $6d11: $00
    nop                                           ; $6d12: $00
    nop                                           ; $6d13: $00
    nop                                           ; $6d14: $00
    nop                                           ; $6d15: $00
    nop                                           ; $6d16: $00
    nop                                           ; $6d17: $00
    nop                                           ; $6d18: $00
    nop                                           ; $6d19: $00
    nop                                           ; $6d1a: $00
    nop                                           ; $6d1b: $00
    nop                                           ; $6d1c: $00
    nop                                           ; $6d1d: $00
    nop                                           ; $6d1e: $00
    nop                                           ; $6d1f: $00
    nop                                           ; $6d20: $00
    nop                                           ; $6d21: $00
    nop                                           ; $6d22: $00
    nop                                           ; $6d23: $00
    nop                                           ; $6d24: $00
    nop                                           ; $6d25: $00
    nop                                           ; $6d26: $00
    nop                                           ; $6d27: $00
    nop                                           ; $6d28: $00
    nop                                           ; $6d29: $00
    nop                                           ; $6d2a: $00
    nop                                           ; $6d2b: $00
    nop                                           ; $6d2c: $00
    nop                                           ; $6d2d: $00
    nop                                           ; $6d2e: $00
    nop                                           ; $6d2f: $00
    nop                                           ; $6d30: $00
    nop                                           ; $6d31: $00
    nop                                           ; $6d32: $00
    nop                                           ; $6d33: $00
    nop                                           ; $6d34: $00
    nop                                           ; $6d35: $00
    nop                                           ; $6d36: $00
    nop                                           ; $6d37: $00
    nop                                           ; $6d38: $00
    nop                                           ; $6d39: $00
    nop                                           ; $6d3a: $00
    nop                                           ; $6d3b: $00
    nop                                           ; $6d3c: $00
    nop                                           ; $6d3d: $00
    nop                                           ; $6d3e: $00
    nop                                           ; $6d3f: $00
    nop                                           ; $6d40: $00
    nop                                           ; $6d41: $00
    nop                                           ; $6d42: $00
    nop                                           ; $6d43: $00
    nop                                           ; $6d44: $00
    nop                                           ; $6d45: $00
    nop                                           ; $6d46: $00
    nop                                           ; $6d47: $00
    nop                                           ; $6d48: $00
    nop                                           ; $6d49: $00
    nop                                           ; $6d4a: $00
    nop                                           ; $6d4b: $00
    nop                                           ; $6d4c: $00
    nop                                           ; $6d4d: $00
    nop                                           ; $6d4e: $00
    nop                                           ; $6d4f: $00
    nop                                           ; $6d50: $00
    nop                                           ; $6d51: $00
    nop                                           ; $6d52: $00
    nop                                           ; $6d53: $00
    nop                                           ; $6d54: $00
    nop                                           ; $6d55: $00
    nop                                           ; $6d56: $00
    nop                                           ; $6d57: $00
    nop                                           ; $6d58: $00
    nop                                           ; $6d59: $00
    nop                                           ; $6d5a: $00
    nop                                           ; $6d5b: $00
    nop                                           ; $6d5c: $00
    nop                                           ; $6d5d: $00
    nop                                           ; $6d5e: $00
    nop                                           ; $6d5f: $00
    nop                                           ; $6d60: $00
    nop                                           ; $6d61: $00
    nop                                           ; $6d62: $00
    nop                                           ; $6d63: $00
    nop                                           ; $6d64: $00
    nop                                           ; $6d65: $00
    nop                                           ; $6d66: $00
    nop                                           ; $6d67: $00
    nop                                           ; $6d68: $00
    nop                                           ; $6d69: $00
    nop                                           ; $6d6a: $00
    nop                                           ; $6d6b: $00
    nop                                           ; $6d6c: $00
    nop                                           ; $6d6d: $00
    nop                                           ; $6d6e: $00
    nop                                           ; $6d6f: $00
    nop                                           ; $6d70: $00
    nop                                           ; $6d71: $00
    nop                                           ; $6d72: $00
    nop                                           ; $6d73: $00
    nop                                           ; $6d74: $00
    nop                                           ; $6d75: $00
    nop                                           ; $6d76: $00
    nop                                           ; $6d77: $00
    nop                                           ; $6d78: $00
    nop                                           ; $6d79: $00
    nop                                           ; $6d7a: $00
    nop                                           ; $6d7b: $00
    nop                                           ; $6d7c: $00
    nop                                           ; $6d7d: $00
    nop                                           ; $6d7e: $00
    nop                                           ; $6d7f: $00
    nop                                           ; $6d80: $00
    nop                                           ; $6d81: $00
    nop                                           ; $6d82: $00
    nop                                           ; $6d83: $00
    nop                                           ; $6d84: $00
    nop                                           ; $6d85: $00
    nop                                           ; $6d86: $00
    nop                                           ; $6d87: $00
    nop                                           ; $6d88: $00
    nop                                           ; $6d89: $00
    nop                                           ; $6d8a: $00
    nop                                           ; $6d8b: $00
    nop                                           ; $6d8c: $00
    nop                                           ; $6d8d: $00
    nop                                           ; $6d8e: $00
    nop                                           ; $6d8f: $00
    nop                                           ; $6d90: $00
    nop                                           ; $6d91: $00
    nop                                           ; $6d92: $00
    nop                                           ; $6d93: $00
    nop                                           ; $6d94: $00
    nop                                           ; $6d95: $00
    nop                                           ; $6d96: $00
    nop                                           ; $6d97: $00
    nop                                           ; $6d98: $00
    nop                                           ; $6d99: $00
    nop                                           ; $6d9a: $00
    nop                                           ; $6d9b: $00
    nop                                           ; $6d9c: $00
    nop                                           ; $6d9d: $00
    nop                                           ; $6d9e: $00
    nop                                           ; $6d9f: $00
    nop                                           ; $6da0: $00
    nop                                           ; $6da1: $00
    nop                                           ; $6da2: $00
    nop                                           ; $6da3: $00
    nop                                           ; $6da4: $00
    nop                                           ; $6da5: $00
    nop                                           ; $6da6: $00
    nop                                           ; $6da7: $00
    nop                                           ; $6da8: $00
    nop                                           ; $6da9: $00
    nop                                           ; $6daa: $00
    nop                                           ; $6dab: $00
    nop                                           ; $6dac: $00
    nop                                           ; $6dad: $00
    nop                                           ; $6dae: $00
    nop                                           ; $6daf: $00
    nop                                           ; $6db0: $00
    nop                                           ; $6db1: $00
    nop                                           ; $6db2: $00
    nop                                           ; $6db3: $00
    nop                                           ; $6db4: $00
    nop                                           ; $6db5: $00
    nop                                           ; $6db6: $00
    nop                                           ; $6db7: $00
    nop                                           ; $6db8: $00
    nop                                           ; $6db9: $00
    nop                                           ; $6dba: $00
    nop                                           ; $6dbb: $00
    nop                                           ; $6dbc: $00
    nop                                           ; $6dbd: $00
    nop                                           ; $6dbe: $00
    nop                                           ; $6dbf: $00
    nop                                           ; $6dc0: $00
    nop                                           ; $6dc1: $00
    nop                                           ; $6dc2: $00
    nop                                           ; $6dc3: $00
    nop                                           ; $6dc4: $00
    nop                                           ; $6dc5: $00
    nop                                           ; $6dc6: $00
    nop                                           ; $6dc7: $00
    nop                                           ; $6dc8: $00
    nop                                           ; $6dc9: $00
    nop                                           ; $6dca: $00
    nop                                           ; $6dcb: $00
    nop                                           ; $6dcc: $00
    nop                                           ; $6dcd: $00
    nop                                           ; $6dce: $00
    nop                                           ; $6dcf: $00
    nop                                           ; $6dd0: $00
    nop                                           ; $6dd1: $00
    nop                                           ; $6dd2: $00
    nop                                           ; $6dd3: $00
    nop                                           ; $6dd4: $00
    nop                                           ; $6dd5: $00
    nop                                           ; $6dd6: $00
    nop                                           ; $6dd7: $00
    nop                                           ; $6dd8: $00
    nop                                           ; $6dd9: $00
    nop                                           ; $6dda: $00
    nop                                           ; $6ddb: $00
    nop                                           ; $6ddc: $00
    nop                                           ; $6ddd: $00
    nop                                           ; $6dde: $00
    nop                                           ; $6ddf: $00
    nop                                           ; $6de0: $00
    nop                                           ; $6de1: $00
    nop                                           ; $6de2: $00
    nop                                           ; $6de3: $00
    nop                                           ; $6de4: $00
    nop                                           ; $6de5: $00
    nop                                           ; $6de6: $00
    nop                                           ; $6de7: $00
    nop                                           ; $6de8: $00
    nop                                           ; $6de9: $00
    nop                                           ; $6dea: $00
    nop                                           ; $6deb: $00
    nop                                           ; $6dec: $00
    nop                                           ; $6ded: $00
    nop                                           ; $6dee: $00
    nop                                           ; $6def: $00
    nop                                           ; $6df0: $00
    nop                                           ; $6df1: $00
    nop                                           ; $6df2: $00
    nop                                           ; $6df3: $00
    nop                                           ; $6df4: $00
    nop                                           ; $6df5: $00
    nop                                           ; $6df6: $00
    nop                                           ; $6df7: $00
    nop                                           ; $6df8: $00
    nop                                           ; $6df9: $00
    nop                                           ; $6dfa: $00
    nop                                           ; $6dfb: $00
    nop                                           ; $6dfc: $00
    nop                                           ; $6dfd: $00
    nop                                           ; $6dfe: $00
    nop                                           ; $6dff: $00
    nop                                           ; $6e00: $00
    nop                                           ; $6e01: $00
    nop                                           ; $6e02: $00
    nop                                           ; $6e03: $00
    nop                                           ; $6e04: $00
    nop                                           ; $6e05: $00
    nop                                           ; $6e06: $00
    nop                                           ; $6e07: $00
    nop                                           ; $6e08: $00
    nop                                           ; $6e09: $00
    nop                                           ; $6e0a: $00
    nop                                           ; $6e0b: $00
    nop                                           ; $6e0c: $00
    nop                                           ; $6e0d: $00
    nop                                           ; $6e0e: $00
    nop                                           ; $6e0f: $00
    nop                                           ; $6e10: $00
    nop                                           ; $6e11: $00
    nop                                           ; $6e12: $00
    nop                                           ; $6e13: $00
    nop                                           ; $6e14: $00
    nop                                           ; $6e15: $00
    nop                                           ; $6e16: $00
    nop                                           ; $6e17: $00
    nop                                           ; $6e18: $00
    nop                                           ; $6e19: $00
    nop                                           ; $6e1a: $00
    nop                                           ; $6e1b: $00
    nop                                           ; $6e1c: $00
    nop                                           ; $6e1d: $00
    nop                                           ; $6e1e: $00
    nop                                           ; $6e1f: $00
    nop                                           ; $6e20: $00
    nop                                           ; $6e21: $00
    nop                                           ; $6e22: $00
    nop                                           ; $6e23: $00
    nop                                           ; $6e24: $00
    nop                                           ; $6e25: $00
    nop                                           ; $6e26: $00
    nop                                           ; $6e27: $00
    nop                                           ; $6e28: $00
    nop                                           ; $6e29: $00
    nop                                           ; $6e2a: $00
    nop                                           ; $6e2b: $00
    nop                                           ; $6e2c: $00
    nop                                           ; $6e2d: $00
    nop                                           ; $6e2e: $00
    nop                                           ; $6e2f: $00
    nop                                           ; $6e30: $00
    nop                                           ; $6e31: $00
    nop                                           ; $6e32: $00
    nop                                           ; $6e33: $00
    nop                                           ; $6e34: $00
    nop                                           ; $6e35: $00
    nop                                           ; $6e36: $00
    nop                                           ; $6e37: $00
    nop                                           ; $6e38: $00
    nop                                           ; $6e39: $00
    nop                                           ; $6e3a: $00
    nop                                           ; $6e3b: $00
    nop                                           ; $6e3c: $00
    nop                                           ; $6e3d: $00
    nop                                           ; $6e3e: $00
    nop                                           ; $6e3f: $00
    nop                                           ; $6e40: $00
    nop                                           ; $6e41: $00
    nop                                           ; $6e42: $00
    nop                                           ; $6e43: $00
    nop                                           ; $6e44: $00
    nop                                           ; $6e45: $00
    nop                                           ; $6e46: $00
    nop                                           ; $6e47: $00
    nop                                           ; $6e48: $00
    nop                                           ; $6e49: $00
    nop                                           ; $6e4a: $00
    nop                                           ; $6e4b: $00
    nop                                           ; $6e4c: $00
    nop                                           ; $6e4d: $00
    nop                                           ; $6e4e: $00
    nop                                           ; $6e4f: $00
    nop                                           ; $6e50: $00
    nop                                           ; $6e51: $00
    nop                                           ; $6e52: $00
    nop                                           ; $6e53: $00
    nop                                           ; $6e54: $00
    nop                                           ; $6e55: $00
    nop                                           ; $6e56: $00
    nop                                           ; $6e57: $00
    nop                                           ; $6e58: $00
    nop                                           ; $6e59: $00
    nop                                           ; $6e5a: $00
    nop                                           ; $6e5b: $00
    nop                                           ; $6e5c: $00
    nop                                           ; $6e5d: $00
    nop                                           ; $6e5e: $00
    nop                                           ; $6e5f: $00
    nop                                           ; $6e60: $00
    nop                                           ; $6e61: $00
    nop                                           ; $6e62: $00
    nop                                           ; $6e63: $00
    nop                                           ; $6e64: $00
    nop                                           ; $6e65: $00
    nop                                           ; $6e66: $00
    nop                                           ; $6e67: $00
    nop                                           ; $6e68: $00
    nop                                           ; $6e69: $00
    nop                                           ; $6e6a: $00
    nop                                           ; $6e6b: $00
    nop                                           ; $6e6c: $00
    nop                                           ; $6e6d: $00
    nop                                           ; $6e6e: $00
    nop                                           ; $6e6f: $00
    nop                                           ; $6e70: $00
    nop                                           ; $6e71: $00
    nop                                           ; $6e72: $00
    nop                                           ; $6e73: $00
    nop                                           ; $6e74: $00
    nop                                           ; $6e75: $00
    nop                                           ; $6e76: $00
    nop                                           ; $6e77: $00
    nop                                           ; $6e78: $00
    nop                                           ; $6e79: $00
    nop                                           ; $6e7a: $00
    nop                                           ; $6e7b: $00
    nop                                           ; $6e7c: $00
    nop                                           ; $6e7d: $00
    nop                                           ; $6e7e: $00
    nop                                           ; $6e7f: $00
    nop                                           ; $6e80: $00
    nop                                           ; $6e81: $00
    nop                                           ; $6e82: $00
    nop                                           ; $6e83: $00
    nop                                           ; $6e84: $00
    nop                                           ; $6e85: $00
    nop                                           ; $6e86: $00
    nop                                           ; $6e87: $00
    nop                                           ; $6e88: $00
    nop                                           ; $6e89: $00
    nop                                           ; $6e8a: $00
    nop                                           ; $6e8b: $00
    nop                                           ; $6e8c: $00
    nop                                           ; $6e8d: $00
    nop                                           ; $6e8e: $00
    nop                                           ; $6e8f: $00
    nop                                           ; $6e90: $00
    nop                                           ; $6e91: $00
    nop                                           ; $6e92: $00
    nop                                           ; $6e93: $00
    nop                                           ; $6e94: $00
    nop                                           ; $6e95: $00
    nop                                           ; $6e96: $00
    nop                                           ; $6e97: $00
    nop                                           ; $6e98: $00
    nop                                           ; $6e99: $00
    nop                                           ; $6e9a: $00
    nop                                           ; $6e9b: $00
    nop                                           ; $6e9c: $00
    nop                                           ; $6e9d: $00
    nop                                           ; $6e9e: $00
    nop                                           ; $6e9f: $00
    nop                                           ; $6ea0: $00
    nop                                           ; $6ea1: $00
    nop                                           ; $6ea2: $00
    nop                                           ; $6ea3: $00
    nop                                           ; $6ea4: $00
    nop                                           ; $6ea5: $00
    nop                                           ; $6ea6: $00
    nop                                           ; $6ea7: $00
    nop                                           ; $6ea8: $00
    nop                                           ; $6ea9: $00
    nop                                           ; $6eaa: $00
    nop                                           ; $6eab: $00
    nop                                           ; $6eac: $00
    nop                                           ; $6ead: $00
    nop                                           ; $6eae: $00
    nop                                           ; $6eaf: $00
    nop                                           ; $6eb0: $00
    nop                                           ; $6eb1: $00
    nop                                           ; $6eb2: $00
    nop                                           ; $6eb3: $00
    nop                                           ; $6eb4: $00
    nop                                           ; $6eb5: $00
    nop                                           ; $6eb6: $00
    nop                                           ; $6eb7: $00
    nop                                           ; $6eb8: $00
    nop                                           ; $6eb9: $00
    nop                                           ; $6eba: $00
    nop                                           ; $6ebb: $00
    nop                                           ; $6ebc: $00
    nop                                           ; $6ebd: $00
    nop                                           ; $6ebe: $00
    nop                                           ; $6ebf: $00
    nop                                           ; $6ec0: $00
    nop                                           ; $6ec1: $00
    nop                                           ; $6ec2: $00
    nop                                           ; $6ec3: $00
    nop                                           ; $6ec4: $00
    nop                                           ; $6ec5: $00
    nop                                           ; $6ec6: $00
    nop                                           ; $6ec7: $00
    nop                                           ; $6ec8: $00
    nop                                           ; $6ec9: $00
    nop                                           ; $6eca: $00
    nop                                           ; $6ecb: $00
    nop                                           ; $6ecc: $00
    nop                                           ; $6ecd: $00
    nop                                           ; $6ece: $00
    nop                                           ; $6ecf: $00
    nop                                           ; $6ed0: $00
    nop                                           ; $6ed1: $00
    nop                                           ; $6ed2: $00
    nop                                           ; $6ed3: $00
    nop                                           ; $6ed4: $00
    nop                                           ; $6ed5: $00
    nop                                           ; $6ed6: $00
    nop                                           ; $6ed7: $00
    nop                                           ; $6ed8: $00
    nop                                           ; $6ed9: $00
    nop                                           ; $6eda: $00
    nop                                           ; $6edb: $00
    nop                                           ; $6edc: $00
    nop                                           ; $6edd: $00
    nop                                           ; $6ede: $00
    nop                                           ; $6edf: $00
    nop                                           ; $6ee0: $00
    nop                                           ; $6ee1: $00
    nop                                           ; $6ee2: $00
    nop                                           ; $6ee3: $00
    nop                                           ; $6ee4: $00
    nop                                           ; $6ee5: $00
    nop                                           ; $6ee6: $00
    nop                                           ; $6ee7: $00
    nop                                           ; $6ee8: $00
    nop                                           ; $6ee9: $00
    nop                                           ; $6eea: $00
    nop                                           ; $6eeb: $00
    nop                                           ; $6eec: $00
    nop                                           ; $6eed: $00
    nop                                           ; $6eee: $00
    nop                                           ; $6eef: $00
    nop                                           ; $6ef0: $00
    nop                                           ; $6ef1: $00
    nop                                           ; $6ef2: $00
    nop                                           ; $6ef3: $00
    nop                                           ; $6ef4: $00
    nop                                           ; $6ef5: $00
    nop                                           ; $6ef6: $00
    nop                                           ; $6ef7: $00
    nop                                           ; $6ef8: $00
    nop                                           ; $6ef9: $00
    nop                                           ; $6efa: $00
    nop                                           ; $6efb: $00
    nop                                           ; $6efc: $00
    nop                                           ; $6efd: $00
    nop                                           ; $6efe: $00
    nop                                           ; $6eff: $00
    nop                                           ; $6f00: $00
    nop                                           ; $6f01: $00
    nop                                           ; $6f02: $00
    nop                                           ; $6f03: $00
    nop                                           ; $6f04: $00
    nop                                           ; $6f05: $00
    nop                                           ; $6f06: $00
    nop                                           ; $6f07: $00
    nop                                           ; $6f08: $00
    nop                                           ; $6f09: $00
    nop                                           ; $6f0a: $00
    nop                                           ; $6f0b: $00
    nop                                           ; $6f0c: $00
    nop                                           ; $6f0d: $00
    nop                                           ; $6f0e: $00
    nop                                           ; $6f0f: $00
    nop                                           ; $6f10: $00
    nop                                           ; $6f11: $00
    nop                                           ; $6f12: $00
    nop                                           ; $6f13: $00
    nop                                           ; $6f14: $00
    nop                                           ; $6f15: $00
    nop                                           ; $6f16: $00
    nop                                           ; $6f17: $00
    nop                                           ; $6f18: $00
    nop                                           ; $6f19: $00
    nop                                           ; $6f1a: $00
    nop                                           ; $6f1b: $00
    nop                                           ; $6f1c: $00
    nop                                           ; $6f1d: $00
    nop                                           ; $6f1e: $00
    nop                                           ; $6f1f: $00
    nop                                           ; $6f20: $00
    nop                                           ; $6f21: $00
    nop                                           ; $6f22: $00
    nop                                           ; $6f23: $00
    nop                                           ; $6f24: $00
    nop                                           ; $6f25: $00
    nop                                           ; $6f26: $00
    nop                                           ; $6f27: $00
    nop                                           ; $6f28: $00
    nop                                           ; $6f29: $00
    nop                                           ; $6f2a: $00
    nop                                           ; $6f2b: $00
    nop                                           ; $6f2c: $00
    nop                                           ; $6f2d: $00
    nop                                           ; $6f2e: $00
    nop                                           ; $6f2f: $00
    nop                                           ; $6f30: $00
    nop                                           ; $6f31: $00
    nop                                           ; $6f32: $00
    nop                                           ; $6f33: $00
    nop                                           ; $6f34: $00
    nop                                           ; $6f35: $00
    nop                                           ; $6f36: $00
    nop                                           ; $6f37: $00
    nop                                           ; $6f38: $00
    nop                                           ; $6f39: $00
    nop                                           ; $6f3a: $00
    nop                                           ; $6f3b: $00
    nop                                           ; $6f3c: $00
    nop                                           ; $6f3d: $00
    nop                                           ; $6f3e: $00
    nop                                           ; $6f3f: $00
    nop                                           ; $6f40: $00
    nop                                           ; $6f41: $00
    nop                                           ; $6f42: $00
    nop                                           ; $6f43: $00
    nop                                           ; $6f44: $00
    nop                                           ; $6f45: $00
    nop                                           ; $6f46: $00
    nop                                           ; $6f47: $00
    nop                                           ; $6f48: $00
    nop                                           ; $6f49: $00
    nop                                           ; $6f4a: $00
    nop                                           ; $6f4b: $00
    nop                                           ; $6f4c: $00
    nop                                           ; $6f4d: $00
    nop                                           ; $6f4e: $00
    nop                                           ; $6f4f: $00
    nop                                           ; $6f50: $00
    nop                                           ; $6f51: $00
    nop                                           ; $6f52: $00
    nop                                           ; $6f53: $00
    nop                                           ; $6f54: $00
    nop                                           ; $6f55: $00
    nop                                           ; $6f56: $00
    nop                                           ; $6f57: $00
    nop                                           ; $6f58: $00
    nop                                           ; $6f59: $00
    nop                                           ; $6f5a: $00
    nop                                           ; $6f5b: $00
    nop                                           ; $6f5c: $00
    nop                                           ; $6f5d: $00
    nop                                           ; $6f5e: $00
    nop                                           ; $6f5f: $00
    nop                                           ; $6f60: $00
    nop                                           ; $6f61: $00
    nop                                           ; $6f62: $00
    nop                                           ; $6f63: $00
    nop                                           ; $6f64: $00
    nop                                           ; $6f65: $00
    nop                                           ; $6f66: $00
    nop                                           ; $6f67: $00
    nop                                           ; $6f68: $00
    nop                                           ; $6f69: $00
    nop                                           ; $6f6a: $00
    nop                                           ; $6f6b: $00
    nop                                           ; $6f6c: $00
    nop                                           ; $6f6d: $00
    nop                                           ; $6f6e: $00
    nop                                           ; $6f6f: $00
    nop                                           ; $6f70: $00
    nop                                           ; $6f71: $00
    nop                                           ; $6f72: $00
    nop                                           ; $6f73: $00
    nop                                           ; $6f74: $00
    nop                                           ; $6f75: $00
    nop                                           ; $6f76: $00
    nop                                           ; $6f77: $00
    nop                                           ; $6f78: $00
    nop                                           ; $6f79: $00
    nop                                           ; $6f7a: $00
    nop                                           ; $6f7b: $00
    nop                                           ; $6f7c: $00
    nop                                           ; $6f7d: $00
    nop                                           ; $6f7e: $00
    nop                                           ; $6f7f: $00
    nop                                           ; $6f80: $00
    nop                                           ; $6f81: $00
    nop                                           ; $6f82: $00
    nop                                           ; $6f83: $00
    nop                                           ; $6f84: $00
    nop                                           ; $6f85: $00
    nop                                           ; $6f86: $00
    nop                                           ; $6f87: $00
    nop                                           ; $6f88: $00
    nop                                           ; $6f89: $00
    nop                                           ; $6f8a: $00
    nop                                           ; $6f8b: $00
    nop                                           ; $6f8c: $00
    nop                                           ; $6f8d: $00
    nop                                           ; $6f8e: $00
    nop                                           ; $6f8f: $00
    nop                                           ; $6f90: $00
    nop                                           ; $6f91: $00
    nop                                           ; $6f92: $00
    nop                                           ; $6f93: $00
    nop                                           ; $6f94: $00
    nop                                           ; $6f95: $00
    nop                                           ; $6f96: $00
    nop                                           ; $6f97: $00
    nop                                           ; $6f98: $00
    nop                                           ; $6f99: $00
    nop                                           ; $6f9a: $00
    nop                                           ; $6f9b: $00
    nop                                           ; $6f9c: $00
    nop                                           ; $6f9d: $00
    nop                                           ; $6f9e: $00
    nop                                           ; $6f9f: $00
    nop                                           ; $6fa0: $00
    nop                                           ; $6fa1: $00
    nop                                           ; $6fa2: $00
    nop                                           ; $6fa3: $00
    nop                                           ; $6fa4: $00
    nop                                           ; $6fa5: $00
    nop                                           ; $6fa6: $00
    nop                                           ; $6fa7: $00
    nop                                           ; $6fa8: $00
    nop                                           ; $6fa9: $00
    nop                                           ; $6faa: $00
    nop                                           ; $6fab: $00
    nop                                           ; $6fac: $00
    nop                                           ; $6fad: $00
    nop                                           ; $6fae: $00
    nop                                           ; $6faf: $00
    nop                                           ; $6fb0: $00
    nop                                           ; $6fb1: $00
    nop                                           ; $6fb2: $00
    nop                                           ; $6fb3: $00
    nop                                           ; $6fb4: $00
    nop                                           ; $6fb5: $00
    nop                                           ; $6fb6: $00
    nop                                           ; $6fb7: $00
    nop                                           ; $6fb8: $00
    nop                                           ; $6fb9: $00
    nop                                           ; $6fba: $00
    nop                                           ; $6fbb: $00
    nop                                           ; $6fbc: $00
    nop                                           ; $6fbd: $00
    nop                                           ; $6fbe: $00
    nop                                           ; $6fbf: $00
    nop                                           ; $6fc0: $00
    nop                                           ; $6fc1: $00
    nop                                           ; $6fc2: $00
    nop                                           ; $6fc3: $00
    nop                                           ; $6fc4: $00
    nop                                           ; $6fc5: $00
    nop                                           ; $6fc6: $00
    nop                                           ; $6fc7: $00
    nop                                           ; $6fc8: $00
    nop                                           ; $6fc9: $00
    nop                                           ; $6fca: $00
    nop                                           ; $6fcb: $00
    nop                                           ; $6fcc: $00
    nop                                           ; $6fcd: $00
    nop                                           ; $6fce: $00
    nop                                           ; $6fcf: $00
    nop                                           ; $6fd0: $00
    nop                                           ; $6fd1: $00
    nop                                           ; $6fd2: $00
    nop                                           ; $6fd3: $00
    nop                                           ; $6fd4: $00
    nop                                           ; $6fd5: $00
    nop                                           ; $6fd6: $00
    nop                                           ; $6fd7: $00
    nop                                           ; $6fd8: $00
    nop                                           ; $6fd9: $00
    nop                                           ; $6fda: $00
    nop                                           ; $6fdb: $00
    nop                                           ; $6fdc: $00
    nop                                           ; $6fdd: $00
    nop                                           ; $6fde: $00
    nop                                           ; $6fdf: $00
    nop                                           ; $6fe0: $00
    nop                                           ; $6fe1: $00
    nop                                           ; $6fe2: $00
    nop                                           ; $6fe3: $00
    nop                                           ; $6fe4: $00
    nop                                           ; $6fe5: $00
    nop                                           ; $6fe6: $00
    nop                                           ; $6fe7: $00
    nop                                           ; $6fe8: $00
    nop                                           ; $6fe9: $00
    nop                                           ; $6fea: $00
    nop                                           ; $6feb: $00
    nop                                           ; $6fec: $00
    nop                                           ; $6fed: $00
    nop                                           ; $6fee: $00
    nop                                           ; $6fef: $00
    nop                                           ; $6ff0: $00
    nop                                           ; $6ff1: $00
    nop                                           ; $6ff2: $00
    nop                                           ; $6ff3: $00
    nop                                           ; $6ff4: $00
    nop                                           ; $6ff5: $00
    nop                                           ; $6ff6: $00
    nop                                           ; $6ff7: $00
    nop                                           ; $6ff8: $00
    nop                                           ; $6ff9: $00
    nop                                           ; $6ffa: $00
    nop                                           ; $6ffb: $00
    nop                                           ; $6ffc: $00
    nop                                           ; $6ffd: $00
    nop                                           ; $6ffe: $00
    nop                                           ; $6fff: $00
    nop                                           ; $7000: $00
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    nop                                           ; $7003: $00
    nop                                           ; $7004: $00
    nop                                           ; $7005: $00
    nop                                           ; $7006: $00
    nop                                           ; $7007: $00
    nop                                           ; $7008: $00
    nop                                           ; $7009: $00
    nop                                           ; $700a: $00
    nop                                           ; $700b: $00
    nop                                           ; $700c: $00
    nop                                           ; $700d: $00
    nop                                           ; $700e: $00
    nop                                           ; $700f: $00
    nop                                           ; $7010: $00
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    nop                                           ; $7013: $00
    nop                                           ; $7014: $00
    nop                                           ; $7015: $00
    nop                                           ; $7016: $00
    nop                                           ; $7017: $00
    nop                                           ; $7018: $00
    nop                                           ; $7019: $00
    nop                                           ; $701a: $00
    nop                                           ; $701b: $00
    nop                                           ; $701c: $00
    nop                                           ; $701d: $00
    nop                                           ; $701e: $00
    nop                                           ; $701f: $00
    nop                                           ; $7020: $00
    nop                                           ; $7021: $00
    nop                                           ; $7022: $00
    nop                                           ; $7023: $00
    nop                                           ; $7024: $00
    nop                                           ; $7025: $00
    nop                                           ; $7026: $00
    nop                                           ; $7027: $00
    nop                                           ; $7028: $00
    nop                                           ; $7029: $00
    nop                                           ; $702a: $00
    nop                                           ; $702b: $00
    nop                                           ; $702c: $00
    nop                                           ; $702d: $00
    nop                                           ; $702e: $00
    nop                                           ; $702f: $00
    nop                                           ; $7030: $00
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
    nop                                           ; $7033: $00
    nop                                           ; $7034: $00
    nop                                           ; $7035: $00
    nop                                           ; $7036: $00
    nop                                           ; $7037: $00
    nop                                           ; $7038: $00
    nop                                           ; $7039: $00
    nop                                           ; $703a: $00
    nop                                           ; $703b: $00
    nop                                           ; $703c: $00
    nop                                           ; $703d: $00
    nop                                           ; $703e: $00
    nop                                           ; $703f: $00
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    nop                                           ; $7043: $00
    nop                                           ; $7044: $00
    nop                                           ; $7045: $00
    nop                                           ; $7046: $00
    nop                                           ; $7047: $00
    nop                                           ; $7048: $00
    nop                                           ; $7049: $00
    nop                                           ; $704a: $00
    nop                                           ; $704b: $00
    nop                                           ; $704c: $00
    nop                                           ; $704d: $00
    nop                                           ; $704e: $00
    nop                                           ; $704f: $00
    nop                                           ; $7050: $00
    nop                                           ; $7051: $00
    nop                                           ; $7052: $00
    nop                                           ; $7053: $00
    nop                                           ; $7054: $00
    nop                                           ; $7055: $00
    nop                                           ; $7056: $00
    nop                                           ; $7057: $00
    nop                                           ; $7058: $00
    nop                                           ; $7059: $00
    nop                                           ; $705a: $00
    nop                                           ; $705b: $00
    nop                                           ; $705c: $00
    nop                                           ; $705d: $00
    nop                                           ; $705e: $00
    nop                                           ; $705f: $00
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    nop                                           ; $7062: $00
    nop                                           ; $7063: $00
    nop                                           ; $7064: $00
    nop                                           ; $7065: $00
    nop                                           ; $7066: $00
    nop                                           ; $7067: $00
    nop                                           ; $7068: $00
    nop                                           ; $7069: $00
    nop                                           ; $706a: $00
    nop                                           ; $706b: $00
    nop                                           ; $706c: $00
    nop                                           ; $706d: $00
    nop                                           ; $706e: $00
    nop                                           ; $706f: $00
    nop                                           ; $7070: $00
    nop                                           ; $7071: $00
    nop                                           ; $7072: $00
    nop                                           ; $7073: $00
    nop                                           ; $7074: $00
    nop                                           ; $7075: $00
    nop                                           ; $7076: $00
    nop                                           ; $7077: $00
    nop                                           ; $7078: $00
    nop                                           ; $7079: $00
    nop                                           ; $707a: $00
    nop                                           ; $707b: $00
    nop                                           ; $707c: $00
    nop                                           ; $707d: $00
    nop                                           ; $707e: $00
    nop                                           ; $707f: $00
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    nop                                           ; $7083: $00
    nop                                           ; $7084: $00
    nop                                           ; $7085: $00
    nop                                           ; $7086: $00
    nop                                           ; $7087: $00
    nop                                           ; $7088: $00
    nop                                           ; $7089: $00
    nop                                           ; $708a: $00
    nop                                           ; $708b: $00
    nop                                           ; $708c: $00
    nop                                           ; $708d: $00
    nop                                           ; $708e: $00
    nop                                           ; $708f: $00
    nop                                           ; $7090: $00
    nop                                           ; $7091: $00
    nop                                           ; $7092: $00
    nop                                           ; $7093: $00
    nop                                           ; $7094: $00
    nop                                           ; $7095: $00
    nop                                           ; $7096: $00
    nop                                           ; $7097: $00
    nop                                           ; $7098: $00
    nop                                           ; $7099: $00
    nop                                           ; $709a: $00
    nop                                           ; $709b: $00
    nop                                           ; $709c: $00
    nop                                           ; $709d: $00
    nop                                           ; $709e: $00
    nop                                           ; $709f: $00
    nop                                           ; $70a0: $00
    nop                                           ; $70a1: $00
    nop                                           ; $70a2: $00
    nop                                           ; $70a3: $00
    nop                                           ; $70a4: $00
    nop                                           ; $70a5: $00
    nop                                           ; $70a6: $00
    nop                                           ; $70a7: $00
    nop                                           ; $70a8: $00
    nop                                           ; $70a9: $00
    nop                                           ; $70aa: $00
    nop                                           ; $70ab: $00
    nop                                           ; $70ac: $00
    nop                                           ; $70ad: $00
    nop                                           ; $70ae: $00
    nop                                           ; $70af: $00
    nop                                           ; $70b0: $00
    nop                                           ; $70b1: $00
    nop                                           ; $70b2: $00
    nop                                           ; $70b3: $00
    nop                                           ; $70b4: $00
    nop                                           ; $70b5: $00
    nop                                           ; $70b6: $00
    nop                                           ; $70b7: $00
    nop                                           ; $70b8: $00
    nop                                           ; $70b9: $00
    nop                                           ; $70ba: $00
    nop                                           ; $70bb: $00
    nop                                           ; $70bc: $00
    nop                                           ; $70bd: $00
    nop                                           ; $70be: $00
    nop                                           ; $70bf: $00
    nop                                           ; $70c0: $00
    nop                                           ; $70c1: $00
    nop                                           ; $70c2: $00
    nop                                           ; $70c3: $00
    nop                                           ; $70c4: $00
    nop                                           ; $70c5: $00
    nop                                           ; $70c6: $00
    nop                                           ; $70c7: $00
    nop                                           ; $70c8: $00
    nop                                           ; $70c9: $00
    nop                                           ; $70ca: $00
    nop                                           ; $70cb: $00
    nop                                           ; $70cc: $00
    nop                                           ; $70cd: $00
    nop                                           ; $70ce: $00
    nop                                           ; $70cf: $00
    nop                                           ; $70d0: $00
    nop                                           ; $70d1: $00
    nop                                           ; $70d2: $00
    nop                                           ; $70d3: $00
    nop                                           ; $70d4: $00
    nop                                           ; $70d5: $00
    nop                                           ; $70d6: $00
    nop                                           ; $70d7: $00
    nop                                           ; $70d8: $00
    nop                                           ; $70d9: $00
    nop                                           ; $70da: $00
    nop                                           ; $70db: $00
    nop                                           ; $70dc: $00
    nop                                           ; $70dd: $00
    nop                                           ; $70de: $00
    nop                                           ; $70df: $00
    nop                                           ; $70e0: $00
    nop                                           ; $70e1: $00
    nop                                           ; $70e2: $00
    nop                                           ; $70e3: $00
    nop                                           ; $70e4: $00
    nop                                           ; $70e5: $00
    nop                                           ; $70e6: $00
    nop                                           ; $70e7: $00
    nop                                           ; $70e8: $00
    nop                                           ; $70e9: $00
    nop                                           ; $70ea: $00
    nop                                           ; $70eb: $00
    nop                                           ; $70ec: $00
    nop                                           ; $70ed: $00
    nop                                           ; $70ee: $00
    nop                                           ; $70ef: $00
    nop                                           ; $70f0: $00
    nop                                           ; $70f1: $00
    nop                                           ; $70f2: $00
    nop                                           ; $70f3: $00
    nop                                           ; $70f4: $00
    nop                                           ; $70f5: $00
    nop                                           ; $70f6: $00
    nop                                           ; $70f7: $00
    nop                                           ; $70f8: $00
    nop                                           ; $70f9: $00
    nop                                           ; $70fa: $00
    nop                                           ; $70fb: $00
    nop                                           ; $70fc: $00
    nop                                           ; $70fd: $00
    nop                                           ; $70fe: $00
    nop                                           ; $70ff: $00
    nop                                           ; $7100: $00
    nop                                           ; $7101: $00
    nop                                           ; $7102: $00
    nop                                           ; $7103: $00
    nop                                           ; $7104: $00
    nop                                           ; $7105: $00
    nop                                           ; $7106: $00
    nop                                           ; $7107: $00
    nop                                           ; $7108: $00
    nop                                           ; $7109: $00
    nop                                           ; $710a: $00
    nop                                           ; $710b: $00
    nop                                           ; $710c: $00
    nop                                           ; $710d: $00
    nop                                           ; $710e: $00
    nop                                           ; $710f: $00
    nop                                           ; $7110: $00
    nop                                           ; $7111: $00
    nop                                           ; $7112: $00
    nop                                           ; $7113: $00
    nop                                           ; $7114: $00
    nop                                           ; $7115: $00
    nop                                           ; $7116: $00
    nop                                           ; $7117: $00
    nop                                           ; $7118: $00
    nop                                           ; $7119: $00
    nop                                           ; $711a: $00
    nop                                           ; $711b: $00
    nop                                           ; $711c: $00
    nop                                           ; $711d: $00
    nop                                           ; $711e: $00
    nop                                           ; $711f: $00
    nop                                           ; $7120: $00
    nop                                           ; $7121: $00
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    nop                                           ; $7124: $00
    nop                                           ; $7125: $00
    nop                                           ; $7126: $00
    nop                                           ; $7127: $00
    nop                                           ; $7128: $00
    nop                                           ; $7129: $00
    nop                                           ; $712a: $00
    nop                                           ; $712b: $00
    nop                                           ; $712c: $00
    nop                                           ; $712d: $00
    nop                                           ; $712e: $00
    nop                                           ; $712f: $00
    nop                                           ; $7130: $00
    nop                                           ; $7131: $00
    nop                                           ; $7132: $00
    nop                                           ; $7133: $00
    nop                                           ; $7134: $00
    nop                                           ; $7135: $00
    nop                                           ; $7136: $00
    nop                                           ; $7137: $00
    nop                                           ; $7138: $00
    nop                                           ; $7139: $00
    nop                                           ; $713a: $00
    nop                                           ; $713b: $00
    nop                                           ; $713c: $00
    nop                                           ; $713d: $00
    nop                                           ; $713e: $00
    nop                                           ; $713f: $00
    nop                                           ; $7140: $00
    nop                                           ; $7141: $00
    nop                                           ; $7142: $00
    nop                                           ; $7143: $00
    nop                                           ; $7144: $00
    nop                                           ; $7145: $00
    nop                                           ; $7146: $00
    nop                                           ; $7147: $00
    nop                                           ; $7148: $00
    nop                                           ; $7149: $00
    nop                                           ; $714a: $00
    nop                                           ; $714b: $00
    nop                                           ; $714c: $00
    nop                                           ; $714d: $00
    nop                                           ; $714e: $00
    nop                                           ; $714f: $00
    nop                                           ; $7150: $00
    nop                                           ; $7151: $00
    nop                                           ; $7152: $00
    nop                                           ; $7153: $00
    nop                                           ; $7154: $00
    nop                                           ; $7155: $00
    nop                                           ; $7156: $00
    nop                                           ; $7157: $00
    nop                                           ; $7158: $00
    nop                                           ; $7159: $00
    nop                                           ; $715a: $00
    nop                                           ; $715b: $00
    nop                                           ; $715c: $00
    nop                                           ; $715d: $00
    nop                                           ; $715e: $00
    nop                                           ; $715f: $00
    nop                                           ; $7160: $00
    nop                                           ; $7161: $00
    nop                                           ; $7162: $00
    nop                                           ; $7163: $00
    nop                                           ; $7164: $00
    nop                                           ; $7165: $00
    nop                                           ; $7166: $00
    nop                                           ; $7167: $00
    nop                                           ; $7168: $00
    nop                                           ; $7169: $00
    nop                                           ; $716a: $00
    nop                                           ; $716b: $00
    nop                                           ; $716c: $00
    nop                                           ; $716d: $00
    nop                                           ; $716e: $00
    nop                                           ; $716f: $00
    nop                                           ; $7170: $00
    nop                                           ; $7171: $00
    nop                                           ; $7172: $00
    nop                                           ; $7173: $00
    nop                                           ; $7174: $00
    nop                                           ; $7175: $00
    nop                                           ; $7176: $00
    nop                                           ; $7177: $00
    nop                                           ; $7178: $00
    nop                                           ; $7179: $00
    nop                                           ; $717a: $00
    nop                                           ; $717b: $00
    nop                                           ; $717c: $00
    nop                                           ; $717d: $00
    nop                                           ; $717e: $00
    nop                                           ; $717f: $00
    nop                                           ; $7180: $00
    nop                                           ; $7181: $00
    nop                                           ; $7182: $00
    nop                                           ; $7183: $00
    nop                                           ; $7184: $00
    nop                                           ; $7185: $00
    nop                                           ; $7186: $00
    nop                                           ; $7187: $00
    nop                                           ; $7188: $00
    nop                                           ; $7189: $00
    nop                                           ; $718a: $00
    nop                                           ; $718b: $00
    nop                                           ; $718c: $00
    nop                                           ; $718d: $00
    nop                                           ; $718e: $00
    nop                                           ; $718f: $00
    nop                                           ; $7190: $00
    nop                                           ; $7191: $00
    nop                                           ; $7192: $00
    nop                                           ; $7193: $00
    nop                                           ; $7194: $00
    nop                                           ; $7195: $00
    nop                                           ; $7196: $00
    nop                                           ; $7197: $00
    nop                                           ; $7198: $00
    nop                                           ; $7199: $00
    nop                                           ; $719a: $00
    nop                                           ; $719b: $00
    nop                                           ; $719c: $00
    nop                                           ; $719d: $00
    nop                                           ; $719e: $00
    nop                                           ; $719f: $00
    nop                                           ; $71a0: $00
    nop                                           ; $71a1: $00
    nop                                           ; $71a2: $00
    nop                                           ; $71a3: $00
    nop                                           ; $71a4: $00
    nop                                           ; $71a5: $00
    nop                                           ; $71a6: $00
    nop                                           ; $71a7: $00
    nop                                           ; $71a8: $00
    nop                                           ; $71a9: $00
    nop                                           ; $71aa: $00
    nop                                           ; $71ab: $00
    nop                                           ; $71ac: $00
    nop                                           ; $71ad: $00
    nop                                           ; $71ae: $00
    nop                                           ; $71af: $00
    nop                                           ; $71b0: $00
    nop                                           ; $71b1: $00
    nop                                           ; $71b2: $00
    nop                                           ; $71b3: $00
    nop                                           ; $71b4: $00
    nop                                           ; $71b5: $00
    nop                                           ; $71b6: $00
    nop                                           ; $71b7: $00
    nop                                           ; $71b8: $00
    nop                                           ; $71b9: $00
    nop                                           ; $71ba: $00
    nop                                           ; $71bb: $00
    nop                                           ; $71bc: $00
    nop                                           ; $71bd: $00
    nop                                           ; $71be: $00
    nop                                           ; $71bf: $00
    nop                                           ; $71c0: $00
    nop                                           ; $71c1: $00
    nop                                           ; $71c2: $00
    nop                                           ; $71c3: $00
    nop                                           ; $71c4: $00
    nop                                           ; $71c5: $00
    nop                                           ; $71c6: $00
    nop                                           ; $71c7: $00
    nop                                           ; $71c8: $00
    nop                                           ; $71c9: $00
    nop                                           ; $71ca: $00
    nop                                           ; $71cb: $00
    nop                                           ; $71cc: $00
    nop                                           ; $71cd: $00
    nop                                           ; $71ce: $00
    nop                                           ; $71cf: $00
    nop                                           ; $71d0: $00
    nop                                           ; $71d1: $00
    nop                                           ; $71d2: $00
    nop                                           ; $71d3: $00
    nop                                           ; $71d4: $00
    nop                                           ; $71d5: $00
    nop                                           ; $71d6: $00
    nop                                           ; $71d7: $00
    nop                                           ; $71d8: $00
    nop                                           ; $71d9: $00
    nop                                           ; $71da: $00
    nop                                           ; $71db: $00
    nop                                           ; $71dc: $00
    nop                                           ; $71dd: $00
    nop                                           ; $71de: $00
    nop                                           ; $71df: $00
    nop                                           ; $71e0: $00
    nop                                           ; $71e1: $00
    nop                                           ; $71e2: $00
    nop                                           ; $71e3: $00
    nop                                           ; $71e4: $00
    nop                                           ; $71e5: $00
    nop                                           ; $71e6: $00
    nop                                           ; $71e7: $00
    nop                                           ; $71e8: $00
    nop                                           ; $71e9: $00
    nop                                           ; $71ea: $00
    nop                                           ; $71eb: $00
    nop                                           ; $71ec: $00
    nop                                           ; $71ed: $00
    nop                                           ; $71ee: $00
    nop                                           ; $71ef: $00
    nop                                           ; $71f0: $00
    nop                                           ; $71f1: $00
    nop                                           ; $71f2: $00
    nop                                           ; $71f3: $00
    nop                                           ; $71f4: $00
    nop                                           ; $71f5: $00
    nop                                           ; $71f6: $00
    nop                                           ; $71f7: $00
    nop                                           ; $71f8: $00
    nop                                           ; $71f9: $00
    nop                                           ; $71fa: $00
    nop                                           ; $71fb: $00
    nop                                           ; $71fc: $00
    nop                                           ; $71fd: $00
    nop                                           ; $71fe: $00
    nop                                           ; $71ff: $00
    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    nop                                           ; $7202: $00
    nop                                           ; $7203: $00
    nop                                           ; $7204: $00
    nop                                           ; $7205: $00
    nop                                           ; $7206: $00
    nop                                           ; $7207: $00
    nop                                           ; $7208: $00
    nop                                           ; $7209: $00
    nop                                           ; $720a: $00
    nop                                           ; $720b: $00
    nop                                           ; $720c: $00
    nop                                           ; $720d: $00
    nop                                           ; $720e: $00
    nop                                           ; $720f: $00
    nop                                           ; $7210: $00
    nop                                           ; $7211: $00
    nop                                           ; $7212: $00
    nop                                           ; $7213: $00
    nop                                           ; $7214: $00
    nop                                           ; $7215: $00
    nop                                           ; $7216: $00
    nop                                           ; $7217: $00
    nop                                           ; $7218: $00
    nop                                           ; $7219: $00
    nop                                           ; $721a: $00
    nop                                           ; $721b: $00
    nop                                           ; $721c: $00
    nop                                           ; $721d: $00
    nop                                           ; $721e: $00
    nop                                           ; $721f: $00
    nop                                           ; $7220: $00
    nop                                           ; $7221: $00
    nop                                           ; $7222: $00
    nop                                           ; $7223: $00
    nop                                           ; $7224: $00
    nop                                           ; $7225: $00
    nop                                           ; $7226: $00
    nop                                           ; $7227: $00
    nop                                           ; $7228: $00
    nop                                           ; $7229: $00
    nop                                           ; $722a: $00
    nop                                           ; $722b: $00
    nop                                           ; $722c: $00
    nop                                           ; $722d: $00
    nop                                           ; $722e: $00
    nop                                           ; $722f: $00
    nop                                           ; $7230: $00
    nop                                           ; $7231: $00
    nop                                           ; $7232: $00
    nop                                           ; $7233: $00
    nop                                           ; $7234: $00
    nop                                           ; $7235: $00
    nop                                           ; $7236: $00
    nop                                           ; $7237: $00
    nop                                           ; $7238: $00
    nop                                           ; $7239: $00
    nop                                           ; $723a: $00
    nop                                           ; $723b: $00
    nop                                           ; $723c: $00
    nop                                           ; $723d: $00
    nop                                           ; $723e: $00
    nop                                           ; $723f: $00
    nop                                           ; $7240: $00
    nop                                           ; $7241: $00
    nop                                           ; $7242: $00
    nop                                           ; $7243: $00
    nop                                           ; $7244: $00
    nop                                           ; $7245: $00
    nop                                           ; $7246: $00
    nop                                           ; $7247: $00
    nop                                           ; $7248: $00
    nop                                           ; $7249: $00
    nop                                           ; $724a: $00
    nop                                           ; $724b: $00
    nop                                           ; $724c: $00
    nop                                           ; $724d: $00
    nop                                           ; $724e: $00
    nop                                           ; $724f: $00
    nop                                           ; $7250: $00
    nop                                           ; $7251: $00
    nop                                           ; $7252: $00
    nop                                           ; $7253: $00
    nop                                           ; $7254: $00
    nop                                           ; $7255: $00
    nop                                           ; $7256: $00
    nop                                           ; $7257: $00
    nop                                           ; $7258: $00
    nop                                           ; $7259: $00
    nop                                           ; $725a: $00
    nop                                           ; $725b: $00
    nop                                           ; $725c: $00
    nop                                           ; $725d: $00
    nop                                           ; $725e: $00
    nop                                           ; $725f: $00
    nop                                           ; $7260: $00
    nop                                           ; $7261: $00
    nop                                           ; $7262: $00
    nop                                           ; $7263: $00
    nop                                           ; $7264: $00
    nop                                           ; $7265: $00
    nop                                           ; $7266: $00
    nop                                           ; $7267: $00
    nop                                           ; $7268: $00
    nop                                           ; $7269: $00
    nop                                           ; $726a: $00
    nop                                           ; $726b: $00
    nop                                           ; $726c: $00
    nop                                           ; $726d: $00
    nop                                           ; $726e: $00
    nop                                           ; $726f: $00
    nop                                           ; $7270: $00
    nop                                           ; $7271: $00
    nop                                           ; $7272: $00
    nop                                           ; $7273: $00
    nop                                           ; $7274: $00
    nop                                           ; $7275: $00
    nop                                           ; $7276: $00
    nop                                           ; $7277: $00
    nop                                           ; $7278: $00
    nop                                           ; $7279: $00
    nop                                           ; $727a: $00
    nop                                           ; $727b: $00
    nop                                           ; $727c: $00
    nop                                           ; $727d: $00
    nop                                           ; $727e: $00
    nop                                           ; $727f: $00
    nop                                           ; $7280: $00
    nop                                           ; $7281: $00
    nop                                           ; $7282: $00
    nop                                           ; $7283: $00
    nop                                           ; $7284: $00
    nop                                           ; $7285: $00
    nop                                           ; $7286: $00
    nop                                           ; $7287: $00
    nop                                           ; $7288: $00
    nop                                           ; $7289: $00
    nop                                           ; $728a: $00
    nop                                           ; $728b: $00
    nop                                           ; $728c: $00
    nop                                           ; $728d: $00
    nop                                           ; $728e: $00
    nop                                           ; $728f: $00
    nop                                           ; $7290: $00
    nop                                           ; $7291: $00
    nop                                           ; $7292: $00
    nop                                           ; $7293: $00
    nop                                           ; $7294: $00
    nop                                           ; $7295: $00
    nop                                           ; $7296: $00
    nop                                           ; $7297: $00
    nop                                           ; $7298: $00
    nop                                           ; $7299: $00
    nop                                           ; $729a: $00
    nop                                           ; $729b: $00
    nop                                           ; $729c: $00
    nop                                           ; $729d: $00
    nop                                           ; $729e: $00
    nop                                           ; $729f: $00
    nop                                           ; $72a0: $00
    nop                                           ; $72a1: $00
    nop                                           ; $72a2: $00
    nop                                           ; $72a3: $00
    nop                                           ; $72a4: $00
    nop                                           ; $72a5: $00
    nop                                           ; $72a6: $00
    nop                                           ; $72a7: $00
    nop                                           ; $72a8: $00
    nop                                           ; $72a9: $00
    nop                                           ; $72aa: $00
    nop                                           ; $72ab: $00
    nop                                           ; $72ac: $00
    nop                                           ; $72ad: $00
    nop                                           ; $72ae: $00
    nop                                           ; $72af: $00
    nop                                           ; $72b0: $00
    nop                                           ; $72b1: $00
    nop                                           ; $72b2: $00
    nop                                           ; $72b3: $00
    nop                                           ; $72b4: $00
    nop                                           ; $72b5: $00
    nop                                           ; $72b6: $00
    nop                                           ; $72b7: $00
    nop                                           ; $72b8: $00
    nop                                           ; $72b9: $00
    nop                                           ; $72ba: $00
    nop                                           ; $72bb: $00
    nop                                           ; $72bc: $00
    nop                                           ; $72bd: $00
    nop                                           ; $72be: $00
    nop                                           ; $72bf: $00
    nop                                           ; $72c0: $00
    nop                                           ; $72c1: $00
    nop                                           ; $72c2: $00
    nop                                           ; $72c3: $00
    nop                                           ; $72c4: $00
    nop                                           ; $72c5: $00
    nop                                           ; $72c6: $00
    nop                                           ; $72c7: $00
    nop                                           ; $72c8: $00
    nop                                           ; $72c9: $00
    nop                                           ; $72ca: $00
    nop                                           ; $72cb: $00
    nop                                           ; $72cc: $00
    nop                                           ; $72cd: $00
    nop                                           ; $72ce: $00
    nop                                           ; $72cf: $00
    nop                                           ; $72d0: $00
    nop                                           ; $72d1: $00
    nop                                           ; $72d2: $00
    nop                                           ; $72d3: $00
    nop                                           ; $72d4: $00
    nop                                           ; $72d5: $00
    nop                                           ; $72d6: $00
    nop                                           ; $72d7: $00
    nop                                           ; $72d8: $00
    nop                                           ; $72d9: $00
    nop                                           ; $72da: $00
    nop                                           ; $72db: $00
    nop                                           ; $72dc: $00
    nop                                           ; $72dd: $00
    nop                                           ; $72de: $00
    nop                                           ; $72df: $00
    nop                                           ; $72e0: $00
    nop                                           ; $72e1: $00
    nop                                           ; $72e2: $00
    nop                                           ; $72e3: $00
    nop                                           ; $72e4: $00
    nop                                           ; $72e5: $00
    nop                                           ; $72e6: $00
    nop                                           ; $72e7: $00
    nop                                           ; $72e8: $00
    nop                                           ; $72e9: $00
    nop                                           ; $72ea: $00
    nop                                           ; $72eb: $00
    nop                                           ; $72ec: $00
    nop                                           ; $72ed: $00
    nop                                           ; $72ee: $00
    nop                                           ; $72ef: $00
    nop                                           ; $72f0: $00
    nop                                           ; $72f1: $00
    nop                                           ; $72f2: $00
    nop                                           ; $72f3: $00
    nop                                           ; $72f4: $00
    nop                                           ; $72f5: $00
    nop                                           ; $72f6: $00
    nop                                           ; $72f7: $00
    nop                                           ; $72f8: $00
    nop                                           ; $72f9: $00
    nop                                           ; $72fa: $00
    nop                                           ; $72fb: $00
    nop                                           ; $72fc: $00
    nop                                           ; $72fd: $00
    nop                                           ; $72fe: $00
    nop                                           ; $72ff: $00
    nop                                           ; $7300: $00
    nop                                           ; $7301: $00
    nop                                           ; $7302: $00
    nop                                           ; $7303: $00
    nop                                           ; $7304: $00
    nop                                           ; $7305: $00
    nop                                           ; $7306: $00
    nop                                           ; $7307: $00
    nop                                           ; $7308: $00
    nop                                           ; $7309: $00
    nop                                           ; $730a: $00
    nop                                           ; $730b: $00
    nop                                           ; $730c: $00
    nop                                           ; $730d: $00
    nop                                           ; $730e: $00
    nop                                           ; $730f: $00
    nop                                           ; $7310: $00
    nop                                           ; $7311: $00
    nop                                           ; $7312: $00
    nop                                           ; $7313: $00
    nop                                           ; $7314: $00
    nop                                           ; $7315: $00
    nop                                           ; $7316: $00
    nop                                           ; $7317: $00
    nop                                           ; $7318: $00
    nop                                           ; $7319: $00
    nop                                           ; $731a: $00
    nop                                           ; $731b: $00
    nop                                           ; $731c: $00
    nop                                           ; $731d: $00
    nop                                           ; $731e: $00
    nop                                           ; $731f: $00
    nop                                           ; $7320: $00
    nop                                           ; $7321: $00
    nop                                           ; $7322: $00
    nop                                           ; $7323: $00
    nop                                           ; $7324: $00
    nop                                           ; $7325: $00
    nop                                           ; $7326: $00
    nop                                           ; $7327: $00
    nop                                           ; $7328: $00
    nop                                           ; $7329: $00
    nop                                           ; $732a: $00
    nop                                           ; $732b: $00
    nop                                           ; $732c: $00
    nop                                           ; $732d: $00
    nop                                           ; $732e: $00
    nop                                           ; $732f: $00
    nop                                           ; $7330: $00
    nop                                           ; $7331: $00
    nop                                           ; $7332: $00
    nop                                           ; $7333: $00
    nop                                           ; $7334: $00
    nop                                           ; $7335: $00
    nop                                           ; $7336: $00
    nop                                           ; $7337: $00
    nop                                           ; $7338: $00
    nop                                           ; $7339: $00
    nop                                           ; $733a: $00
    nop                                           ; $733b: $00
    nop                                           ; $733c: $00
    nop                                           ; $733d: $00
    nop                                           ; $733e: $00
    nop                                           ; $733f: $00
    nop                                           ; $7340: $00
    nop                                           ; $7341: $00
    nop                                           ; $7342: $00
    nop                                           ; $7343: $00
    nop                                           ; $7344: $00
    nop                                           ; $7345: $00
    nop                                           ; $7346: $00
    nop                                           ; $7347: $00
    nop                                           ; $7348: $00
    nop                                           ; $7349: $00
    nop                                           ; $734a: $00
    nop                                           ; $734b: $00
    nop                                           ; $734c: $00
    nop                                           ; $734d: $00
    nop                                           ; $734e: $00
    nop                                           ; $734f: $00
    nop                                           ; $7350: $00
    nop                                           ; $7351: $00
    nop                                           ; $7352: $00
    nop                                           ; $7353: $00
    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    nop                                           ; $7356: $00
    nop                                           ; $7357: $00
    nop                                           ; $7358: $00
    nop                                           ; $7359: $00
    nop                                           ; $735a: $00
    nop                                           ; $735b: $00
    nop                                           ; $735c: $00
    nop                                           ; $735d: $00
    nop                                           ; $735e: $00
    nop                                           ; $735f: $00
    nop                                           ; $7360: $00
    nop                                           ; $7361: $00
    nop                                           ; $7362: $00
    nop                                           ; $7363: $00
    nop                                           ; $7364: $00
    nop                                           ; $7365: $00
    nop                                           ; $7366: $00
    nop                                           ; $7367: $00
    nop                                           ; $7368: $00
    nop                                           ; $7369: $00
    nop                                           ; $736a: $00
    nop                                           ; $736b: $00
    nop                                           ; $736c: $00
    nop                                           ; $736d: $00
    nop                                           ; $736e: $00
    nop                                           ; $736f: $00
    nop                                           ; $7370: $00
    nop                                           ; $7371: $00
    nop                                           ; $7372: $00
    nop                                           ; $7373: $00
    nop                                           ; $7374: $00
    nop                                           ; $7375: $00
    nop                                           ; $7376: $00
    nop                                           ; $7377: $00
    nop                                           ; $7378: $00
    nop                                           ; $7379: $00
    nop                                           ; $737a: $00
    nop                                           ; $737b: $00
    nop                                           ; $737c: $00
    nop                                           ; $737d: $00
    nop                                           ; $737e: $00
    nop                                           ; $737f: $00
    nop                                           ; $7380: $00
    nop                                           ; $7381: $00
    nop                                           ; $7382: $00
    nop                                           ; $7383: $00
    nop                                           ; $7384: $00
    nop                                           ; $7385: $00
    nop                                           ; $7386: $00
    nop                                           ; $7387: $00
    nop                                           ; $7388: $00
    nop                                           ; $7389: $00
    nop                                           ; $738a: $00
    nop                                           ; $738b: $00
    nop                                           ; $738c: $00
    nop                                           ; $738d: $00
    nop                                           ; $738e: $00
    nop                                           ; $738f: $00
    nop                                           ; $7390: $00
    nop                                           ; $7391: $00
    nop                                           ; $7392: $00
    nop                                           ; $7393: $00
    nop                                           ; $7394: $00
    nop                                           ; $7395: $00
    nop                                           ; $7396: $00
    nop                                           ; $7397: $00
    nop                                           ; $7398: $00
    nop                                           ; $7399: $00
    nop                                           ; $739a: $00
    nop                                           ; $739b: $00
    nop                                           ; $739c: $00
    nop                                           ; $739d: $00
    nop                                           ; $739e: $00
    nop                                           ; $739f: $00
    nop                                           ; $73a0: $00
    nop                                           ; $73a1: $00
    nop                                           ; $73a2: $00
    nop                                           ; $73a3: $00
    nop                                           ; $73a4: $00
    nop                                           ; $73a5: $00
    nop                                           ; $73a6: $00
    nop                                           ; $73a7: $00
    nop                                           ; $73a8: $00
    nop                                           ; $73a9: $00
    nop                                           ; $73aa: $00
    nop                                           ; $73ab: $00
    nop                                           ; $73ac: $00
    nop                                           ; $73ad: $00
    nop                                           ; $73ae: $00
    nop                                           ; $73af: $00
    nop                                           ; $73b0: $00
    nop                                           ; $73b1: $00
    nop                                           ; $73b2: $00
    nop                                           ; $73b3: $00
    nop                                           ; $73b4: $00
    nop                                           ; $73b5: $00
    nop                                           ; $73b6: $00
    nop                                           ; $73b7: $00
    nop                                           ; $73b8: $00
    nop                                           ; $73b9: $00
    nop                                           ; $73ba: $00
    nop                                           ; $73bb: $00
    nop                                           ; $73bc: $00
    nop                                           ; $73bd: $00
    nop                                           ; $73be: $00
    nop                                           ; $73bf: $00
    nop                                           ; $73c0: $00
    nop                                           ; $73c1: $00
    nop                                           ; $73c2: $00
    nop                                           ; $73c3: $00
    nop                                           ; $73c4: $00
    nop                                           ; $73c5: $00
    nop                                           ; $73c6: $00
    nop                                           ; $73c7: $00
    nop                                           ; $73c8: $00
    nop                                           ; $73c9: $00
    nop                                           ; $73ca: $00
    nop                                           ; $73cb: $00
    nop                                           ; $73cc: $00
    nop                                           ; $73cd: $00
    nop                                           ; $73ce: $00
    nop                                           ; $73cf: $00
    nop                                           ; $73d0: $00
    nop                                           ; $73d1: $00
    nop                                           ; $73d2: $00
    nop                                           ; $73d3: $00
    nop                                           ; $73d4: $00
    nop                                           ; $73d5: $00
    nop                                           ; $73d6: $00
    nop                                           ; $73d7: $00
    nop                                           ; $73d8: $00
    nop                                           ; $73d9: $00
    nop                                           ; $73da: $00
    nop                                           ; $73db: $00
    nop                                           ; $73dc: $00
    nop                                           ; $73dd: $00
    nop                                           ; $73de: $00
    nop                                           ; $73df: $00
    nop                                           ; $73e0: $00
    nop                                           ; $73e1: $00
    nop                                           ; $73e2: $00
    nop                                           ; $73e3: $00
    nop                                           ; $73e4: $00
    nop                                           ; $73e5: $00
    nop                                           ; $73e6: $00
    nop                                           ; $73e7: $00
    nop                                           ; $73e8: $00
    nop                                           ; $73e9: $00
    nop                                           ; $73ea: $00
    nop                                           ; $73eb: $00
    nop                                           ; $73ec: $00
    nop                                           ; $73ed: $00
    nop                                           ; $73ee: $00
    nop                                           ; $73ef: $00
    nop                                           ; $73f0: $00
    nop                                           ; $73f1: $00
    nop                                           ; $73f2: $00
    nop                                           ; $73f3: $00
    nop                                           ; $73f4: $00
    nop                                           ; $73f5: $00
    nop                                           ; $73f6: $00
    nop                                           ; $73f7: $00
    nop                                           ; $73f8: $00
    nop                                           ; $73f9: $00
    nop                                           ; $73fa: $00
    nop                                           ; $73fb: $00
    nop                                           ; $73fc: $00
    nop                                           ; $73fd: $00
    nop                                           ; $73fe: $00
    nop                                           ; $73ff: $00
    nop                                           ; $7400: $00
    nop                                           ; $7401: $00
    nop                                           ; $7402: $00
    nop                                           ; $7403: $00
    nop                                           ; $7404: $00
    nop                                           ; $7405: $00
    nop                                           ; $7406: $00
    nop                                           ; $7407: $00
    nop                                           ; $7408: $00
    nop                                           ; $7409: $00
    nop                                           ; $740a: $00
    nop                                           ; $740b: $00
    nop                                           ; $740c: $00
    nop                                           ; $740d: $00
    nop                                           ; $740e: $00
    nop                                           ; $740f: $00
    nop                                           ; $7410: $00
    nop                                           ; $7411: $00
    nop                                           ; $7412: $00
    nop                                           ; $7413: $00
    nop                                           ; $7414: $00
    nop                                           ; $7415: $00
    nop                                           ; $7416: $00
    nop                                           ; $7417: $00
    nop                                           ; $7418: $00
    nop                                           ; $7419: $00
    nop                                           ; $741a: $00
    nop                                           ; $741b: $00
    nop                                           ; $741c: $00
    nop                                           ; $741d: $00
    nop                                           ; $741e: $00
    nop                                           ; $741f: $00
    nop                                           ; $7420: $00
    nop                                           ; $7421: $00
    nop                                           ; $7422: $00
    nop                                           ; $7423: $00
    nop                                           ; $7424: $00
    nop                                           ; $7425: $00
    nop                                           ; $7426: $00
    nop                                           ; $7427: $00
    nop                                           ; $7428: $00
    nop                                           ; $7429: $00
    nop                                           ; $742a: $00
    nop                                           ; $742b: $00
    nop                                           ; $742c: $00
    nop                                           ; $742d: $00
    nop                                           ; $742e: $00
    nop                                           ; $742f: $00
    nop                                           ; $7430: $00
    nop                                           ; $7431: $00
    nop                                           ; $7432: $00
    nop                                           ; $7433: $00
    nop                                           ; $7434: $00
    nop                                           ; $7435: $00
    nop                                           ; $7436: $00
    nop                                           ; $7437: $00
    nop                                           ; $7438: $00
    nop                                           ; $7439: $00
    nop                                           ; $743a: $00
    nop                                           ; $743b: $00
    nop                                           ; $743c: $00
    nop                                           ; $743d: $00
    nop                                           ; $743e: $00
    nop                                           ; $743f: $00
    nop                                           ; $7440: $00
    nop                                           ; $7441: $00
    nop                                           ; $7442: $00
    nop                                           ; $7443: $00
    nop                                           ; $7444: $00
    nop                                           ; $7445: $00
    nop                                           ; $7446: $00
    nop                                           ; $7447: $00
    nop                                           ; $7448: $00
    nop                                           ; $7449: $00
    nop                                           ; $744a: $00
    nop                                           ; $744b: $00
    nop                                           ; $744c: $00
    nop                                           ; $744d: $00
    nop                                           ; $744e: $00
    nop                                           ; $744f: $00
    nop                                           ; $7450: $00
    nop                                           ; $7451: $00
    nop                                           ; $7452: $00
    nop                                           ; $7453: $00
    nop                                           ; $7454: $00
    nop                                           ; $7455: $00
    nop                                           ; $7456: $00
    nop                                           ; $7457: $00
    nop                                           ; $7458: $00
    nop                                           ; $7459: $00
    nop                                           ; $745a: $00
    nop                                           ; $745b: $00
    nop                                           ; $745c: $00
    nop                                           ; $745d: $00
    nop                                           ; $745e: $00
    nop                                           ; $745f: $00
    nop                                           ; $7460: $00
    nop                                           ; $7461: $00
    nop                                           ; $7462: $00
    nop                                           ; $7463: $00
    nop                                           ; $7464: $00
    nop                                           ; $7465: $00
    nop                                           ; $7466: $00
    nop                                           ; $7467: $00
    nop                                           ; $7468: $00
    nop                                           ; $7469: $00
    nop                                           ; $746a: $00
    nop                                           ; $746b: $00
    nop                                           ; $746c: $00
    nop                                           ; $746d: $00
    nop                                           ; $746e: $00
    nop                                           ; $746f: $00
    nop                                           ; $7470: $00
    nop                                           ; $7471: $00
    nop                                           ; $7472: $00
    nop                                           ; $7473: $00
    nop                                           ; $7474: $00
    nop                                           ; $7475: $00
    nop                                           ; $7476: $00
    nop                                           ; $7477: $00
    nop                                           ; $7478: $00
    nop                                           ; $7479: $00
    nop                                           ; $747a: $00
    nop                                           ; $747b: $00
    nop                                           ; $747c: $00
    nop                                           ; $747d: $00
    nop                                           ; $747e: $00
    nop                                           ; $747f: $00
    nop                                           ; $7480: $00
    nop                                           ; $7481: $00
    nop                                           ; $7482: $00
    nop                                           ; $7483: $00
    nop                                           ; $7484: $00
    nop                                           ; $7485: $00
    nop                                           ; $7486: $00
    nop                                           ; $7487: $00
    nop                                           ; $7488: $00
    nop                                           ; $7489: $00
    nop                                           ; $748a: $00
    nop                                           ; $748b: $00
    nop                                           ; $748c: $00
    nop                                           ; $748d: $00
    nop                                           ; $748e: $00
    nop                                           ; $748f: $00
    nop                                           ; $7490: $00
    nop                                           ; $7491: $00
    nop                                           ; $7492: $00
    nop                                           ; $7493: $00
    nop                                           ; $7494: $00
    nop                                           ; $7495: $00
    nop                                           ; $7496: $00
    nop                                           ; $7497: $00
    nop                                           ; $7498: $00
    nop                                           ; $7499: $00
    nop                                           ; $749a: $00
    nop                                           ; $749b: $00
    nop                                           ; $749c: $00
    nop                                           ; $749d: $00
    nop                                           ; $749e: $00
    nop                                           ; $749f: $00
    nop                                           ; $74a0: $00
    nop                                           ; $74a1: $00
    nop                                           ; $74a2: $00
    nop                                           ; $74a3: $00
    nop                                           ; $74a4: $00
    nop                                           ; $74a5: $00
    nop                                           ; $74a6: $00
    nop                                           ; $74a7: $00
    nop                                           ; $74a8: $00
    nop                                           ; $74a9: $00
    nop                                           ; $74aa: $00
    nop                                           ; $74ab: $00
    nop                                           ; $74ac: $00
    nop                                           ; $74ad: $00
    nop                                           ; $74ae: $00
    nop                                           ; $74af: $00
    nop                                           ; $74b0: $00
    nop                                           ; $74b1: $00
    nop                                           ; $74b2: $00
    nop                                           ; $74b3: $00
    nop                                           ; $74b4: $00
    nop                                           ; $74b5: $00
    nop                                           ; $74b6: $00
    nop                                           ; $74b7: $00
    nop                                           ; $74b8: $00
    nop                                           ; $74b9: $00
    nop                                           ; $74ba: $00
    nop                                           ; $74bb: $00
    nop                                           ; $74bc: $00
    nop                                           ; $74bd: $00
    nop                                           ; $74be: $00
    nop                                           ; $74bf: $00
    nop                                           ; $74c0: $00
    nop                                           ; $74c1: $00
    nop                                           ; $74c2: $00
    nop                                           ; $74c3: $00
    nop                                           ; $74c4: $00
    nop                                           ; $74c5: $00
    nop                                           ; $74c6: $00
    nop                                           ; $74c7: $00
    nop                                           ; $74c8: $00
    nop                                           ; $74c9: $00
    nop                                           ; $74ca: $00
    nop                                           ; $74cb: $00
    nop                                           ; $74cc: $00
    nop                                           ; $74cd: $00
    nop                                           ; $74ce: $00
    nop                                           ; $74cf: $00
    nop                                           ; $74d0: $00
    nop                                           ; $74d1: $00
    nop                                           ; $74d2: $00
    nop                                           ; $74d3: $00
    nop                                           ; $74d4: $00
    nop                                           ; $74d5: $00
    nop                                           ; $74d6: $00
    nop                                           ; $74d7: $00
    nop                                           ; $74d8: $00
    nop                                           ; $74d9: $00
    nop                                           ; $74da: $00
    nop                                           ; $74db: $00
    nop                                           ; $74dc: $00
    nop                                           ; $74dd: $00
    nop                                           ; $74de: $00
    nop                                           ; $74df: $00
    nop                                           ; $74e0: $00
    nop                                           ; $74e1: $00
    nop                                           ; $74e2: $00
    nop                                           ; $74e3: $00
    nop                                           ; $74e4: $00
    nop                                           ; $74e5: $00
    nop                                           ; $74e6: $00
    nop                                           ; $74e7: $00
    nop                                           ; $74e8: $00
    nop                                           ; $74e9: $00
    nop                                           ; $74ea: $00
    nop                                           ; $74eb: $00
    nop                                           ; $74ec: $00
    nop                                           ; $74ed: $00
    nop                                           ; $74ee: $00
    nop                                           ; $74ef: $00
    nop                                           ; $74f0: $00
    nop                                           ; $74f1: $00
    nop                                           ; $74f2: $00
    nop                                           ; $74f3: $00
    nop                                           ; $74f4: $00
    nop                                           ; $74f5: $00
    nop                                           ; $74f6: $00
    nop                                           ; $74f7: $00
    nop                                           ; $74f8: $00
    nop                                           ; $74f9: $00
    nop                                           ; $74fa: $00
    nop                                           ; $74fb: $00
    nop                                           ; $74fc: $00
    nop                                           ; $74fd: $00
    nop                                           ; $74fe: $00
    nop                                           ; $74ff: $00
    nop                                           ; $7500: $00
    nop                                           ; $7501: $00
    nop                                           ; $7502: $00
    nop                                           ; $7503: $00
    nop                                           ; $7504: $00
    nop                                           ; $7505: $00
    nop                                           ; $7506: $00
    nop                                           ; $7507: $00
    nop                                           ; $7508: $00
    nop                                           ; $7509: $00
    nop                                           ; $750a: $00
    nop                                           ; $750b: $00
    nop                                           ; $750c: $00
    nop                                           ; $750d: $00
    nop                                           ; $750e: $00
    nop                                           ; $750f: $00
    nop                                           ; $7510: $00
    nop                                           ; $7511: $00
    nop                                           ; $7512: $00
    nop                                           ; $7513: $00
    nop                                           ; $7514: $00
    nop                                           ; $7515: $00
    nop                                           ; $7516: $00
    nop                                           ; $7517: $00
    nop                                           ; $7518: $00
    nop                                           ; $7519: $00
    nop                                           ; $751a: $00
    nop                                           ; $751b: $00
    nop                                           ; $751c: $00
    nop                                           ; $751d: $00
    nop                                           ; $751e: $00
    nop                                           ; $751f: $00
    nop                                           ; $7520: $00
    nop                                           ; $7521: $00
    nop                                           ; $7522: $00
    nop                                           ; $7523: $00
    nop                                           ; $7524: $00
    nop                                           ; $7525: $00
    nop                                           ; $7526: $00
    nop                                           ; $7527: $00
    nop                                           ; $7528: $00
    nop                                           ; $7529: $00
    nop                                           ; $752a: $00
    nop                                           ; $752b: $00
    nop                                           ; $752c: $00
    nop                                           ; $752d: $00
    nop                                           ; $752e: $00
    nop                                           ; $752f: $00
    nop                                           ; $7530: $00
    nop                                           ; $7531: $00
    nop                                           ; $7532: $00
    nop                                           ; $7533: $00
    nop                                           ; $7534: $00
    nop                                           ; $7535: $00
    nop                                           ; $7536: $00
    nop                                           ; $7537: $00
    nop                                           ; $7538: $00
    nop                                           ; $7539: $00
    nop                                           ; $753a: $00
    nop                                           ; $753b: $00
    nop                                           ; $753c: $00
    nop                                           ; $753d: $00
    nop                                           ; $753e: $00
    nop                                           ; $753f: $00
    nop                                           ; $7540: $00
    nop                                           ; $7541: $00
    nop                                           ; $7542: $00
    nop                                           ; $7543: $00
    nop                                           ; $7544: $00
    nop                                           ; $7545: $00
    nop                                           ; $7546: $00
    nop                                           ; $7547: $00
    nop                                           ; $7548: $00
    nop                                           ; $7549: $00
    nop                                           ; $754a: $00
    nop                                           ; $754b: $00
    nop                                           ; $754c: $00
    nop                                           ; $754d: $00
    nop                                           ; $754e: $00
    nop                                           ; $754f: $00
    nop                                           ; $7550: $00
    nop                                           ; $7551: $00
    nop                                           ; $7552: $00
    nop                                           ; $7553: $00
    nop                                           ; $7554: $00
    nop                                           ; $7555: $00
    nop                                           ; $7556: $00
    nop                                           ; $7557: $00
    nop                                           ; $7558: $00
    nop                                           ; $7559: $00
    nop                                           ; $755a: $00
    nop                                           ; $755b: $00
    nop                                           ; $755c: $00
    nop                                           ; $755d: $00
    nop                                           ; $755e: $00
    nop                                           ; $755f: $00
    nop                                           ; $7560: $00
    nop                                           ; $7561: $00
    nop                                           ; $7562: $00
    nop                                           ; $7563: $00
    nop                                           ; $7564: $00
    nop                                           ; $7565: $00
    nop                                           ; $7566: $00
    nop                                           ; $7567: $00
    nop                                           ; $7568: $00
    nop                                           ; $7569: $00
    nop                                           ; $756a: $00
    nop                                           ; $756b: $00
    nop                                           ; $756c: $00
    nop                                           ; $756d: $00
    nop                                           ; $756e: $00
    nop                                           ; $756f: $00
    nop                                           ; $7570: $00
    nop                                           ; $7571: $00
    nop                                           ; $7572: $00
    nop                                           ; $7573: $00
    nop                                           ; $7574: $00
    nop                                           ; $7575: $00
    nop                                           ; $7576: $00
    nop                                           ; $7577: $00
    nop                                           ; $7578: $00
    nop                                           ; $7579: $00
    nop                                           ; $757a: $00
    nop                                           ; $757b: $00
    nop                                           ; $757c: $00
    nop                                           ; $757d: $00
    nop                                           ; $757e: $00
    nop                                           ; $757f: $00
    nop                                           ; $7580: $00
    nop                                           ; $7581: $00
    nop                                           ; $7582: $00
    nop                                           ; $7583: $00
    nop                                           ; $7584: $00
    nop                                           ; $7585: $00
    nop                                           ; $7586: $00
    nop                                           ; $7587: $00
    nop                                           ; $7588: $00
    nop                                           ; $7589: $00
    nop                                           ; $758a: $00
    nop                                           ; $758b: $00
    nop                                           ; $758c: $00
    nop                                           ; $758d: $00
    nop                                           ; $758e: $00
    nop                                           ; $758f: $00
    nop                                           ; $7590: $00
    nop                                           ; $7591: $00
    nop                                           ; $7592: $00
    nop                                           ; $7593: $00
    nop                                           ; $7594: $00
    nop                                           ; $7595: $00
    nop                                           ; $7596: $00
    nop                                           ; $7597: $00
    nop                                           ; $7598: $00
    nop                                           ; $7599: $00
    nop                                           ; $759a: $00
    nop                                           ; $759b: $00
    nop                                           ; $759c: $00
    nop                                           ; $759d: $00
    nop                                           ; $759e: $00
    nop                                           ; $759f: $00
    nop                                           ; $75a0: $00
    nop                                           ; $75a1: $00
    nop                                           ; $75a2: $00
    nop                                           ; $75a3: $00
    nop                                           ; $75a4: $00
    nop                                           ; $75a5: $00
    nop                                           ; $75a6: $00
    nop                                           ; $75a7: $00
    nop                                           ; $75a8: $00
    nop                                           ; $75a9: $00
    nop                                           ; $75aa: $00
    nop                                           ; $75ab: $00
    nop                                           ; $75ac: $00
    nop                                           ; $75ad: $00
    nop                                           ; $75ae: $00
    nop                                           ; $75af: $00
    nop                                           ; $75b0: $00
    nop                                           ; $75b1: $00
    nop                                           ; $75b2: $00
    nop                                           ; $75b3: $00
    nop                                           ; $75b4: $00
    nop                                           ; $75b5: $00
    nop                                           ; $75b6: $00
    nop                                           ; $75b7: $00
    nop                                           ; $75b8: $00
    nop                                           ; $75b9: $00
    nop                                           ; $75ba: $00
    nop                                           ; $75bb: $00
    nop                                           ; $75bc: $00
    nop                                           ; $75bd: $00
    nop                                           ; $75be: $00
    nop                                           ; $75bf: $00
    nop                                           ; $75c0: $00
    nop                                           ; $75c1: $00
    nop                                           ; $75c2: $00
    nop                                           ; $75c3: $00
    nop                                           ; $75c4: $00
    nop                                           ; $75c5: $00
    nop                                           ; $75c6: $00
    nop                                           ; $75c7: $00
    nop                                           ; $75c8: $00
    nop                                           ; $75c9: $00
    nop                                           ; $75ca: $00
    nop                                           ; $75cb: $00
    nop                                           ; $75cc: $00
    nop                                           ; $75cd: $00
    nop                                           ; $75ce: $00
    nop                                           ; $75cf: $00
    nop                                           ; $75d0: $00
    nop                                           ; $75d1: $00
    nop                                           ; $75d2: $00
    nop                                           ; $75d3: $00
    nop                                           ; $75d4: $00
    nop                                           ; $75d5: $00
    nop                                           ; $75d6: $00
    nop                                           ; $75d7: $00
    nop                                           ; $75d8: $00
    nop                                           ; $75d9: $00
    nop                                           ; $75da: $00
    nop                                           ; $75db: $00
    nop                                           ; $75dc: $00
    nop                                           ; $75dd: $00
    nop                                           ; $75de: $00
    nop                                           ; $75df: $00
    nop                                           ; $75e0: $00
    nop                                           ; $75e1: $00
    nop                                           ; $75e2: $00
    nop                                           ; $75e3: $00
    nop                                           ; $75e4: $00
    nop                                           ; $75e5: $00
    nop                                           ; $75e6: $00
    nop                                           ; $75e7: $00
    nop                                           ; $75e8: $00
    nop                                           ; $75e9: $00
    nop                                           ; $75ea: $00
    nop                                           ; $75eb: $00
    nop                                           ; $75ec: $00
    nop                                           ; $75ed: $00
    nop                                           ; $75ee: $00
    nop                                           ; $75ef: $00
    nop                                           ; $75f0: $00
    nop                                           ; $75f1: $00
    nop                                           ; $75f2: $00
    nop                                           ; $75f3: $00
    nop                                           ; $75f4: $00
    nop                                           ; $75f5: $00
    nop                                           ; $75f6: $00
    nop                                           ; $75f7: $00
    nop                                           ; $75f8: $00
    nop                                           ; $75f9: $00
    nop                                           ; $75fa: $00
    nop                                           ; $75fb: $00
    nop                                           ; $75fc: $00
    nop                                           ; $75fd: $00
    nop                                           ; $75fe: $00
    nop                                           ; $75ff: $00
    nop                                           ; $7600: $00
    nop                                           ; $7601: $00
    nop                                           ; $7602: $00
    nop                                           ; $7603: $00
    nop                                           ; $7604: $00
    nop                                           ; $7605: $00
    nop                                           ; $7606: $00
    nop                                           ; $7607: $00
    nop                                           ; $7608: $00
    nop                                           ; $7609: $00
    nop                                           ; $760a: $00
    nop                                           ; $760b: $00
    nop                                           ; $760c: $00
    nop                                           ; $760d: $00
    nop                                           ; $760e: $00
    nop                                           ; $760f: $00
    nop                                           ; $7610: $00
    nop                                           ; $7611: $00
    nop                                           ; $7612: $00
    nop                                           ; $7613: $00
    nop                                           ; $7614: $00
    nop                                           ; $7615: $00
    nop                                           ; $7616: $00
    nop                                           ; $7617: $00
    nop                                           ; $7618: $00
    nop                                           ; $7619: $00
    nop                                           ; $761a: $00
    nop                                           ; $761b: $00
    nop                                           ; $761c: $00
    nop                                           ; $761d: $00
    nop                                           ; $761e: $00
    nop                                           ; $761f: $00
    nop                                           ; $7620: $00
    nop                                           ; $7621: $00
    nop                                           ; $7622: $00
    nop                                           ; $7623: $00
    nop                                           ; $7624: $00
    nop                                           ; $7625: $00
    nop                                           ; $7626: $00
    nop                                           ; $7627: $00
    nop                                           ; $7628: $00
    nop                                           ; $7629: $00
    nop                                           ; $762a: $00
    nop                                           ; $762b: $00
    nop                                           ; $762c: $00
    nop                                           ; $762d: $00
    nop                                           ; $762e: $00
    nop                                           ; $762f: $00
    nop                                           ; $7630: $00
    nop                                           ; $7631: $00
    nop                                           ; $7632: $00
    nop                                           ; $7633: $00
    nop                                           ; $7634: $00
    nop                                           ; $7635: $00
    nop                                           ; $7636: $00
    nop                                           ; $7637: $00
    nop                                           ; $7638: $00
    nop                                           ; $7639: $00
    nop                                           ; $763a: $00
    nop                                           ; $763b: $00
    nop                                           ; $763c: $00
    nop                                           ; $763d: $00
    nop                                           ; $763e: $00
    nop                                           ; $763f: $00
    nop                                           ; $7640: $00
    nop                                           ; $7641: $00
    nop                                           ; $7642: $00
    nop                                           ; $7643: $00
    nop                                           ; $7644: $00
    nop                                           ; $7645: $00
    nop                                           ; $7646: $00
    nop                                           ; $7647: $00
    nop                                           ; $7648: $00
    nop                                           ; $7649: $00
    nop                                           ; $764a: $00
    nop                                           ; $764b: $00
    nop                                           ; $764c: $00
    nop                                           ; $764d: $00
    nop                                           ; $764e: $00
    nop                                           ; $764f: $00
    nop                                           ; $7650: $00
    nop                                           ; $7651: $00
    nop                                           ; $7652: $00
    nop                                           ; $7653: $00
    nop                                           ; $7654: $00
    nop                                           ; $7655: $00
    nop                                           ; $7656: $00
    nop                                           ; $7657: $00
    nop                                           ; $7658: $00
    nop                                           ; $7659: $00
    nop                                           ; $765a: $00
    nop                                           ; $765b: $00
    nop                                           ; $765c: $00
    nop                                           ; $765d: $00
    nop                                           ; $765e: $00
    nop                                           ; $765f: $00
    nop                                           ; $7660: $00
    nop                                           ; $7661: $00
    nop                                           ; $7662: $00
    nop                                           ; $7663: $00
    nop                                           ; $7664: $00
    nop                                           ; $7665: $00
    nop                                           ; $7666: $00
    nop                                           ; $7667: $00
    nop                                           ; $7668: $00
    nop                                           ; $7669: $00
    nop                                           ; $766a: $00
    nop                                           ; $766b: $00
    nop                                           ; $766c: $00
    nop                                           ; $766d: $00
    nop                                           ; $766e: $00
    nop                                           ; $766f: $00
    nop                                           ; $7670: $00
    nop                                           ; $7671: $00
    nop                                           ; $7672: $00
    nop                                           ; $7673: $00
    nop                                           ; $7674: $00
    nop                                           ; $7675: $00
    nop                                           ; $7676: $00
    nop                                           ; $7677: $00
    nop                                           ; $7678: $00
    nop                                           ; $7679: $00
    nop                                           ; $767a: $00
    nop                                           ; $767b: $00
    nop                                           ; $767c: $00
    nop                                           ; $767d: $00
    nop                                           ; $767e: $00
    nop                                           ; $767f: $00
    nop                                           ; $7680: $00
    nop                                           ; $7681: $00
    nop                                           ; $7682: $00
    nop                                           ; $7683: $00
    nop                                           ; $7684: $00
    nop                                           ; $7685: $00
    nop                                           ; $7686: $00
    nop                                           ; $7687: $00
    nop                                           ; $7688: $00
    nop                                           ; $7689: $00
    nop                                           ; $768a: $00
    nop                                           ; $768b: $00
    nop                                           ; $768c: $00
    nop                                           ; $768d: $00
    nop                                           ; $768e: $00
    nop                                           ; $768f: $00
    nop                                           ; $7690: $00
    nop                                           ; $7691: $00
    nop                                           ; $7692: $00
    nop                                           ; $7693: $00
    nop                                           ; $7694: $00
    nop                                           ; $7695: $00
    nop                                           ; $7696: $00
    nop                                           ; $7697: $00
    nop                                           ; $7698: $00
    nop                                           ; $7699: $00
    nop                                           ; $769a: $00
    nop                                           ; $769b: $00
    nop                                           ; $769c: $00
    nop                                           ; $769d: $00
    nop                                           ; $769e: $00
    nop                                           ; $769f: $00
    nop                                           ; $76a0: $00
    nop                                           ; $76a1: $00
    nop                                           ; $76a2: $00
    nop                                           ; $76a3: $00
    nop                                           ; $76a4: $00
    nop                                           ; $76a5: $00
    nop                                           ; $76a6: $00
    nop                                           ; $76a7: $00
    nop                                           ; $76a8: $00
    nop                                           ; $76a9: $00
    nop                                           ; $76aa: $00
    nop                                           ; $76ab: $00
    nop                                           ; $76ac: $00
    nop                                           ; $76ad: $00
    nop                                           ; $76ae: $00
    nop                                           ; $76af: $00
    nop                                           ; $76b0: $00
    nop                                           ; $76b1: $00
    nop                                           ; $76b2: $00
    nop                                           ; $76b3: $00
    nop                                           ; $76b4: $00
    nop                                           ; $76b5: $00
    nop                                           ; $76b6: $00
    nop                                           ; $76b7: $00
    nop                                           ; $76b8: $00
    nop                                           ; $76b9: $00
    nop                                           ; $76ba: $00
    nop                                           ; $76bb: $00
    nop                                           ; $76bc: $00
    nop                                           ; $76bd: $00
    nop                                           ; $76be: $00
    nop                                           ; $76bf: $00
    nop                                           ; $76c0: $00
    nop                                           ; $76c1: $00
    nop                                           ; $76c2: $00
    nop                                           ; $76c3: $00
    nop                                           ; $76c4: $00
    nop                                           ; $76c5: $00
    nop                                           ; $76c6: $00
    nop                                           ; $76c7: $00
    nop                                           ; $76c8: $00
    nop                                           ; $76c9: $00
    nop                                           ; $76ca: $00
    nop                                           ; $76cb: $00
    nop                                           ; $76cc: $00
    nop                                           ; $76cd: $00
    nop                                           ; $76ce: $00
    nop                                           ; $76cf: $00
    nop                                           ; $76d0: $00
    nop                                           ; $76d1: $00
    nop                                           ; $76d2: $00
    nop                                           ; $76d3: $00
    nop                                           ; $76d4: $00
    nop                                           ; $76d5: $00
    nop                                           ; $76d6: $00
    nop                                           ; $76d7: $00
    nop                                           ; $76d8: $00
    nop                                           ; $76d9: $00
    nop                                           ; $76da: $00
    nop                                           ; $76db: $00
    nop                                           ; $76dc: $00
    nop                                           ; $76dd: $00
    nop                                           ; $76de: $00
    nop                                           ; $76df: $00
    nop                                           ; $76e0: $00
    nop                                           ; $76e1: $00
    nop                                           ; $76e2: $00
    nop                                           ; $76e3: $00
    nop                                           ; $76e4: $00
    nop                                           ; $76e5: $00
    nop                                           ; $76e6: $00
    nop                                           ; $76e7: $00
    nop                                           ; $76e8: $00
    nop                                           ; $76e9: $00
    nop                                           ; $76ea: $00
    nop                                           ; $76eb: $00
    nop                                           ; $76ec: $00
    nop                                           ; $76ed: $00
    nop                                           ; $76ee: $00
    nop                                           ; $76ef: $00
    nop                                           ; $76f0: $00
    nop                                           ; $76f1: $00
    nop                                           ; $76f2: $00
    nop                                           ; $76f3: $00
    nop                                           ; $76f4: $00
    nop                                           ; $76f5: $00
    nop                                           ; $76f6: $00
    nop                                           ; $76f7: $00
    nop                                           ; $76f8: $00
    nop                                           ; $76f9: $00
    nop                                           ; $76fa: $00
    nop                                           ; $76fb: $00
    nop                                           ; $76fc: $00
    nop                                           ; $76fd: $00
    nop                                           ; $76fe: $00
    nop                                           ; $76ff: $00
    nop                                           ; $7700: $00
    nop                                           ; $7701: $00
    nop                                           ; $7702: $00
    nop                                           ; $7703: $00
    nop                                           ; $7704: $00
    nop                                           ; $7705: $00
    nop                                           ; $7706: $00
    nop                                           ; $7707: $00
    nop                                           ; $7708: $00
    nop                                           ; $7709: $00
    nop                                           ; $770a: $00
    nop                                           ; $770b: $00
    nop                                           ; $770c: $00
    nop                                           ; $770d: $00
    nop                                           ; $770e: $00
    nop                                           ; $770f: $00
    nop                                           ; $7710: $00
    nop                                           ; $7711: $00
    nop                                           ; $7712: $00
    nop                                           ; $7713: $00
    nop                                           ; $7714: $00
    nop                                           ; $7715: $00
    nop                                           ; $7716: $00
    nop                                           ; $7717: $00
    nop                                           ; $7718: $00
    nop                                           ; $7719: $00
    nop                                           ; $771a: $00
    nop                                           ; $771b: $00
    nop                                           ; $771c: $00
    nop                                           ; $771d: $00
    nop                                           ; $771e: $00
    nop                                           ; $771f: $00
    nop                                           ; $7720: $00
    nop                                           ; $7721: $00
    nop                                           ; $7722: $00
    nop                                           ; $7723: $00
    nop                                           ; $7724: $00
    nop                                           ; $7725: $00
    nop                                           ; $7726: $00
    nop                                           ; $7727: $00
    nop                                           ; $7728: $00
    nop                                           ; $7729: $00
    nop                                           ; $772a: $00
    nop                                           ; $772b: $00
    nop                                           ; $772c: $00
    nop                                           ; $772d: $00
    nop                                           ; $772e: $00
    nop                                           ; $772f: $00
    nop                                           ; $7730: $00
    nop                                           ; $7731: $00
    nop                                           ; $7732: $00
    nop                                           ; $7733: $00
    nop                                           ; $7734: $00
    nop                                           ; $7735: $00
    nop                                           ; $7736: $00
    nop                                           ; $7737: $00
    nop                                           ; $7738: $00
    nop                                           ; $7739: $00
    nop                                           ; $773a: $00
    nop                                           ; $773b: $00
    nop                                           ; $773c: $00
    nop                                           ; $773d: $00
    nop                                           ; $773e: $00
    nop                                           ; $773f: $00
    nop                                           ; $7740: $00
    nop                                           ; $7741: $00
    nop                                           ; $7742: $00
    nop                                           ; $7743: $00
    nop                                           ; $7744: $00
    nop                                           ; $7745: $00
    nop                                           ; $7746: $00
    nop                                           ; $7747: $00
    nop                                           ; $7748: $00
    nop                                           ; $7749: $00
    nop                                           ; $774a: $00
    nop                                           ; $774b: $00
    nop                                           ; $774c: $00
    nop                                           ; $774d: $00
    nop                                           ; $774e: $00
    nop                                           ; $774f: $00
    nop                                           ; $7750: $00
    nop                                           ; $7751: $00
    nop                                           ; $7752: $00
    nop                                           ; $7753: $00
    nop                                           ; $7754: $00
    nop                                           ; $7755: $00
    nop                                           ; $7756: $00
    nop                                           ; $7757: $00
    nop                                           ; $7758: $00
    nop                                           ; $7759: $00
    nop                                           ; $775a: $00
    nop                                           ; $775b: $00
    nop                                           ; $775c: $00
    nop                                           ; $775d: $00
    nop                                           ; $775e: $00
    nop                                           ; $775f: $00
    nop                                           ; $7760: $00
    nop                                           ; $7761: $00
    nop                                           ; $7762: $00
    nop                                           ; $7763: $00
    nop                                           ; $7764: $00
    nop                                           ; $7765: $00
    nop                                           ; $7766: $00
    nop                                           ; $7767: $00
    nop                                           ; $7768: $00
    nop                                           ; $7769: $00
    nop                                           ; $776a: $00
    nop                                           ; $776b: $00
    nop                                           ; $776c: $00
    nop                                           ; $776d: $00
    nop                                           ; $776e: $00
    nop                                           ; $776f: $00
    nop                                           ; $7770: $00
    nop                                           ; $7771: $00
    nop                                           ; $7772: $00
    nop                                           ; $7773: $00
    nop                                           ; $7774: $00
    nop                                           ; $7775: $00
    nop                                           ; $7776: $00
    nop                                           ; $7777: $00
    nop                                           ; $7778: $00
    nop                                           ; $7779: $00
    nop                                           ; $777a: $00
    nop                                           ; $777b: $00
    nop                                           ; $777c: $00
    nop                                           ; $777d: $00
    nop                                           ; $777e: $00
    nop                                           ; $777f: $00
    nop                                           ; $7780: $00
    nop                                           ; $7781: $00
    nop                                           ; $7782: $00
    nop                                           ; $7783: $00
    nop                                           ; $7784: $00
    nop                                           ; $7785: $00
    nop                                           ; $7786: $00
    nop                                           ; $7787: $00
    nop                                           ; $7788: $00
    nop                                           ; $7789: $00
    nop                                           ; $778a: $00
    nop                                           ; $778b: $00
    nop                                           ; $778c: $00
    nop                                           ; $778d: $00
    nop                                           ; $778e: $00
    nop                                           ; $778f: $00
    nop                                           ; $7790: $00
    nop                                           ; $7791: $00
    nop                                           ; $7792: $00
    nop                                           ; $7793: $00
    nop                                           ; $7794: $00
    nop                                           ; $7795: $00
    nop                                           ; $7796: $00
    nop                                           ; $7797: $00
    nop                                           ; $7798: $00
    nop                                           ; $7799: $00
    nop                                           ; $779a: $00
    nop                                           ; $779b: $00
    nop                                           ; $779c: $00
    nop                                           ; $779d: $00
    nop                                           ; $779e: $00
    nop                                           ; $779f: $00
    nop                                           ; $77a0: $00
    nop                                           ; $77a1: $00
    nop                                           ; $77a2: $00
    nop                                           ; $77a3: $00
    nop                                           ; $77a4: $00
    nop                                           ; $77a5: $00
    nop                                           ; $77a6: $00
    nop                                           ; $77a7: $00
    nop                                           ; $77a8: $00
    nop                                           ; $77a9: $00
    nop                                           ; $77aa: $00
    nop                                           ; $77ab: $00
    nop                                           ; $77ac: $00
    nop                                           ; $77ad: $00
    nop                                           ; $77ae: $00
    nop                                           ; $77af: $00
    nop                                           ; $77b0: $00
    nop                                           ; $77b1: $00
    nop                                           ; $77b2: $00
    nop                                           ; $77b3: $00
    nop                                           ; $77b4: $00
    nop                                           ; $77b5: $00
    nop                                           ; $77b6: $00
    nop                                           ; $77b7: $00
    nop                                           ; $77b8: $00
    nop                                           ; $77b9: $00
    nop                                           ; $77ba: $00
    nop                                           ; $77bb: $00
    nop                                           ; $77bc: $00
    nop                                           ; $77bd: $00
    nop                                           ; $77be: $00
    nop                                           ; $77bf: $00
    nop                                           ; $77c0: $00
    nop                                           ; $77c1: $00
    nop                                           ; $77c2: $00
    nop                                           ; $77c3: $00
    nop                                           ; $77c4: $00
    nop                                           ; $77c5: $00
    nop                                           ; $77c6: $00
    nop                                           ; $77c7: $00
    nop                                           ; $77c8: $00
    nop                                           ; $77c9: $00
    nop                                           ; $77ca: $00
    nop                                           ; $77cb: $00
    nop                                           ; $77cc: $00
    nop                                           ; $77cd: $00
    nop                                           ; $77ce: $00
    nop                                           ; $77cf: $00
    nop                                           ; $77d0: $00
    nop                                           ; $77d1: $00
    nop                                           ; $77d2: $00
    nop                                           ; $77d3: $00
    nop                                           ; $77d4: $00
    nop                                           ; $77d5: $00
    nop                                           ; $77d6: $00
    nop                                           ; $77d7: $00
    nop                                           ; $77d8: $00
    nop                                           ; $77d9: $00
    nop                                           ; $77da: $00
    nop                                           ; $77db: $00
    nop                                           ; $77dc: $00
    nop                                           ; $77dd: $00
    nop                                           ; $77de: $00
    nop                                           ; $77df: $00
    nop                                           ; $77e0: $00
    nop                                           ; $77e1: $00
    nop                                           ; $77e2: $00
    nop                                           ; $77e3: $00
    nop                                           ; $77e4: $00
    nop                                           ; $77e5: $00
    nop                                           ; $77e6: $00
    nop                                           ; $77e7: $00
    nop                                           ; $77e8: $00
    nop                                           ; $77e9: $00
    nop                                           ; $77ea: $00
    nop                                           ; $77eb: $00
    nop                                           ; $77ec: $00
    nop                                           ; $77ed: $00
    nop                                           ; $77ee: $00
    nop                                           ; $77ef: $00
    nop                                           ; $77f0: $00
    nop                                           ; $77f1: $00
    nop                                           ; $77f2: $00
    nop                                           ; $77f3: $00
    nop                                           ; $77f4: $00
    nop                                           ; $77f5: $00
    nop                                           ; $77f6: $00
    nop                                           ; $77f7: $00
    nop                                           ; $77f8: $00
    nop                                           ; $77f9: $00
    nop                                           ; $77fa: $00
    nop                                           ; $77fb: $00
    nop                                           ; $77fc: $00
    nop                                           ; $77fd: $00
    nop                                           ; $77fe: $00
    nop                                           ; $77ff: $00
    nop                                           ; $7800: $00
    nop                                           ; $7801: $00
    nop                                           ; $7802: $00
    nop                                           ; $7803: $00
    nop                                           ; $7804: $00
    nop                                           ; $7805: $00
    nop                                           ; $7806: $00
    nop                                           ; $7807: $00
    nop                                           ; $7808: $00
    nop                                           ; $7809: $00
    nop                                           ; $780a: $00
    nop                                           ; $780b: $00
    nop                                           ; $780c: $00
    nop                                           ; $780d: $00
    nop                                           ; $780e: $00
    nop                                           ; $780f: $00
    nop                                           ; $7810: $00
    nop                                           ; $7811: $00
    nop                                           ; $7812: $00
    nop                                           ; $7813: $00
    nop                                           ; $7814: $00
    nop                                           ; $7815: $00
    nop                                           ; $7816: $00
    nop                                           ; $7817: $00
    nop                                           ; $7818: $00
    nop                                           ; $7819: $00
    nop                                           ; $781a: $00
    nop                                           ; $781b: $00
    nop                                           ; $781c: $00
    nop                                           ; $781d: $00
    nop                                           ; $781e: $00
    nop                                           ; $781f: $00
    nop                                           ; $7820: $00
    nop                                           ; $7821: $00
    nop                                           ; $7822: $00
    nop                                           ; $7823: $00
    nop                                           ; $7824: $00
    nop                                           ; $7825: $00
    nop                                           ; $7826: $00
    nop                                           ; $7827: $00
    nop                                           ; $7828: $00
    nop                                           ; $7829: $00
    nop                                           ; $782a: $00
    nop                                           ; $782b: $00
    nop                                           ; $782c: $00
    nop                                           ; $782d: $00
    nop                                           ; $782e: $00
    nop                                           ; $782f: $00
    nop                                           ; $7830: $00
    nop                                           ; $7831: $00
    nop                                           ; $7832: $00
    nop                                           ; $7833: $00
    nop                                           ; $7834: $00
    nop                                           ; $7835: $00
    nop                                           ; $7836: $00
    nop                                           ; $7837: $00
    nop                                           ; $7838: $00
    nop                                           ; $7839: $00
    nop                                           ; $783a: $00
    nop                                           ; $783b: $00
    nop                                           ; $783c: $00
    nop                                           ; $783d: $00
    nop                                           ; $783e: $00
    nop                                           ; $783f: $00
    nop                                           ; $7840: $00
    nop                                           ; $7841: $00
    nop                                           ; $7842: $00
    nop                                           ; $7843: $00
    nop                                           ; $7844: $00
    nop                                           ; $7845: $00
    nop                                           ; $7846: $00
    nop                                           ; $7847: $00
    nop                                           ; $7848: $00
    nop                                           ; $7849: $00
    nop                                           ; $784a: $00
    nop                                           ; $784b: $00
    nop                                           ; $784c: $00
    nop                                           ; $784d: $00
    nop                                           ; $784e: $00
    nop                                           ; $784f: $00
    nop                                           ; $7850: $00
    nop                                           ; $7851: $00
    nop                                           ; $7852: $00
    nop                                           ; $7853: $00
    nop                                           ; $7854: $00
    nop                                           ; $7855: $00
    nop                                           ; $7856: $00
    nop                                           ; $7857: $00
    nop                                           ; $7858: $00
    nop                                           ; $7859: $00
    nop                                           ; $785a: $00
    nop                                           ; $785b: $00
    nop                                           ; $785c: $00
    nop                                           ; $785d: $00
    nop                                           ; $785e: $00
    nop                                           ; $785f: $00
    nop                                           ; $7860: $00
    nop                                           ; $7861: $00
    nop                                           ; $7862: $00
    nop                                           ; $7863: $00
    nop                                           ; $7864: $00
    nop                                           ; $7865: $00
    nop                                           ; $7866: $00
    nop                                           ; $7867: $00
    nop                                           ; $7868: $00
    nop                                           ; $7869: $00
    nop                                           ; $786a: $00
    nop                                           ; $786b: $00
    nop                                           ; $786c: $00
    nop                                           ; $786d: $00
    nop                                           ; $786e: $00
    nop                                           ; $786f: $00
    nop                                           ; $7870: $00
    nop                                           ; $7871: $00
    nop                                           ; $7872: $00
    nop                                           ; $7873: $00
    nop                                           ; $7874: $00
    nop                                           ; $7875: $00
    nop                                           ; $7876: $00
    nop                                           ; $7877: $00
    nop                                           ; $7878: $00
    nop                                           ; $7879: $00
    nop                                           ; $787a: $00
    nop                                           ; $787b: $00
    nop                                           ; $787c: $00
    nop                                           ; $787d: $00
    nop                                           ; $787e: $00
    nop                                           ; $787f: $00
    nop                                           ; $7880: $00
    nop                                           ; $7881: $00
    nop                                           ; $7882: $00
    nop                                           ; $7883: $00
    nop                                           ; $7884: $00
    nop                                           ; $7885: $00
    nop                                           ; $7886: $00
    nop                                           ; $7887: $00
    nop                                           ; $7888: $00
    nop                                           ; $7889: $00
    nop                                           ; $788a: $00
    nop                                           ; $788b: $00
    nop                                           ; $788c: $00
    nop                                           ; $788d: $00
    nop                                           ; $788e: $00
    nop                                           ; $788f: $00
    nop                                           ; $7890: $00
    nop                                           ; $7891: $00
    nop                                           ; $7892: $00
    nop                                           ; $7893: $00
    nop                                           ; $7894: $00
    nop                                           ; $7895: $00
    nop                                           ; $7896: $00
    nop                                           ; $7897: $00
    nop                                           ; $7898: $00
    nop                                           ; $7899: $00
    nop                                           ; $789a: $00
    nop                                           ; $789b: $00
    nop                                           ; $789c: $00
    nop                                           ; $789d: $00
    nop                                           ; $789e: $00
    nop                                           ; $789f: $00
    nop                                           ; $78a0: $00
    nop                                           ; $78a1: $00
    nop                                           ; $78a2: $00
    nop                                           ; $78a3: $00
    nop                                           ; $78a4: $00
    nop                                           ; $78a5: $00
    nop                                           ; $78a6: $00
    nop                                           ; $78a7: $00
    nop                                           ; $78a8: $00
    nop                                           ; $78a9: $00
    nop                                           ; $78aa: $00
    nop                                           ; $78ab: $00
    nop                                           ; $78ac: $00
    nop                                           ; $78ad: $00
    nop                                           ; $78ae: $00
    nop                                           ; $78af: $00
    nop                                           ; $78b0: $00
    nop                                           ; $78b1: $00
    nop                                           ; $78b2: $00
    nop                                           ; $78b3: $00
    nop                                           ; $78b4: $00
    nop                                           ; $78b5: $00
    nop                                           ; $78b6: $00
    nop                                           ; $78b7: $00
    nop                                           ; $78b8: $00
    nop                                           ; $78b9: $00
    nop                                           ; $78ba: $00
    nop                                           ; $78bb: $00
    nop                                           ; $78bc: $00
    nop                                           ; $78bd: $00
    nop                                           ; $78be: $00
    nop                                           ; $78bf: $00
    nop                                           ; $78c0: $00
    nop                                           ; $78c1: $00
    nop                                           ; $78c2: $00
    nop                                           ; $78c3: $00
    nop                                           ; $78c4: $00
    nop                                           ; $78c5: $00
    nop                                           ; $78c6: $00
    nop                                           ; $78c7: $00
    nop                                           ; $78c8: $00
    nop                                           ; $78c9: $00
    nop                                           ; $78ca: $00
    nop                                           ; $78cb: $00
    nop                                           ; $78cc: $00
    nop                                           ; $78cd: $00
    nop                                           ; $78ce: $00
    nop                                           ; $78cf: $00
    nop                                           ; $78d0: $00
    nop                                           ; $78d1: $00
    nop                                           ; $78d2: $00
    nop                                           ; $78d3: $00
    nop                                           ; $78d4: $00
    nop                                           ; $78d5: $00
    nop                                           ; $78d6: $00
    nop                                           ; $78d7: $00
    nop                                           ; $78d8: $00
    nop                                           ; $78d9: $00
    nop                                           ; $78da: $00
    nop                                           ; $78db: $00
    nop                                           ; $78dc: $00
    nop                                           ; $78dd: $00
    nop                                           ; $78de: $00
    nop                                           ; $78df: $00
    nop                                           ; $78e0: $00
    nop                                           ; $78e1: $00
    nop                                           ; $78e2: $00
    nop                                           ; $78e3: $00
    nop                                           ; $78e4: $00
    nop                                           ; $78e5: $00
    nop                                           ; $78e6: $00
    nop                                           ; $78e7: $00
    nop                                           ; $78e8: $00
    nop                                           ; $78e9: $00
    nop                                           ; $78ea: $00
    nop                                           ; $78eb: $00
    nop                                           ; $78ec: $00
    nop                                           ; $78ed: $00
    nop                                           ; $78ee: $00
    nop                                           ; $78ef: $00
    nop                                           ; $78f0: $00
    nop                                           ; $78f1: $00
    nop                                           ; $78f2: $00
    nop                                           ; $78f3: $00
    nop                                           ; $78f4: $00
    nop                                           ; $78f5: $00
    nop                                           ; $78f6: $00
    nop                                           ; $78f7: $00
    nop                                           ; $78f8: $00
    nop                                           ; $78f9: $00
    nop                                           ; $78fa: $00
    nop                                           ; $78fb: $00
    nop                                           ; $78fc: $00
    nop                                           ; $78fd: $00
    nop                                           ; $78fe: $00
    nop                                           ; $78ff: $00
    nop                                           ; $7900: $00
    nop                                           ; $7901: $00
    nop                                           ; $7902: $00
    nop                                           ; $7903: $00
    nop                                           ; $7904: $00
    nop                                           ; $7905: $00
    nop                                           ; $7906: $00
    nop                                           ; $7907: $00
    nop                                           ; $7908: $00
    nop                                           ; $7909: $00
    nop                                           ; $790a: $00
    nop                                           ; $790b: $00
    nop                                           ; $790c: $00
    nop                                           ; $790d: $00
    nop                                           ; $790e: $00
    nop                                           ; $790f: $00
    nop                                           ; $7910: $00
    nop                                           ; $7911: $00
    nop                                           ; $7912: $00
    nop                                           ; $7913: $00
    nop                                           ; $7914: $00
    nop                                           ; $7915: $00
    nop                                           ; $7916: $00
    nop                                           ; $7917: $00
    nop                                           ; $7918: $00
    nop                                           ; $7919: $00
    nop                                           ; $791a: $00
    nop                                           ; $791b: $00
    nop                                           ; $791c: $00
    nop                                           ; $791d: $00
    nop                                           ; $791e: $00
    nop                                           ; $791f: $00
    nop                                           ; $7920: $00
    nop                                           ; $7921: $00
    nop                                           ; $7922: $00
    nop                                           ; $7923: $00
    nop                                           ; $7924: $00
    nop                                           ; $7925: $00
    nop                                           ; $7926: $00
    nop                                           ; $7927: $00
    nop                                           ; $7928: $00
    nop                                           ; $7929: $00
    nop                                           ; $792a: $00
    nop                                           ; $792b: $00
    nop                                           ; $792c: $00
    nop                                           ; $792d: $00
    nop                                           ; $792e: $00
    nop                                           ; $792f: $00
    nop                                           ; $7930: $00
    nop                                           ; $7931: $00
    nop                                           ; $7932: $00
    nop                                           ; $7933: $00
    nop                                           ; $7934: $00
    nop                                           ; $7935: $00
    nop                                           ; $7936: $00
    nop                                           ; $7937: $00
    nop                                           ; $7938: $00
    nop                                           ; $7939: $00
    nop                                           ; $793a: $00
    nop                                           ; $793b: $00
    nop                                           ; $793c: $00
    nop                                           ; $793d: $00
    nop                                           ; $793e: $00
    nop                                           ; $793f: $00
    nop                                           ; $7940: $00
    nop                                           ; $7941: $00
    nop                                           ; $7942: $00
    nop                                           ; $7943: $00
    nop                                           ; $7944: $00
    nop                                           ; $7945: $00
    nop                                           ; $7946: $00
    nop                                           ; $7947: $00
    nop                                           ; $7948: $00
    nop                                           ; $7949: $00
    nop                                           ; $794a: $00
    nop                                           ; $794b: $00
    nop                                           ; $794c: $00
    nop                                           ; $794d: $00
    nop                                           ; $794e: $00
    nop                                           ; $794f: $00
    nop                                           ; $7950: $00
    nop                                           ; $7951: $00
    nop                                           ; $7952: $00
    nop                                           ; $7953: $00
    nop                                           ; $7954: $00
    nop                                           ; $7955: $00
    nop                                           ; $7956: $00
    nop                                           ; $7957: $00
    nop                                           ; $7958: $00
    nop                                           ; $7959: $00
    nop                                           ; $795a: $00
    nop                                           ; $795b: $00
    nop                                           ; $795c: $00
    nop                                           ; $795d: $00
    nop                                           ; $795e: $00
    nop                                           ; $795f: $00
    nop                                           ; $7960: $00
    nop                                           ; $7961: $00
    nop                                           ; $7962: $00
    nop                                           ; $7963: $00
    nop                                           ; $7964: $00
    nop                                           ; $7965: $00
    nop                                           ; $7966: $00
    nop                                           ; $7967: $00
    nop                                           ; $7968: $00
    nop                                           ; $7969: $00
    nop                                           ; $796a: $00
    nop                                           ; $796b: $00
    nop                                           ; $796c: $00
    nop                                           ; $796d: $00
    nop                                           ; $796e: $00
    nop                                           ; $796f: $00
    nop                                           ; $7970: $00
    nop                                           ; $7971: $00
    nop                                           ; $7972: $00
    nop                                           ; $7973: $00
    nop                                           ; $7974: $00
    nop                                           ; $7975: $00
    nop                                           ; $7976: $00
    nop                                           ; $7977: $00
    nop                                           ; $7978: $00
    nop                                           ; $7979: $00
    nop                                           ; $797a: $00
    nop                                           ; $797b: $00
    nop                                           ; $797c: $00
    nop                                           ; $797d: $00
    nop                                           ; $797e: $00
    nop                                           ; $797f: $00
    nop                                           ; $7980: $00
    nop                                           ; $7981: $00
    nop                                           ; $7982: $00
    nop                                           ; $7983: $00
    nop                                           ; $7984: $00
    nop                                           ; $7985: $00
    nop                                           ; $7986: $00
    nop                                           ; $7987: $00
    nop                                           ; $7988: $00
    nop                                           ; $7989: $00
    nop                                           ; $798a: $00
    nop                                           ; $798b: $00
    nop                                           ; $798c: $00
    nop                                           ; $798d: $00
    nop                                           ; $798e: $00
    nop                                           ; $798f: $00
    nop                                           ; $7990: $00
    nop                                           ; $7991: $00
    nop                                           ; $7992: $00
    nop                                           ; $7993: $00
    nop                                           ; $7994: $00
    nop                                           ; $7995: $00
    nop                                           ; $7996: $00
    nop                                           ; $7997: $00
    nop                                           ; $7998: $00
    nop                                           ; $7999: $00
    nop                                           ; $799a: $00
    nop                                           ; $799b: $00
    nop                                           ; $799c: $00
    nop                                           ; $799d: $00
    nop                                           ; $799e: $00
    nop                                           ; $799f: $00
    nop                                           ; $79a0: $00
    nop                                           ; $79a1: $00
    nop                                           ; $79a2: $00
    nop                                           ; $79a3: $00
    nop                                           ; $79a4: $00
    nop                                           ; $79a5: $00
    nop                                           ; $79a6: $00
    nop                                           ; $79a7: $00
    nop                                           ; $79a8: $00
    nop                                           ; $79a9: $00
    nop                                           ; $79aa: $00
    nop                                           ; $79ab: $00
    nop                                           ; $79ac: $00
    nop                                           ; $79ad: $00
    nop                                           ; $79ae: $00
    nop                                           ; $79af: $00
    nop                                           ; $79b0: $00
    nop                                           ; $79b1: $00
    nop                                           ; $79b2: $00
    nop                                           ; $79b3: $00
    nop                                           ; $79b4: $00
    nop                                           ; $79b5: $00
    nop                                           ; $79b6: $00
    nop                                           ; $79b7: $00
    nop                                           ; $79b8: $00
    nop                                           ; $79b9: $00
    nop                                           ; $79ba: $00
    nop                                           ; $79bb: $00
    nop                                           ; $79bc: $00
    nop                                           ; $79bd: $00
    nop                                           ; $79be: $00
    nop                                           ; $79bf: $00
    nop                                           ; $79c0: $00
    nop                                           ; $79c1: $00
    nop                                           ; $79c2: $00
    nop                                           ; $79c3: $00
    nop                                           ; $79c4: $00
    nop                                           ; $79c5: $00
    nop                                           ; $79c6: $00
    nop                                           ; $79c7: $00
    nop                                           ; $79c8: $00
    nop                                           ; $79c9: $00
    nop                                           ; $79ca: $00
    nop                                           ; $79cb: $00
    nop                                           ; $79cc: $00
    nop                                           ; $79cd: $00
    nop                                           ; $79ce: $00
    nop                                           ; $79cf: $00
    nop                                           ; $79d0: $00
    nop                                           ; $79d1: $00
    nop                                           ; $79d2: $00
    nop                                           ; $79d3: $00
    nop                                           ; $79d4: $00
    nop                                           ; $79d5: $00
    nop                                           ; $79d6: $00
    nop                                           ; $79d7: $00
    nop                                           ; $79d8: $00
    nop                                           ; $79d9: $00
    nop                                           ; $79da: $00
    nop                                           ; $79db: $00
    nop                                           ; $79dc: $00
    nop                                           ; $79dd: $00
    nop                                           ; $79de: $00
    nop                                           ; $79df: $00
    nop                                           ; $79e0: $00
    nop                                           ; $79e1: $00
    nop                                           ; $79e2: $00
    nop                                           ; $79e3: $00
    nop                                           ; $79e4: $00
    nop                                           ; $79e5: $00
    nop                                           ; $79e6: $00
    nop                                           ; $79e7: $00
    nop                                           ; $79e8: $00
    nop                                           ; $79e9: $00
    nop                                           ; $79ea: $00
    nop                                           ; $79eb: $00
    nop                                           ; $79ec: $00
    nop                                           ; $79ed: $00
    nop                                           ; $79ee: $00
    nop                                           ; $79ef: $00
    nop                                           ; $79f0: $00
    nop                                           ; $79f1: $00
    nop                                           ; $79f2: $00
    nop                                           ; $79f3: $00
    nop                                           ; $79f4: $00
    nop                                           ; $79f5: $00
    nop                                           ; $79f6: $00
    nop                                           ; $79f7: $00
    nop                                           ; $79f8: $00
    nop                                           ; $79f9: $00
    nop                                           ; $79fa: $00
    nop                                           ; $79fb: $00
    nop                                           ; $79fc: $00
    nop                                           ; $79fd: $00
    nop                                           ; $79fe: $00
    nop                                           ; $79ff: $00
    nop                                           ; $7a00: $00
    nop                                           ; $7a01: $00
    nop                                           ; $7a02: $00
    nop                                           ; $7a03: $00
    nop                                           ; $7a04: $00
    nop                                           ; $7a05: $00
    nop                                           ; $7a06: $00
    nop                                           ; $7a07: $00
    nop                                           ; $7a08: $00
    nop                                           ; $7a09: $00
    nop                                           ; $7a0a: $00
    nop                                           ; $7a0b: $00
    nop                                           ; $7a0c: $00
    nop                                           ; $7a0d: $00
    nop                                           ; $7a0e: $00
    nop                                           ; $7a0f: $00
    nop                                           ; $7a10: $00
    nop                                           ; $7a11: $00
    nop                                           ; $7a12: $00
    nop                                           ; $7a13: $00
    nop                                           ; $7a14: $00
    nop                                           ; $7a15: $00
    nop                                           ; $7a16: $00
    nop                                           ; $7a17: $00
    nop                                           ; $7a18: $00
    nop                                           ; $7a19: $00
    nop                                           ; $7a1a: $00
    nop                                           ; $7a1b: $00
    nop                                           ; $7a1c: $00
    nop                                           ; $7a1d: $00
    nop                                           ; $7a1e: $00
    nop                                           ; $7a1f: $00
    nop                                           ; $7a20: $00
    nop                                           ; $7a21: $00
    nop                                           ; $7a22: $00
    nop                                           ; $7a23: $00
    nop                                           ; $7a24: $00
    nop                                           ; $7a25: $00
    nop                                           ; $7a26: $00
    nop                                           ; $7a27: $00
    nop                                           ; $7a28: $00
    nop                                           ; $7a29: $00
    nop                                           ; $7a2a: $00
    nop                                           ; $7a2b: $00
    nop                                           ; $7a2c: $00
    nop                                           ; $7a2d: $00
    nop                                           ; $7a2e: $00
    nop                                           ; $7a2f: $00
    nop                                           ; $7a30: $00
    nop                                           ; $7a31: $00
    nop                                           ; $7a32: $00
    nop                                           ; $7a33: $00
    nop                                           ; $7a34: $00
    nop                                           ; $7a35: $00
    nop                                           ; $7a36: $00
    nop                                           ; $7a37: $00
    nop                                           ; $7a38: $00
    nop                                           ; $7a39: $00
    nop                                           ; $7a3a: $00
    nop                                           ; $7a3b: $00
    nop                                           ; $7a3c: $00
    nop                                           ; $7a3d: $00
    nop                                           ; $7a3e: $00
    nop                                           ; $7a3f: $00
    nop                                           ; $7a40: $00
    nop                                           ; $7a41: $00
    nop                                           ; $7a42: $00
    nop                                           ; $7a43: $00
    nop                                           ; $7a44: $00
    nop                                           ; $7a45: $00
    nop                                           ; $7a46: $00
    nop                                           ; $7a47: $00
    nop                                           ; $7a48: $00
    nop                                           ; $7a49: $00
    nop                                           ; $7a4a: $00
    nop                                           ; $7a4b: $00
    nop                                           ; $7a4c: $00
    nop                                           ; $7a4d: $00
    nop                                           ; $7a4e: $00
    nop                                           ; $7a4f: $00
    nop                                           ; $7a50: $00
    nop                                           ; $7a51: $00
    nop                                           ; $7a52: $00
    nop                                           ; $7a53: $00
    nop                                           ; $7a54: $00
    nop                                           ; $7a55: $00
    nop                                           ; $7a56: $00
    nop                                           ; $7a57: $00
    nop                                           ; $7a58: $00
    nop                                           ; $7a59: $00
    nop                                           ; $7a5a: $00
    nop                                           ; $7a5b: $00
    nop                                           ; $7a5c: $00
    nop                                           ; $7a5d: $00
    nop                                           ; $7a5e: $00
    nop                                           ; $7a5f: $00
    nop                                           ; $7a60: $00
    nop                                           ; $7a61: $00
    nop                                           ; $7a62: $00
    nop                                           ; $7a63: $00
    nop                                           ; $7a64: $00
    nop                                           ; $7a65: $00
    nop                                           ; $7a66: $00
    nop                                           ; $7a67: $00
    nop                                           ; $7a68: $00
    nop                                           ; $7a69: $00
    nop                                           ; $7a6a: $00
    nop                                           ; $7a6b: $00
    nop                                           ; $7a6c: $00
    nop                                           ; $7a6d: $00
    nop                                           ; $7a6e: $00
    nop                                           ; $7a6f: $00
    nop                                           ; $7a70: $00
    nop                                           ; $7a71: $00
    nop                                           ; $7a72: $00
    nop                                           ; $7a73: $00
    nop                                           ; $7a74: $00
    nop                                           ; $7a75: $00
    nop                                           ; $7a76: $00
    nop                                           ; $7a77: $00
    nop                                           ; $7a78: $00
    nop                                           ; $7a79: $00
    nop                                           ; $7a7a: $00
    nop                                           ; $7a7b: $00
    nop                                           ; $7a7c: $00
    nop                                           ; $7a7d: $00
    nop                                           ; $7a7e: $00
    nop                                           ; $7a7f: $00
    nop                                           ; $7a80: $00
    nop                                           ; $7a81: $00
    nop                                           ; $7a82: $00
    nop                                           ; $7a83: $00
    nop                                           ; $7a84: $00
    nop                                           ; $7a85: $00
    nop                                           ; $7a86: $00
    nop                                           ; $7a87: $00
    nop                                           ; $7a88: $00
    nop                                           ; $7a89: $00
    nop                                           ; $7a8a: $00
    nop                                           ; $7a8b: $00
    nop                                           ; $7a8c: $00
    nop                                           ; $7a8d: $00
    nop                                           ; $7a8e: $00
    nop                                           ; $7a8f: $00
    nop                                           ; $7a90: $00
    nop                                           ; $7a91: $00
    nop                                           ; $7a92: $00
    nop                                           ; $7a93: $00
    nop                                           ; $7a94: $00
    nop                                           ; $7a95: $00
    nop                                           ; $7a96: $00
    nop                                           ; $7a97: $00
    nop                                           ; $7a98: $00
    nop                                           ; $7a99: $00
    nop                                           ; $7a9a: $00
    nop                                           ; $7a9b: $00
    nop                                           ; $7a9c: $00
    nop                                           ; $7a9d: $00
    nop                                           ; $7a9e: $00
    nop                                           ; $7a9f: $00
    nop                                           ; $7aa0: $00
    nop                                           ; $7aa1: $00
    nop                                           ; $7aa2: $00
    nop                                           ; $7aa3: $00
    nop                                           ; $7aa4: $00
    nop                                           ; $7aa5: $00
    nop                                           ; $7aa6: $00
    nop                                           ; $7aa7: $00
    nop                                           ; $7aa8: $00
    nop                                           ; $7aa9: $00
    nop                                           ; $7aaa: $00
    nop                                           ; $7aab: $00
    nop                                           ; $7aac: $00
    nop                                           ; $7aad: $00
    nop                                           ; $7aae: $00
    nop                                           ; $7aaf: $00
    nop                                           ; $7ab0: $00
    nop                                           ; $7ab1: $00
    nop                                           ; $7ab2: $00
    nop                                           ; $7ab3: $00
    nop                                           ; $7ab4: $00
    nop                                           ; $7ab5: $00
    nop                                           ; $7ab6: $00
    nop                                           ; $7ab7: $00
    nop                                           ; $7ab8: $00
    nop                                           ; $7ab9: $00
    nop                                           ; $7aba: $00
    nop                                           ; $7abb: $00
    nop                                           ; $7abc: $00
    nop                                           ; $7abd: $00
    nop                                           ; $7abe: $00
    nop                                           ; $7abf: $00
    nop                                           ; $7ac0: $00
    nop                                           ; $7ac1: $00
    nop                                           ; $7ac2: $00
    nop                                           ; $7ac3: $00
    nop                                           ; $7ac4: $00
    nop                                           ; $7ac5: $00
    nop                                           ; $7ac6: $00
    nop                                           ; $7ac7: $00
    nop                                           ; $7ac8: $00
    nop                                           ; $7ac9: $00
    nop                                           ; $7aca: $00
    nop                                           ; $7acb: $00
    nop                                           ; $7acc: $00
    nop                                           ; $7acd: $00
    nop                                           ; $7ace: $00
    nop                                           ; $7acf: $00
    nop                                           ; $7ad0: $00
    nop                                           ; $7ad1: $00
    nop                                           ; $7ad2: $00
    nop                                           ; $7ad3: $00
    nop                                           ; $7ad4: $00
    nop                                           ; $7ad5: $00
    nop                                           ; $7ad6: $00
    nop                                           ; $7ad7: $00
    nop                                           ; $7ad8: $00
    nop                                           ; $7ad9: $00
    nop                                           ; $7ada: $00
    nop                                           ; $7adb: $00
    nop                                           ; $7adc: $00
    nop                                           ; $7add: $00
    nop                                           ; $7ade: $00
    nop                                           ; $7adf: $00
    nop                                           ; $7ae0: $00
    nop                                           ; $7ae1: $00
    nop                                           ; $7ae2: $00
    nop                                           ; $7ae3: $00
    nop                                           ; $7ae4: $00
    nop                                           ; $7ae5: $00
    nop                                           ; $7ae6: $00
    nop                                           ; $7ae7: $00
    nop                                           ; $7ae8: $00
    nop                                           ; $7ae9: $00
    nop                                           ; $7aea: $00
    nop                                           ; $7aeb: $00
    nop                                           ; $7aec: $00
    nop                                           ; $7aed: $00
    nop                                           ; $7aee: $00
    nop                                           ; $7aef: $00
    nop                                           ; $7af0: $00
    nop                                           ; $7af1: $00
    nop                                           ; $7af2: $00
    nop                                           ; $7af3: $00
    nop                                           ; $7af4: $00
    nop                                           ; $7af5: $00
    nop                                           ; $7af6: $00
    nop                                           ; $7af7: $00
    nop                                           ; $7af8: $00
    nop                                           ; $7af9: $00
    nop                                           ; $7afa: $00
    nop                                           ; $7afb: $00
    nop                                           ; $7afc: $00
    nop                                           ; $7afd: $00
    nop                                           ; $7afe: $00
    nop                                           ; $7aff: $00
    nop                                           ; $7b00: $00
    nop                                           ; $7b01: $00
    nop                                           ; $7b02: $00
    nop                                           ; $7b03: $00
    nop                                           ; $7b04: $00
    nop                                           ; $7b05: $00
    nop                                           ; $7b06: $00
    nop                                           ; $7b07: $00
    nop                                           ; $7b08: $00
    nop                                           ; $7b09: $00
    nop                                           ; $7b0a: $00
    nop                                           ; $7b0b: $00
    nop                                           ; $7b0c: $00
    nop                                           ; $7b0d: $00
    nop                                           ; $7b0e: $00
    nop                                           ; $7b0f: $00
    nop                                           ; $7b10: $00
    nop                                           ; $7b11: $00
    nop                                           ; $7b12: $00
    nop                                           ; $7b13: $00
    nop                                           ; $7b14: $00
    nop                                           ; $7b15: $00
    nop                                           ; $7b16: $00
    nop                                           ; $7b17: $00
    nop                                           ; $7b18: $00
    nop                                           ; $7b19: $00
    nop                                           ; $7b1a: $00
    nop                                           ; $7b1b: $00
    nop                                           ; $7b1c: $00
    nop                                           ; $7b1d: $00
    nop                                           ; $7b1e: $00
    nop                                           ; $7b1f: $00
    nop                                           ; $7b20: $00
    nop                                           ; $7b21: $00
    nop                                           ; $7b22: $00
    nop                                           ; $7b23: $00
    nop                                           ; $7b24: $00
    nop                                           ; $7b25: $00
    nop                                           ; $7b26: $00
    nop                                           ; $7b27: $00
    nop                                           ; $7b28: $00
    nop                                           ; $7b29: $00
    nop                                           ; $7b2a: $00
    nop                                           ; $7b2b: $00
    nop                                           ; $7b2c: $00
    nop                                           ; $7b2d: $00
    nop                                           ; $7b2e: $00
    nop                                           ; $7b2f: $00
    nop                                           ; $7b30: $00
    nop                                           ; $7b31: $00
    nop                                           ; $7b32: $00
    nop                                           ; $7b33: $00
    nop                                           ; $7b34: $00
    nop                                           ; $7b35: $00
    nop                                           ; $7b36: $00
    nop                                           ; $7b37: $00
    nop                                           ; $7b38: $00
    nop                                           ; $7b39: $00
    nop                                           ; $7b3a: $00
    nop                                           ; $7b3b: $00
    nop                                           ; $7b3c: $00
    nop                                           ; $7b3d: $00
    nop                                           ; $7b3e: $00
    nop                                           ; $7b3f: $00
    nop                                           ; $7b40: $00
    nop                                           ; $7b41: $00
    nop                                           ; $7b42: $00
    nop                                           ; $7b43: $00
    nop                                           ; $7b44: $00
    nop                                           ; $7b45: $00
    nop                                           ; $7b46: $00
    nop                                           ; $7b47: $00
    nop                                           ; $7b48: $00
    nop                                           ; $7b49: $00
    nop                                           ; $7b4a: $00
    nop                                           ; $7b4b: $00
    nop                                           ; $7b4c: $00
    nop                                           ; $7b4d: $00
    nop                                           ; $7b4e: $00
    nop                                           ; $7b4f: $00
    nop                                           ; $7b50: $00
    nop                                           ; $7b51: $00
    nop                                           ; $7b52: $00
    nop                                           ; $7b53: $00
    nop                                           ; $7b54: $00
    nop                                           ; $7b55: $00
    nop                                           ; $7b56: $00
    nop                                           ; $7b57: $00
    nop                                           ; $7b58: $00
    nop                                           ; $7b59: $00
    nop                                           ; $7b5a: $00
    nop                                           ; $7b5b: $00
    nop                                           ; $7b5c: $00
    nop                                           ; $7b5d: $00
    nop                                           ; $7b5e: $00
    nop                                           ; $7b5f: $00
    nop                                           ; $7b60: $00
    nop                                           ; $7b61: $00
    nop                                           ; $7b62: $00
    nop                                           ; $7b63: $00
    nop                                           ; $7b64: $00
    nop                                           ; $7b65: $00
    nop                                           ; $7b66: $00
    nop                                           ; $7b67: $00
    nop                                           ; $7b68: $00
    nop                                           ; $7b69: $00
    nop                                           ; $7b6a: $00
    nop                                           ; $7b6b: $00
    nop                                           ; $7b6c: $00
    nop                                           ; $7b6d: $00
    nop                                           ; $7b6e: $00
    nop                                           ; $7b6f: $00
    nop                                           ; $7b70: $00
    nop                                           ; $7b71: $00
    nop                                           ; $7b72: $00
    nop                                           ; $7b73: $00
    nop                                           ; $7b74: $00
    nop                                           ; $7b75: $00
    nop                                           ; $7b76: $00
    nop                                           ; $7b77: $00
    nop                                           ; $7b78: $00
    nop                                           ; $7b79: $00
    nop                                           ; $7b7a: $00
    nop                                           ; $7b7b: $00
    nop                                           ; $7b7c: $00
    nop                                           ; $7b7d: $00
    nop                                           ; $7b7e: $00
    nop                                           ; $7b7f: $00
    nop                                           ; $7b80: $00
    nop                                           ; $7b81: $00
    nop                                           ; $7b82: $00
    nop                                           ; $7b83: $00
    nop                                           ; $7b84: $00
    nop                                           ; $7b85: $00
    nop                                           ; $7b86: $00
    nop                                           ; $7b87: $00
    nop                                           ; $7b88: $00
    nop                                           ; $7b89: $00
    nop                                           ; $7b8a: $00
    nop                                           ; $7b8b: $00
    nop                                           ; $7b8c: $00
    nop                                           ; $7b8d: $00
    nop                                           ; $7b8e: $00
    nop                                           ; $7b8f: $00
    nop                                           ; $7b90: $00
    nop                                           ; $7b91: $00
    nop                                           ; $7b92: $00
    nop                                           ; $7b93: $00
    nop                                           ; $7b94: $00
    nop                                           ; $7b95: $00
    nop                                           ; $7b96: $00
    nop                                           ; $7b97: $00
    nop                                           ; $7b98: $00
    nop                                           ; $7b99: $00
    nop                                           ; $7b9a: $00
    nop                                           ; $7b9b: $00
    nop                                           ; $7b9c: $00
    nop                                           ; $7b9d: $00
    nop                                           ; $7b9e: $00
    nop                                           ; $7b9f: $00
    nop                                           ; $7ba0: $00
    nop                                           ; $7ba1: $00
    nop                                           ; $7ba2: $00
    nop                                           ; $7ba3: $00
    nop                                           ; $7ba4: $00
    nop                                           ; $7ba5: $00
    nop                                           ; $7ba6: $00
    nop                                           ; $7ba7: $00
    nop                                           ; $7ba8: $00
    nop                                           ; $7ba9: $00
    nop                                           ; $7baa: $00
    nop                                           ; $7bab: $00
    nop                                           ; $7bac: $00
    nop                                           ; $7bad: $00
    nop                                           ; $7bae: $00
    nop                                           ; $7baf: $00
    nop                                           ; $7bb0: $00
    nop                                           ; $7bb1: $00
    nop                                           ; $7bb2: $00
    nop                                           ; $7bb3: $00
    nop                                           ; $7bb4: $00
    nop                                           ; $7bb5: $00
    nop                                           ; $7bb6: $00
    nop                                           ; $7bb7: $00
    nop                                           ; $7bb8: $00
    nop                                           ; $7bb9: $00
    nop                                           ; $7bba: $00
    nop                                           ; $7bbb: $00
    nop                                           ; $7bbc: $00
    nop                                           ; $7bbd: $00
    nop                                           ; $7bbe: $00
    nop                                           ; $7bbf: $00
    nop                                           ; $7bc0: $00
    nop                                           ; $7bc1: $00
    nop                                           ; $7bc2: $00
    nop                                           ; $7bc3: $00
    nop                                           ; $7bc4: $00
    nop                                           ; $7bc5: $00
    nop                                           ; $7bc6: $00
    nop                                           ; $7bc7: $00
    nop                                           ; $7bc8: $00
    nop                                           ; $7bc9: $00
    nop                                           ; $7bca: $00
    nop                                           ; $7bcb: $00
    nop                                           ; $7bcc: $00
    nop                                           ; $7bcd: $00
    nop                                           ; $7bce: $00
    nop                                           ; $7bcf: $00
    nop                                           ; $7bd0: $00
    nop                                           ; $7bd1: $00
    nop                                           ; $7bd2: $00
    nop                                           ; $7bd3: $00
    nop                                           ; $7bd4: $00
    nop                                           ; $7bd5: $00
    nop                                           ; $7bd6: $00
    nop                                           ; $7bd7: $00
    nop                                           ; $7bd8: $00
    nop                                           ; $7bd9: $00
    nop                                           ; $7bda: $00
    nop                                           ; $7bdb: $00
    nop                                           ; $7bdc: $00
    nop                                           ; $7bdd: $00
    nop                                           ; $7bde: $00
    nop                                           ; $7bdf: $00
    nop                                           ; $7be0: $00
    nop                                           ; $7be1: $00
    nop                                           ; $7be2: $00
    nop                                           ; $7be3: $00
    nop                                           ; $7be4: $00
    nop                                           ; $7be5: $00
    nop                                           ; $7be6: $00
    nop                                           ; $7be7: $00
    nop                                           ; $7be8: $00
    nop                                           ; $7be9: $00
    nop                                           ; $7bea: $00
    nop                                           ; $7beb: $00
    nop                                           ; $7bec: $00
    nop                                           ; $7bed: $00
    nop                                           ; $7bee: $00
    nop                                           ; $7bef: $00
    nop                                           ; $7bf0: $00
    nop                                           ; $7bf1: $00
    nop                                           ; $7bf2: $00
    nop                                           ; $7bf3: $00
    nop                                           ; $7bf4: $00
    nop                                           ; $7bf5: $00
    nop                                           ; $7bf6: $00
    nop                                           ; $7bf7: $00
    nop                                           ; $7bf8: $00
    nop                                           ; $7bf9: $00
    nop                                           ; $7bfa: $00
    nop                                           ; $7bfb: $00
    nop                                           ; $7bfc: $00
    nop                                           ; $7bfd: $00
    nop                                           ; $7bfe: $00
    nop                                           ; $7bff: $00
    nop                                           ; $7c00: $00
    nop                                           ; $7c01: $00
    nop                                           ; $7c02: $00
    nop                                           ; $7c03: $00
    nop                                           ; $7c04: $00
    nop                                           ; $7c05: $00
    nop                                           ; $7c06: $00
    nop                                           ; $7c07: $00
    nop                                           ; $7c08: $00
    nop                                           ; $7c09: $00
    nop                                           ; $7c0a: $00
    nop                                           ; $7c0b: $00
    nop                                           ; $7c0c: $00
    nop                                           ; $7c0d: $00
    nop                                           ; $7c0e: $00
    nop                                           ; $7c0f: $00
    nop                                           ; $7c10: $00
    nop                                           ; $7c11: $00
    nop                                           ; $7c12: $00
    nop                                           ; $7c13: $00
    nop                                           ; $7c14: $00
    nop                                           ; $7c15: $00
    nop                                           ; $7c16: $00
    nop                                           ; $7c17: $00
    nop                                           ; $7c18: $00
    nop                                           ; $7c19: $00
    nop                                           ; $7c1a: $00
    nop                                           ; $7c1b: $00
    nop                                           ; $7c1c: $00
    nop                                           ; $7c1d: $00
    nop                                           ; $7c1e: $00
    nop                                           ; $7c1f: $00
    nop                                           ; $7c20: $00
    nop                                           ; $7c21: $00
    nop                                           ; $7c22: $00
    nop                                           ; $7c23: $00
    nop                                           ; $7c24: $00
    nop                                           ; $7c25: $00
    nop                                           ; $7c26: $00
    nop                                           ; $7c27: $00
    nop                                           ; $7c28: $00
    nop                                           ; $7c29: $00
    nop                                           ; $7c2a: $00
    nop                                           ; $7c2b: $00
    nop                                           ; $7c2c: $00
    nop                                           ; $7c2d: $00
    nop                                           ; $7c2e: $00
    nop                                           ; $7c2f: $00
    nop                                           ; $7c30: $00
    nop                                           ; $7c31: $00
    nop                                           ; $7c32: $00
    nop                                           ; $7c33: $00
    nop                                           ; $7c34: $00
    nop                                           ; $7c35: $00
    nop                                           ; $7c36: $00
    nop                                           ; $7c37: $00
    nop                                           ; $7c38: $00
    nop                                           ; $7c39: $00
    nop                                           ; $7c3a: $00
    nop                                           ; $7c3b: $00
    nop                                           ; $7c3c: $00
    nop                                           ; $7c3d: $00
    nop                                           ; $7c3e: $00
    nop                                           ; $7c3f: $00
    nop                                           ; $7c40: $00
    nop                                           ; $7c41: $00
    nop                                           ; $7c42: $00
    nop                                           ; $7c43: $00
    nop                                           ; $7c44: $00
    nop                                           ; $7c45: $00
    nop                                           ; $7c46: $00
    nop                                           ; $7c47: $00
    nop                                           ; $7c48: $00
    nop                                           ; $7c49: $00
    nop                                           ; $7c4a: $00
    nop                                           ; $7c4b: $00
    nop                                           ; $7c4c: $00
    nop                                           ; $7c4d: $00
    nop                                           ; $7c4e: $00
    nop                                           ; $7c4f: $00
    nop                                           ; $7c50: $00
    nop                                           ; $7c51: $00
    nop                                           ; $7c52: $00
    nop                                           ; $7c53: $00
    nop                                           ; $7c54: $00
    nop                                           ; $7c55: $00
    nop                                           ; $7c56: $00
    nop                                           ; $7c57: $00
    nop                                           ; $7c58: $00
    nop                                           ; $7c59: $00
    nop                                           ; $7c5a: $00
    nop                                           ; $7c5b: $00
    nop                                           ; $7c5c: $00
    nop                                           ; $7c5d: $00
    nop                                           ; $7c5e: $00
    nop                                           ; $7c5f: $00
    nop                                           ; $7c60: $00
    nop                                           ; $7c61: $00
    nop                                           ; $7c62: $00
    nop                                           ; $7c63: $00
    nop                                           ; $7c64: $00
    nop                                           ; $7c65: $00
    nop                                           ; $7c66: $00
    nop                                           ; $7c67: $00
    nop                                           ; $7c68: $00
    nop                                           ; $7c69: $00
    nop                                           ; $7c6a: $00
    nop                                           ; $7c6b: $00
    nop                                           ; $7c6c: $00
    nop                                           ; $7c6d: $00
    nop                                           ; $7c6e: $00
    nop                                           ; $7c6f: $00
    nop                                           ; $7c70: $00
    nop                                           ; $7c71: $00
    nop                                           ; $7c72: $00
    nop                                           ; $7c73: $00
    nop                                           ; $7c74: $00
    nop                                           ; $7c75: $00
    nop                                           ; $7c76: $00
    nop                                           ; $7c77: $00
    nop                                           ; $7c78: $00
    nop                                           ; $7c79: $00
    nop                                           ; $7c7a: $00
    nop                                           ; $7c7b: $00
    nop                                           ; $7c7c: $00
    nop                                           ; $7c7d: $00
    nop                                           ; $7c7e: $00
    nop                                           ; $7c7f: $00
    nop                                           ; $7c80: $00
    nop                                           ; $7c81: $00
    nop                                           ; $7c82: $00
    nop                                           ; $7c83: $00
    nop                                           ; $7c84: $00
    nop                                           ; $7c85: $00
    nop                                           ; $7c86: $00
    nop                                           ; $7c87: $00
    nop                                           ; $7c88: $00
    nop                                           ; $7c89: $00
    nop                                           ; $7c8a: $00
    nop                                           ; $7c8b: $00
    nop                                           ; $7c8c: $00
    nop                                           ; $7c8d: $00
    nop                                           ; $7c8e: $00
    nop                                           ; $7c8f: $00
    nop                                           ; $7c90: $00
    nop                                           ; $7c91: $00
    nop                                           ; $7c92: $00
    nop                                           ; $7c93: $00
    nop                                           ; $7c94: $00
    nop                                           ; $7c95: $00
    nop                                           ; $7c96: $00
    nop                                           ; $7c97: $00
    nop                                           ; $7c98: $00
    nop                                           ; $7c99: $00
    nop                                           ; $7c9a: $00
    nop                                           ; $7c9b: $00
    nop                                           ; $7c9c: $00
    nop                                           ; $7c9d: $00
    nop                                           ; $7c9e: $00
    nop                                           ; $7c9f: $00
    nop                                           ; $7ca0: $00
    nop                                           ; $7ca1: $00
    nop                                           ; $7ca2: $00
    nop                                           ; $7ca3: $00
    nop                                           ; $7ca4: $00
    nop                                           ; $7ca5: $00
    nop                                           ; $7ca6: $00
    nop                                           ; $7ca7: $00
    nop                                           ; $7ca8: $00
    nop                                           ; $7ca9: $00
    nop                                           ; $7caa: $00
    nop                                           ; $7cab: $00
    nop                                           ; $7cac: $00
    nop                                           ; $7cad: $00
    nop                                           ; $7cae: $00
    nop                                           ; $7caf: $00
    nop                                           ; $7cb0: $00
    nop                                           ; $7cb1: $00
    nop                                           ; $7cb2: $00
    nop                                           ; $7cb3: $00
    nop                                           ; $7cb4: $00
    nop                                           ; $7cb5: $00
    nop                                           ; $7cb6: $00
    nop                                           ; $7cb7: $00
    nop                                           ; $7cb8: $00
    nop                                           ; $7cb9: $00
    nop                                           ; $7cba: $00
    nop                                           ; $7cbb: $00
    nop                                           ; $7cbc: $00
    nop                                           ; $7cbd: $00
    nop                                           ; $7cbe: $00
    nop                                           ; $7cbf: $00
    nop                                           ; $7cc0: $00
    nop                                           ; $7cc1: $00
    nop                                           ; $7cc2: $00
    nop                                           ; $7cc3: $00
    nop                                           ; $7cc4: $00
    nop                                           ; $7cc5: $00
    nop                                           ; $7cc6: $00
    nop                                           ; $7cc7: $00
    nop                                           ; $7cc8: $00
    nop                                           ; $7cc9: $00
    nop                                           ; $7cca: $00
    nop                                           ; $7ccb: $00
    nop                                           ; $7ccc: $00
    nop                                           ; $7ccd: $00
    nop                                           ; $7cce: $00
    nop                                           ; $7ccf: $00
    nop                                           ; $7cd0: $00
    nop                                           ; $7cd1: $00
    nop                                           ; $7cd2: $00
    nop                                           ; $7cd3: $00
    nop                                           ; $7cd4: $00
    nop                                           ; $7cd5: $00
    nop                                           ; $7cd6: $00
    nop                                           ; $7cd7: $00
    nop                                           ; $7cd8: $00
    nop                                           ; $7cd9: $00
    nop                                           ; $7cda: $00
    nop                                           ; $7cdb: $00
    nop                                           ; $7cdc: $00
    nop                                           ; $7cdd: $00
    nop                                           ; $7cde: $00
    nop                                           ; $7cdf: $00
    nop                                           ; $7ce0: $00
    nop                                           ; $7ce1: $00
    nop                                           ; $7ce2: $00
    nop                                           ; $7ce3: $00
    nop                                           ; $7ce4: $00
    nop                                           ; $7ce5: $00
    nop                                           ; $7ce6: $00
    nop                                           ; $7ce7: $00
    nop                                           ; $7ce8: $00
    nop                                           ; $7ce9: $00
    nop                                           ; $7cea: $00
    nop                                           ; $7ceb: $00
    nop                                           ; $7cec: $00
    nop                                           ; $7ced: $00
    nop                                           ; $7cee: $00
    nop                                           ; $7cef: $00
    nop                                           ; $7cf0: $00
    nop                                           ; $7cf1: $00
    nop                                           ; $7cf2: $00
    nop                                           ; $7cf3: $00
    nop                                           ; $7cf4: $00
    nop                                           ; $7cf5: $00
    nop                                           ; $7cf6: $00
    nop                                           ; $7cf7: $00
    nop                                           ; $7cf8: $00
    nop                                           ; $7cf9: $00
    nop                                           ; $7cfa: $00
    nop                                           ; $7cfb: $00
    nop                                           ; $7cfc: $00
    nop                                           ; $7cfd: $00
    nop                                           ; $7cfe: $00
    nop                                           ; $7cff: $00
    nop                                           ; $7d00: $00
    nop                                           ; $7d01: $00
    nop                                           ; $7d02: $00
    nop                                           ; $7d03: $00
    nop                                           ; $7d04: $00
    nop                                           ; $7d05: $00
    nop                                           ; $7d06: $00
    nop                                           ; $7d07: $00
    nop                                           ; $7d08: $00
    nop                                           ; $7d09: $00
    nop                                           ; $7d0a: $00
    nop                                           ; $7d0b: $00
    nop                                           ; $7d0c: $00
    nop                                           ; $7d0d: $00
    nop                                           ; $7d0e: $00
    nop                                           ; $7d0f: $00
    nop                                           ; $7d10: $00
    nop                                           ; $7d11: $00
    nop                                           ; $7d12: $00
    nop                                           ; $7d13: $00
    nop                                           ; $7d14: $00
    nop                                           ; $7d15: $00
    nop                                           ; $7d16: $00
    nop                                           ; $7d17: $00
    nop                                           ; $7d18: $00
    nop                                           ; $7d19: $00
    nop                                           ; $7d1a: $00
    nop                                           ; $7d1b: $00
    nop                                           ; $7d1c: $00
    nop                                           ; $7d1d: $00
    nop                                           ; $7d1e: $00
    nop                                           ; $7d1f: $00
    nop                                           ; $7d20: $00
    nop                                           ; $7d21: $00
    nop                                           ; $7d22: $00
    nop                                           ; $7d23: $00
    nop                                           ; $7d24: $00
    nop                                           ; $7d25: $00
    nop                                           ; $7d26: $00
    nop                                           ; $7d27: $00
    nop                                           ; $7d28: $00
    nop                                           ; $7d29: $00
    nop                                           ; $7d2a: $00
    nop                                           ; $7d2b: $00
    nop                                           ; $7d2c: $00
    nop                                           ; $7d2d: $00
    nop                                           ; $7d2e: $00
    nop                                           ; $7d2f: $00
    nop                                           ; $7d30: $00
    nop                                           ; $7d31: $00
    nop                                           ; $7d32: $00
    nop                                           ; $7d33: $00
    nop                                           ; $7d34: $00
    nop                                           ; $7d35: $00
    nop                                           ; $7d36: $00
    nop                                           ; $7d37: $00
    nop                                           ; $7d38: $00
    nop                                           ; $7d39: $00
    nop                                           ; $7d3a: $00
    nop                                           ; $7d3b: $00
    nop                                           ; $7d3c: $00
    nop                                           ; $7d3d: $00
    nop                                           ; $7d3e: $00
    nop                                           ; $7d3f: $00
    nop                                           ; $7d40: $00
    nop                                           ; $7d41: $00
    nop                                           ; $7d42: $00
    nop                                           ; $7d43: $00
    nop                                           ; $7d44: $00
    nop                                           ; $7d45: $00
    nop                                           ; $7d46: $00
    nop                                           ; $7d47: $00
    nop                                           ; $7d48: $00
    nop                                           ; $7d49: $00
    nop                                           ; $7d4a: $00
    nop                                           ; $7d4b: $00
    nop                                           ; $7d4c: $00
    nop                                           ; $7d4d: $00
    nop                                           ; $7d4e: $00
    nop                                           ; $7d4f: $00
    nop                                           ; $7d50: $00
    nop                                           ; $7d51: $00
    nop                                           ; $7d52: $00
    nop                                           ; $7d53: $00
    nop                                           ; $7d54: $00
    nop                                           ; $7d55: $00
    nop                                           ; $7d56: $00
    nop                                           ; $7d57: $00
    nop                                           ; $7d58: $00
    nop                                           ; $7d59: $00
    nop                                           ; $7d5a: $00
    nop                                           ; $7d5b: $00
    nop                                           ; $7d5c: $00
    nop                                           ; $7d5d: $00
    nop                                           ; $7d5e: $00
    nop                                           ; $7d5f: $00
    nop                                           ; $7d60: $00
    nop                                           ; $7d61: $00
    nop                                           ; $7d62: $00
    nop                                           ; $7d63: $00
    nop                                           ; $7d64: $00
    nop                                           ; $7d65: $00
    nop                                           ; $7d66: $00
    nop                                           ; $7d67: $00
    nop                                           ; $7d68: $00
    nop                                           ; $7d69: $00
    nop                                           ; $7d6a: $00
    nop                                           ; $7d6b: $00
    nop                                           ; $7d6c: $00
    nop                                           ; $7d6d: $00
    nop                                           ; $7d6e: $00
    nop                                           ; $7d6f: $00
    nop                                           ; $7d70: $00
    nop                                           ; $7d71: $00
    nop                                           ; $7d72: $00
    nop                                           ; $7d73: $00
    nop                                           ; $7d74: $00
    nop                                           ; $7d75: $00
    nop                                           ; $7d76: $00
    nop                                           ; $7d77: $00
    nop                                           ; $7d78: $00
    nop                                           ; $7d79: $00
    nop                                           ; $7d7a: $00
    nop                                           ; $7d7b: $00
    nop                                           ; $7d7c: $00
    nop                                           ; $7d7d: $00
    nop                                           ; $7d7e: $00
    nop                                           ; $7d7f: $00
    nop                                           ; $7d80: $00
    nop                                           ; $7d81: $00
    nop                                           ; $7d82: $00
    nop                                           ; $7d83: $00
    nop                                           ; $7d84: $00
    nop                                           ; $7d85: $00
    nop                                           ; $7d86: $00
    nop                                           ; $7d87: $00
    nop                                           ; $7d88: $00
    nop                                           ; $7d89: $00
    nop                                           ; $7d8a: $00
    nop                                           ; $7d8b: $00
    nop                                           ; $7d8c: $00
    nop                                           ; $7d8d: $00
    nop                                           ; $7d8e: $00
    nop                                           ; $7d8f: $00
    nop                                           ; $7d90: $00
    nop                                           ; $7d91: $00
    nop                                           ; $7d92: $00
    nop                                           ; $7d93: $00
    nop                                           ; $7d94: $00
    nop                                           ; $7d95: $00
    nop                                           ; $7d96: $00
    nop                                           ; $7d97: $00
    nop                                           ; $7d98: $00
    nop                                           ; $7d99: $00
    nop                                           ; $7d9a: $00
    nop                                           ; $7d9b: $00
    nop                                           ; $7d9c: $00
    nop                                           ; $7d9d: $00
    nop                                           ; $7d9e: $00
    nop                                           ; $7d9f: $00
    nop                                           ; $7da0: $00
    nop                                           ; $7da1: $00
    nop                                           ; $7da2: $00
    nop                                           ; $7da3: $00
    nop                                           ; $7da4: $00
    nop                                           ; $7da5: $00
    nop                                           ; $7da6: $00
    nop                                           ; $7da7: $00
    nop                                           ; $7da8: $00
    nop                                           ; $7da9: $00
    nop                                           ; $7daa: $00
    nop                                           ; $7dab: $00
    nop                                           ; $7dac: $00
    nop                                           ; $7dad: $00
    nop                                           ; $7dae: $00
    nop                                           ; $7daf: $00
    nop                                           ; $7db0: $00
    nop                                           ; $7db1: $00
    nop                                           ; $7db2: $00
    nop                                           ; $7db3: $00
    nop                                           ; $7db4: $00
    nop                                           ; $7db5: $00
    nop                                           ; $7db6: $00
    nop                                           ; $7db7: $00
    nop                                           ; $7db8: $00
    nop                                           ; $7db9: $00
    nop                                           ; $7dba: $00
    nop                                           ; $7dbb: $00
    nop                                           ; $7dbc: $00
    nop                                           ; $7dbd: $00
    nop                                           ; $7dbe: $00
    nop                                           ; $7dbf: $00
    nop                                           ; $7dc0: $00
    nop                                           ; $7dc1: $00
    nop                                           ; $7dc2: $00
    nop                                           ; $7dc3: $00
    nop                                           ; $7dc4: $00
    nop                                           ; $7dc5: $00
    nop                                           ; $7dc6: $00
    nop                                           ; $7dc7: $00
    nop                                           ; $7dc8: $00
    nop                                           ; $7dc9: $00
    nop                                           ; $7dca: $00
    nop                                           ; $7dcb: $00
    nop                                           ; $7dcc: $00
    nop                                           ; $7dcd: $00
    nop                                           ; $7dce: $00
    nop                                           ; $7dcf: $00
    nop                                           ; $7dd0: $00
    nop                                           ; $7dd1: $00
    nop                                           ; $7dd2: $00
    nop                                           ; $7dd3: $00
    nop                                           ; $7dd4: $00
    nop                                           ; $7dd5: $00
    nop                                           ; $7dd6: $00
    nop                                           ; $7dd7: $00
    nop                                           ; $7dd8: $00
    nop                                           ; $7dd9: $00
    nop                                           ; $7dda: $00
    nop                                           ; $7ddb: $00
    nop                                           ; $7ddc: $00
    nop                                           ; $7ddd: $00
    nop                                           ; $7dde: $00
    nop                                           ; $7ddf: $00
    nop                                           ; $7de0: $00
    nop                                           ; $7de1: $00
    nop                                           ; $7de2: $00
    nop                                           ; $7de3: $00
    nop                                           ; $7de4: $00
    nop                                           ; $7de5: $00
    nop                                           ; $7de6: $00
    nop                                           ; $7de7: $00
    nop                                           ; $7de8: $00
    nop                                           ; $7de9: $00
    nop                                           ; $7dea: $00
    nop                                           ; $7deb: $00
    nop                                           ; $7dec: $00
    nop                                           ; $7ded: $00
    nop                                           ; $7dee: $00
    nop                                           ; $7def: $00
    nop                                           ; $7df0: $00
    nop                                           ; $7df1: $00
    nop                                           ; $7df2: $00
    nop                                           ; $7df3: $00
    nop                                           ; $7df4: $00
    nop                                           ; $7df5: $00
    nop                                           ; $7df6: $00
    nop                                           ; $7df7: $00
    nop                                           ; $7df8: $00
    nop                                           ; $7df9: $00
    nop                                           ; $7dfa: $00
    nop                                           ; $7dfb: $00
    nop                                           ; $7dfc: $00
    nop                                           ; $7dfd: $00
    nop                                           ; $7dfe: $00
    nop                                           ; $7dff: $00
    nop                                           ; $7e00: $00
    nop                                           ; $7e01: $00
    nop                                           ; $7e02: $00
    nop                                           ; $7e03: $00
    nop                                           ; $7e04: $00
    nop                                           ; $7e05: $00
    nop                                           ; $7e06: $00
    nop                                           ; $7e07: $00
    nop                                           ; $7e08: $00
    nop                                           ; $7e09: $00
    nop                                           ; $7e0a: $00
    nop                                           ; $7e0b: $00
    nop                                           ; $7e0c: $00
    nop                                           ; $7e0d: $00
    nop                                           ; $7e0e: $00
    nop                                           ; $7e0f: $00
    nop                                           ; $7e10: $00
    nop                                           ; $7e11: $00
    nop                                           ; $7e12: $00
    nop                                           ; $7e13: $00
    nop                                           ; $7e14: $00
    nop                                           ; $7e15: $00
    nop                                           ; $7e16: $00
    nop                                           ; $7e17: $00
    nop                                           ; $7e18: $00
    nop                                           ; $7e19: $00
    nop                                           ; $7e1a: $00
    nop                                           ; $7e1b: $00
    nop                                           ; $7e1c: $00
    nop                                           ; $7e1d: $00
    nop                                           ; $7e1e: $00
    nop                                           ; $7e1f: $00
    nop                                           ; $7e20: $00
    nop                                           ; $7e21: $00
    nop                                           ; $7e22: $00
    nop                                           ; $7e23: $00
    nop                                           ; $7e24: $00
    nop                                           ; $7e25: $00
    nop                                           ; $7e26: $00
    nop                                           ; $7e27: $00
    nop                                           ; $7e28: $00
    nop                                           ; $7e29: $00
    nop                                           ; $7e2a: $00
    nop                                           ; $7e2b: $00
    nop                                           ; $7e2c: $00
    nop                                           ; $7e2d: $00
    nop                                           ; $7e2e: $00
    nop                                           ; $7e2f: $00
    nop                                           ; $7e30: $00
    nop                                           ; $7e31: $00
    nop                                           ; $7e32: $00
    nop                                           ; $7e33: $00
    nop                                           ; $7e34: $00
    nop                                           ; $7e35: $00
    nop                                           ; $7e36: $00
    nop                                           ; $7e37: $00
    nop                                           ; $7e38: $00
    nop                                           ; $7e39: $00
    nop                                           ; $7e3a: $00
    nop                                           ; $7e3b: $00
    nop                                           ; $7e3c: $00
    nop                                           ; $7e3d: $00
    nop                                           ; $7e3e: $00
    nop                                           ; $7e3f: $00
    nop                                           ; $7e40: $00
    nop                                           ; $7e41: $00
    nop                                           ; $7e42: $00
    nop                                           ; $7e43: $00
    nop                                           ; $7e44: $00
    nop                                           ; $7e45: $00
    nop                                           ; $7e46: $00
    nop                                           ; $7e47: $00
    nop                                           ; $7e48: $00
    nop                                           ; $7e49: $00
    nop                                           ; $7e4a: $00
    nop                                           ; $7e4b: $00
    nop                                           ; $7e4c: $00
    nop                                           ; $7e4d: $00
    nop                                           ; $7e4e: $00
    nop                                           ; $7e4f: $00
    nop                                           ; $7e50: $00
    nop                                           ; $7e51: $00
    nop                                           ; $7e52: $00
    nop                                           ; $7e53: $00
    nop                                           ; $7e54: $00
    nop                                           ; $7e55: $00
    nop                                           ; $7e56: $00
    nop                                           ; $7e57: $00
    nop                                           ; $7e58: $00
    nop                                           ; $7e59: $00
    nop                                           ; $7e5a: $00
    nop                                           ; $7e5b: $00
    nop                                           ; $7e5c: $00
    nop                                           ; $7e5d: $00
    nop                                           ; $7e5e: $00
    nop                                           ; $7e5f: $00
    nop                                           ; $7e60: $00
    nop                                           ; $7e61: $00
    nop                                           ; $7e62: $00
    nop                                           ; $7e63: $00
    nop                                           ; $7e64: $00
    nop                                           ; $7e65: $00
    nop                                           ; $7e66: $00
    nop                                           ; $7e67: $00
    nop                                           ; $7e68: $00
    nop                                           ; $7e69: $00
    nop                                           ; $7e6a: $00
    nop                                           ; $7e6b: $00
    nop                                           ; $7e6c: $00
    nop                                           ; $7e6d: $00
    nop                                           ; $7e6e: $00
    nop                                           ; $7e6f: $00
    nop                                           ; $7e70: $00
    nop                                           ; $7e71: $00
    nop                                           ; $7e72: $00
    nop                                           ; $7e73: $00
    nop                                           ; $7e74: $00
    nop                                           ; $7e75: $00
    nop                                           ; $7e76: $00
    nop                                           ; $7e77: $00
    nop                                           ; $7e78: $00
    nop                                           ; $7e79: $00
    nop                                           ; $7e7a: $00
    nop                                           ; $7e7b: $00
    nop                                           ; $7e7c: $00
    nop                                           ; $7e7d: $00
    nop                                           ; $7e7e: $00
    nop                                           ; $7e7f: $00
    nop                                           ; $7e80: $00
    nop                                           ; $7e81: $00
    nop                                           ; $7e82: $00
    nop                                           ; $7e83: $00
    nop                                           ; $7e84: $00
    nop                                           ; $7e85: $00
    nop                                           ; $7e86: $00
    nop                                           ; $7e87: $00
    nop                                           ; $7e88: $00
    nop                                           ; $7e89: $00
    nop                                           ; $7e8a: $00
    nop                                           ; $7e8b: $00
    nop                                           ; $7e8c: $00
    nop                                           ; $7e8d: $00
    nop                                           ; $7e8e: $00
    nop                                           ; $7e8f: $00
    nop                                           ; $7e90: $00
    nop                                           ; $7e91: $00
    nop                                           ; $7e92: $00
    nop                                           ; $7e93: $00
    nop                                           ; $7e94: $00
    nop                                           ; $7e95: $00
    nop                                           ; $7e96: $00
    nop                                           ; $7e97: $00
    nop                                           ; $7e98: $00
    nop                                           ; $7e99: $00
    nop                                           ; $7e9a: $00
    nop                                           ; $7e9b: $00
    nop                                           ; $7e9c: $00
    nop                                           ; $7e9d: $00
    nop                                           ; $7e9e: $00
    nop                                           ; $7e9f: $00
    nop                                           ; $7ea0: $00
    nop                                           ; $7ea1: $00
    nop                                           ; $7ea2: $00
    nop                                           ; $7ea3: $00
    nop                                           ; $7ea4: $00
    nop                                           ; $7ea5: $00
    nop                                           ; $7ea6: $00
    nop                                           ; $7ea7: $00
    nop                                           ; $7ea8: $00
    nop                                           ; $7ea9: $00
    nop                                           ; $7eaa: $00
    nop                                           ; $7eab: $00
    nop                                           ; $7eac: $00
    nop                                           ; $7ead: $00
    nop                                           ; $7eae: $00
    nop                                           ; $7eaf: $00
    nop                                           ; $7eb0: $00
    nop                                           ; $7eb1: $00
    nop                                           ; $7eb2: $00
    nop                                           ; $7eb3: $00
    nop                                           ; $7eb4: $00
    nop                                           ; $7eb5: $00
    nop                                           ; $7eb6: $00
    nop                                           ; $7eb7: $00
    nop                                           ; $7eb8: $00
    nop                                           ; $7eb9: $00
    nop                                           ; $7eba: $00
    nop                                           ; $7ebb: $00
    nop                                           ; $7ebc: $00
    nop                                           ; $7ebd: $00
    nop                                           ; $7ebe: $00
    nop                                           ; $7ebf: $00
    nop                                           ; $7ec0: $00
    nop                                           ; $7ec1: $00
    nop                                           ; $7ec2: $00
    nop                                           ; $7ec3: $00
    nop                                           ; $7ec4: $00
    nop                                           ; $7ec5: $00
    nop                                           ; $7ec6: $00
    nop                                           ; $7ec7: $00
    nop                                           ; $7ec8: $00
    nop                                           ; $7ec9: $00
    nop                                           ; $7eca: $00
    nop                                           ; $7ecb: $00
    nop                                           ; $7ecc: $00
    nop                                           ; $7ecd: $00
    nop                                           ; $7ece: $00
    nop                                           ; $7ecf: $00
    nop                                           ; $7ed0: $00
    nop                                           ; $7ed1: $00
    nop                                           ; $7ed2: $00
    nop                                           ; $7ed3: $00
    nop                                           ; $7ed4: $00
    nop                                           ; $7ed5: $00
    nop                                           ; $7ed6: $00
    nop                                           ; $7ed7: $00
    nop                                           ; $7ed8: $00
    nop                                           ; $7ed9: $00
    nop                                           ; $7eda: $00
    nop                                           ; $7edb: $00
    nop                                           ; $7edc: $00
    nop                                           ; $7edd: $00
    nop                                           ; $7ede: $00
    nop                                           ; $7edf: $00
    nop                                           ; $7ee0: $00
    nop                                           ; $7ee1: $00
    nop                                           ; $7ee2: $00
    nop                                           ; $7ee3: $00
    nop                                           ; $7ee4: $00
    nop                                           ; $7ee5: $00
    nop                                           ; $7ee6: $00
    nop                                           ; $7ee7: $00
    nop                                           ; $7ee8: $00
    nop                                           ; $7ee9: $00
    nop                                           ; $7eea: $00
    nop                                           ; $7eeb: $00
    nop                                           ; $7eec: $00
    nop                                           ; $7eed: $00
    nop                                           ; $7eee: $00
    nop                                           ; $7eef: $00
    nop                                           ; $7ef0: $00
    nop                                           ; $7ef1: $00
    nop                                           ; $7ef2: $00
    nop                                           ; $7ef3: $00
    nop                                           ; $7ef4: $00
    nop                                           ; $7ef5: $00
    nop                                           ; $7ef6: $00
    nop                                           ; $7ef7: $00
    nop                                           ; $7ef8: $00
    nop                                           ; $7ef9: $00
    nop                                           ; $7efa: $00
    nop                                           ; $7efb: $00
    nop                                           ; $7efc: $00
    nop                                           ; $7efd: $00
    nop                                           ; $7efe: $00
    nop                                           ; $7eff: $00
    nop                                           ; $7f00: $00
    nop                                           ; $7f01: $00
    nop                                           ; $7f02: $00
    nop                                           ; $7f03: $00
    nop                                           ; $7f04: $00
    nop                                           ; $7f05: $00
    nop                                           ; $7f06: $00
    nop                                           ; $7f07: $00
    nop                                           ; $7f08: $00
    nop                                           ; $7f09: $00
    nop                                           ; $7f0a: $00
    nop                                           ; $7f0b: $00
    nop                                           ; $7f0c: $00
    nop                                           ; $7f0d: $00
    nop                                           ; $7f0e: $00
    nop                                           ; $7f0f: $00
    nop                                           ; $7f10: $00
    nop                                           ; $7f11: $00
    nop                                           ; $7f12: $00
    nop                                           ; $7f13: $00
    nop                                           ; $7f14: $00
    nop                                           ; $7f15: $00
    nop                                           ; $7f16: $00
    nop                                           ; $7f17: $00
    nop                                           ; $7f18: $00
    nop                                           ; $7f19: $00
    nop                                           ; $7f1a: $00
    nop                                           ; $7f1b: $00
    nop                                           ; $7f1c: $00
    nop                                           ; $7f1d: $00
    nop                                           ; $7f1e: $00
    nop                                           ; $7f1f: $00
    nop                                           ; $7f20: $00
    nop                                           ; $7f21: $00
    nop                                           ; $7f22: $00
    nop                                           ; $7f23: $00
    nop                                           ; $7f24: $00
    nop                                           ; $7f25: $00
    nop                                           ; $7f26: $00
    nop                                           ; $7f27: $00
    nop                                           ; $7f28: $00
    nop                                           ; $7f29: $00
    nop                                           ; $7f2a: $00
    nop                                           ; $7f2b: $00
    nop                                           ; $7f2c: $00
    nop                                           ; $7f2d: $00
    nop                                           ; $7f2e: $00
    nop                                           ; $7f2f: $00
    nop                                           ; $7f30: $00
    nop                                           ; $7f31: $00
    nop                                           ; $7f32: $00
    nop                                           ; $7f33: $00
    nop                                           ; $7f34: $00
    nop                                           ; $7f35: $00
    nop                                           ; $7f36: $00
    nop                                           ; $7f37: $00
    nop                                           ; $7f38: $00
    nop                                           ; $7f39: $00
    nop                                           ; $7f3a: $00
    nop                                           ; $7f3b: $00
    nop                                           ; $7f3c: $00
    nop                                           ; $7f3d: $00
    nop                                           ; $7f3e: $00
    nop                                           ; $7f3f: $00
    nop                                           ; $7f40: $00
    nop                                           ; $7f41: $00
    nop                                           ; $7f42: $00
    nop                                           ; $7f43: $00
    nop                                           ; $7f44: $00
    nop                                           ; $7f45: $00
    nop                                           ; $7f46: $00
    nop                                           ; $7f47: $00
    nop                                           ; $7f48: $00
    nop                                           ; $7f49: $00
    nop                                           ; $7f4a: $00
    nop                                           ; $7f4b: $00
    nop                                           ; $7f4c: $00
    nop                                           ; $7f4d: $00
    nop                                           ; $7f4e: $00
    nop                                           ; $7f4f: $00
    nop                                           ; $7f50: $00
    nop                                           ; $7f51: $00
    nop                                           ; $7f52: $00
    nop                                           ; $7f53: $00
    nop                                           ; $7f54: $00
    nop                                           ; $7f55: $00
    nop                                           ; $7f56: $00
    nop                                           ; $7f57: $00
    nop                                           ; $7f58: $00
    nop                                           ; $7f59: $00
    nop                                           ; $7f5a: $00
    nop                                           ; $7f5b: $00
    nop                                           ; $7f5c: $00
    nop                                           ; $7f5d: $00
    nop                                           ; $7f5e: $00
    nop                                           ; $7f5f: $00
    nop                                           ; $7f60: $00
    nop                                           ; $7f61: $00
    nop                                           ; $7f62: $00
    nop                                           ; $7f63: $00
    nop                                           ; $7f64: $00
    nop                                           ; $7f65: $00
    nop                                           ; $7f66: $00
    nop                                           ; $7f67: $00
    nop                                           ; $7f68: $00
    nop                                           ; $7f69: $00
    nop                                           ; $7f6a: $00
    nop                                           ; $7f6b: $00
    nop                                           ; $7f6c: $00
    nop                                           ; $7f6d: $00
    nop                                           ; $7f6e: $00
    nop                                           ; $7f6f: $00
    nop                                           ; $7f70: $00
    nop                                           ; $7f71: $00
    nop                                           ; $7f72: $00
    nop                                           ; $7f73: $00
    nop                                           ; $7f74: $00
    nop                                           ; $7f75: $00
    nop                                           ; $7f76: $00
    nop                                           ; $7f77: $00
    nop                                           ; $7f78: $00
    nop                                           ; $7f79: $00
    nop                                           ; $7f7a: $00
    nop                                           ; $7f7b: $00
    nop                                           ; $7f7c: $00
    nop                                           ; $7f7d: $00
    nop                                           ; $7f7e: $00
    nop                                           ; $7f7f: $00
    nop                                           ; $7f80: $00
    nop                                           ; $7f81: $00
    nop                                           ; $7f82: $00
    nop                                           ; $7f83: $00
    nop                                           ; $7f84: $00
    nop                                           ; $7f85: $00
    nop                                           ; $7f86: $00
    nop                                           ; $7f87: $00
    nop                                           ; $7f88: $00
    nop                                           ; $7f89: $00
    nop                                           ; $7f8a: $00
    nop                                           ; $7f8b: $00
    nop                                           ; $7f8c: $00
    nop                                           ; $7f8d: $00
    nop                                           ; $7f8e: $00
    nop                                           ; $7f8f: $00
    nop                                           ; $7f90: $00
    nop                                           ; $7f91: $00
    nop                                           ; $7f92: $00
    nop                                           ; $7f93: $00
    nop                                           ; $7f94: $00
    nop                                           ; $7f95: $00
    nop                                           ; $7f96: $00
    nop                                           ; $7f97: $00
    nop                                           ; $7f98: $00
    nop                                           ; $7f99: $00
    nop                                           ; $7f9a: $00
    nop                                           ; $7f9b: $00
    nop                                           ; $7f9c: $00
    nop                                           ; $7f9d: $00
    nop                                           ; $7f9e: $00
    nop                                           ; $7f9f: $00
    nop                                           ; $7fa0: $00
    nop                                           ; $7fa1: $00
    nop                                           ; $7fa2: $00
    nop                                           ; $7fa3: $00
    nop                                           ; $7fa4: $00
    nop                                           ; $7fa5: $00
    nop                                           ; $7fa6: $00
    nop                                           ; $7fa7: $00
    nop                                           ; $7fa8: $00
    nop                                           ; $7fa9: $00
    nop                                           ; $7faa: $00
    nop                                           ; $7fab: $00
    nop                                           ; $7fac: $00
    nop                                           ; $7fad: $00
    nop                                           ; $7fae: $00
    nop                                           ; $7faf: $00
    nop                                           ; $7fb0: $00
    nop                                           ; $7fb1: $00
    nop                                           ; $7fb2: $00
    nop                                           ; $7fb3: $00
    nop                                           ; $7fb4: $00
    nop                                           ; $7fb5: $00
    nop                                           ; $7fb6: $00
    nop                                           ; $7fb7: $00
    nop                                           ; $7fb8: $00
    nop                                           ; $7fb9: $00
    nop                                           ; $7fba: $00
    nop                                           ; $7fbb: $00
    nop                                           ; $7fbc: $00
    nop                                           ; $7fbd: $00
    nop                                           ; $7fbe: $00
    nop                                           ; $7fbf: $00
    nop                                           ; $7fc0: $00
    nop                                           ; $7fc1: $00
    nop                                           ; $7fc2: $00
    nop                                           ; $7fc3: $00
    nop                                           ; $7fc4: $00
    nop                                           ; $7fc5: $00
    nop                                           ; $7fc6: $00
    nop                                           ; $7fc7: $00
    nop                                           ; $7fc8: $00
    nop                                           ; $7fc9: $00
    nop                                           ; $7fca: $00
    nop                                           ; $7fcb: $00
    nop                                           ; $7fcc: $00
    nop                                           ; $7fcd: $00
    nop                                           ; $7fce: $00
    nop                                           ; $7fcf: $00
    nop                                           ; $7fd0: $00
    nop                                           ; $7fd1: $00
    nop                                           ; $7fd2: $00
    nop                                           ; $7fd3: $00
    nop                                           ; $7fd4: $00
    nop                                           ; $7fd5: $00
    nop                                           ; $7fd6: $00
    nop                                           ; $7fd7: $00
    nop                                           ; $7fd8: $00
    nop                                           ; $7fd9: $00
    nop                                           ; $7fda: $00
    nop                                           ; $7fdb: $00
    nop                                           ; $7fdc: $00
    nop                                           ; $7fdd: $00
    nop                                           ; $7fde: $00
    nop                                           ; $7fdf: $00
    nop                                           ; $7fe0: $00
    nop                                           ; $7fe1: $00
    nop                                           ; $7fe2: $00
    nop                                           ; $7fe3: $00
    nop                                           ; $7fe4: $00
    nop                                           ; $7fe5: $00
    nop                                           ; $7fe6: $00
    nop                                           ; $7fe7: $00
    nop                                           ; $7fe8: $00
    nop                                           ; $7fe9: $00
    nop                                           ; $7fea: $00
    nop                                           ; $7feb: $00
    nop                                           ; $7fec: $00
    nop                                           ; $7fed: $00
    nop                                           ; $7fee: $00
    nop                                           ; $7fef: $00
    nop                                           ; $7ff0: $00
    nop                                           ; $7ff1: $00
    nop                                           ; $7ff2: $00
    nop                                           ; $7ff3: $00
    nop                                           ; $7ff4: $00
    nop                                           ; $7ff5: $00
    nop                                           ; $7ff6: $00
    nop                                           ; $7ff7: $00
    nop                                           ; $7ff8: $00
    nop                                           ; $7ff9: $00
    nop                                           ; $7ffa: $00
    nop                                           ; $7ffb: $00
    nop                                           ; $7ffc: $00
    nop                                           ; $7ffd: $00
    nop                                           ; $7ffe: $00
    nop                                           ; $7fff: $00
