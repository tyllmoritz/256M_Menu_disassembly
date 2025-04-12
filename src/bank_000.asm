; Disassembly of "menu.bin"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis


INCLUDE "rst_00.asm"

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

INCLUDE "JoypadTransitionInterrupt.asm"

SECTION "Boot", ROM0[$100]
Boot::
    nop
    jp $4000

SECTION "Header", ROM0[$104]
Header::
	ds $134	- @, 0xff ; fill header logo with 0xFF
	ds $14e - @, 0x00 ; fill header with zeroes


INCLUDE "header_checksum.asm"
