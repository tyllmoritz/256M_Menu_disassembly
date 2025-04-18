DEF MENU_18 EQU 1
; rgbfix-options: -p 0 --color-compatible --non-japanese -f lh -t "GB HICOL"        --mbc-type MBC1+RAM+BATTERY --old-licensee 0x01 --ram-size 0x01

DEF MAX_ROMS EQU 18
DEF ROMS_PER_PAGE EQU 6
DEF MENU_TITLE EQUS "\"   MC03  18IN1  \""
DEF GLOBAL_CHECKSUM EQUS "$c1, $7d"
DEF FIRST_BYTES EQUS "$c4, $00, $6f, $00, $f8, $b3, $6f"
