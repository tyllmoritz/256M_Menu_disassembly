; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis


SECTION "RST_00", ROM0[$0]
RST_00::
IF DEF(FIRST_BYTES)
    db FIRST_BYTES
ENDC

SECTION "RST_08", ROM0[$8]
RST_08::

SECTION "RST_10", ROM0[$10]
RST_10::

SECTION "RST_18", ROM0[$18]
RST_18::

SECTION "RST_20", ROM0[$20]
RST_20::

SECTION "RST_28", ROM0[$28]
RST_28::

SECTION "RST_30", ROM0[$30]
RST_30::

SECTION "RST_38", ROM0[$38]
RST_38::

SECTION "VBlankInterrupt", ROM0[$40]
VBlankInterrupt::
    reti

SECTION "LCDCInterrupt", ROM0[$48]
LCDCInterrupt::
    reti

SECTION "TimerOverflowInterrupt", ROM0[$50]
TimerOverflowInterrupt::
    reti

SECTION "SerialTransferCompleteInterrupt", ROM0[$58]
SerialTransferCompleteInterrupt::
    reti

SECTION "JoypadTransitionInterrupt", ROM0[$60]
JoypadTransitionInterrupt::
    reti

INCLUDE "pre_header_code.asm"

SECTION "Boot", ROM0[$100]
Boot::
    nop
    jp $4000

SECTION "Header", ROM0[$104]
Header::
	ds $134	- @, 0xff ; fill header logo with 0xFF
	ds $14e - @, 0x00 ; fill header with zeroes

HeaderGlobalChecksum::
IF DEF(GLOBAL_CHECKSUM)
    db GLOBAL_CHECKSUM
ELSE
    db $00, $00
ENDC

Jump_000_0150:

IF DEF(CREDITS)
Credits:
    db CREDITS
ENDC

INCLUDE "bank0_code.asm"
