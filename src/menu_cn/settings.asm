DEF MENU_CN EQU 1
; rgbfix-options: -p 0 --color-compatible --non-japanese -f h  -t "256MROMSET_0000" --mbc-type MBC5             --old-licensee 0x33 --sgb-compatible --rom-version 0x82

DEF MAX_ROMS EQU 108
DEF NUMBER_OF_ROMS EQU 1
DEF ROMS_PER_PAGE EQU 10
DEF MENU_TITLE EQUS "\"256M COLLECTION \""
DEF CREDITS EQUS "\"256M ROM Builderby LK\""
DEF GLOBAL_CHECKSUM EQUS "$17, $df"
DEF FIRST_BYTES EQUS "$c4, $00, $78, $00, $a0, $60, $78"
