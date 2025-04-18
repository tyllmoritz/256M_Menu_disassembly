DEF MENU_64_CN EQU 1
; rgbfix-options: -p 0 --color-compatible --non-japanese -f lh -t "GB HICOL"        --mbc-type MBC1+RAM+BATTERY --old-licensee 0x01

DEF MAX_ROMS EQU 64
DEF ROMS_PER_PAGE EQU 10
DEF MENU_TITLE EQUS "\"   MC07 108IN1  \""
DEF GLOBAL_CHECKSUM EQUS "$b6, $07"
DEF FIRST_BYTES EQUS "$0c, $00, $65, $00, $44, $62, $65"
