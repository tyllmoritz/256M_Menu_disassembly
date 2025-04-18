; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

IF !DEF(NUMBER_OF_ROMS)
    DEF NUMBER_OF_ROMS EQU MAX_ROMS
ENDC

DEF MAX_PAGES       EQU ( MAX_ROMS - 1 )       / ROMS_PER_PAGE
DEF NUMBER_OF_PAGES EQU ( NUMBER_OF_ROMS - 1 ) / ROMS_PER_PAGE

INCLUDE "hardware.inc"
INCLUDE "wram.asm"
INCLUDE "bank_000.asm"
INCLUDE "bank_001.asm"
