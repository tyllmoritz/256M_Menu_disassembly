all: menu.gbc menu_cn.gbc menu_18.gbc menu_19.gbc menu_20.gbc menu_22.gbc menu_61.gbc menu_108.gbc menu_64_cn.gbc menu_108_cn.gbc

IMAGE_DEPS = src/default/gfx/Super108In.2bpp src/default/gfx/Dots.2bpp src/default/gfx/Font.2bpp src/menu/gfx/Super108In.2bpp src/menu/gfx/Font.2bpp src/menu_cn/gfx/Super108In.2bpp src/menu_cn/gfx/Dots.2bpp src/menu_cn/gfx/Font.2bpp

menu_opt        = -p 0 --color-compatible --non-japanese -f h  -t "256MROMSET_0000" --mbc-type MBC5             --old-licensee 0x33 --sgb-compatible --rom-version 2
menu_cn_opt     = -p 0 --color-compatible --non-japanese -f h  -t "256MROMSET_0000" --mbc-type MBC5             --old-licensee 0x33 --sgb-compatible --rom-version 0x82
menu_18_opt     = -p 0 --color-compatible --non-japanese -f lh -t "GB HICOL"        --mbc-type MBC1+RAM+BATTERY --old-licensee 0x01 --ram-size 0x01
menu_19_opt     = -p 0 --color-compatible --non-japanese -f lh -t "GB HICOL"        --mbc-type MBC1+RAM+BATTERY --old-licensee 0x01 --ram-size 0x01
menu_20_opt     = -p 0 --color-compatible --non-japanese -f lh -t "GB HICOL"        --mbc-type MBC1+RAM+BATTERY --old-licensee 0x01 --ram-size 0x01
menu_22_opt     = -p 0 --color-compatible --non-japanese -f lh -t "GB HICOL"        --mbc-type MBC1+RAM+BATTERY --old-licensee 0x01
menu_61_opt     = -p 0 --color-compatible --non-japanese -f lh -t "GB HICOL"        --mbc-type MBC1+RAM+BATTERY --old-licensee 0x01
menu_64_cn_opt  = -p 0 --color-compatible --non-japanese -f lh -t "GB HiCol"        --mbc-type MBC1+RAM+BATTERY --old-licensee 0x01
menu_108_opt    = -p 0 --color-compatible --non-japanese -f lh -t "GB HICOL"        --mbc-type MBC1+RAM+BATTERY --old-licensee 0x01
menu_108_cn_opt = -p 0 --color-compatible --non-japanese -f lh -t "GB HiCol"        --mbc-type MBC1+RAM+BATTERY --old-licensee 0x01


%.2bpp: %.png
	rgbgfx -o $@ $<

%.1bpp: %.png
	rgbgfx -d 1 -o $@ $<

%.o: src/menu.asm %/*.asm $(IMAGE_DEPS)
	rgbasm --preinclude $*/settings.asm --include src --include $* --include src/default -o $@ $<

%.gbc: src/%.o
	rgblink -n $*.sym -m $*.map -o $@ $<
	rgbfix $($*_opt) $@

	@if which md5sum &>/dev/null; then md5sum $@; else md5 $@; fi

clean:
	rm -f src/menu{,_18,_19,_20,_22,_61,_108,_cn,_64_cn,_108_cn}.o
	rm -f menu{,_18,_19,_20,_22,_61,_108,_cn,_64_cn,_108_cn}.{gbc,sym,map}
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +
