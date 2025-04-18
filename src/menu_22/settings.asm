DEF MENU_22 EQU 1
; rgbfix-options: -p 0 --color-compatible --non-japanese -f lh -t "GB HICOL"        --mbc-type MBC1+RAM+BATTERY --old-licensee 0x01

DEF MAX_ROMS EQU 22
DEF ROMS_PER_PAGE EQU 6
DEF MENU_TITLE EQUS "\"   MC04  22IN1  \""
DEF GLOBAL_CHECKSUM EQUS "$02, $7d"
DEF FIRST_BYTES EQUS "$c4, $00, $3d, $00, $88, $b4, $3d"
