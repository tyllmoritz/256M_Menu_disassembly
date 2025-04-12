; Disassembly of "menu.bin"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

IF !DEF(NUM_ITEMS_SETTING)
DEF NUM_ITEMS_SETTING EQU NUM_ITEMS
ENDC
DEF NUM_PAGES_SETTING EQU ( NUM_ITEMS_SETTING - 1 ) / ROMS_PER_PAGE

INCLUDE "hardware.inc"
INCLUDE "wram.asm"
INCLUDE "bank_000.asm"
INCLUDE "bank_001.asm"
