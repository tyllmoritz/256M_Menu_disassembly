rwildcard=$(wildcard $1$2) $(foreach d,$(wildcard $1*),$(call rwildcard,$d/,$2))

ALL_TARGETS := $(wildcard src/*/settings.asm)
IMAGE_DEPS = $(patsubst %.png,%.2bpp,$(call rwildcard,src/,*.png))

all: $(patsubst src/%/settings.asm,%.gbc,$(ALL_TARGETS))

%.2bpp: %.png
	rgbgfx -o $@ $<

%.1bpp: %.png
	rgbgfx -d 1 -o $@ $<

%.o: src/menu.asm %/*.asm $(IMAGE_DEPS)
	rgbasm --preinclude $*/settings.asm --include src --include $* --include src/default -o $@ $<

%.gbc: src/%.o
	rgblink -n $*.sym -m $*.map -o $@ $<
	rgbfix $(shell sed -n 's/^; rgbfix-options: \(.*\)$$/\1/p' src/$*/settings.asm) $@

	@if which md5sum &>/dev/null; then md5sum $@; else md5 $@; fi

clean:
	rm -f $(patsubst %/settings.asm,%.o,$(ALL_TARGETS)) \
	      $(patsubst src/%/settings.asm,%.gbc,$(ALL_TARGETS)) \
	      $(patsubst src/%/settings.asm,%.sym,$(ALL_TARGETS)) \
	      $(patsubst src/%/settings.asm,%.map,$(ALL_TARGETS)) \
	      $(IMAGE_DEPS)
