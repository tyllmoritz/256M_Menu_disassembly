DEF MENU_20 EQU 1
; rgbfix-options: -p 0 --color-compatible --non-japanese -f lh -t "GB HICOL"        --mbc-type MBC1+RAM+BATTERY --old-licensee 0x01 --ram-size 0x01

DEF MAX_ROMS EQU 20
DEF ROMS_PER_PAGE EQU 6
DEF MENU_TITLE EQUS "\"   MC01  20IN1  \""
DEF GLOBAL_CHECKSUM EQUS "$02, $7d"
DEF FIRST_BYTES EQUS "$c4, $00, $3e, $00, $28, $b4, $3e"
