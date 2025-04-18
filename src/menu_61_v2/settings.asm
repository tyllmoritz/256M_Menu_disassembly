DEF MENU_61 EQU 1
; rgbfix-options: -p 0 --color-compatible --non-japanese -f lh -t "GB HICOL"        --mbc-type MBC1+RAM+BATTERY --old-licensee 0x01

DEF MAX_ROMS EQU 61
DEF ROMS_PER_PAGE EQU 11
DEF MENU_TITLE EQUS "\"   MC06  61IN1  \""
DEF GLOBAL_CHECKSUM EQUS "$3c, $08"
DEF FIRST_BYTES EQUS "$c4, $00, $2f, $00, $a8, $70, $2f"
