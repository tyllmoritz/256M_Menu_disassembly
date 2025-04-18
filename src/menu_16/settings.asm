DEF MENU_16 EQU 1
; rgbfix-options: -p 0 --color-compatible --non-japanese -f lh -t "GB HICOL"        --mbc-type MBC1+RAM+BATTERY --old-licensee 0x01

DEF MAX_ROMS EQU 16
DEF ROMS_PER_PAGE EQU 6
DEF MENU_TITLE EQUS "\"  VAR001  16IN1 \""
DEF GLOBAL_CHECKSUM EQUS "$bb, $f9"
DEF FIRST_BYTES EQUS "$c4, $00, $53, $00, $b8, $b1, $53"
