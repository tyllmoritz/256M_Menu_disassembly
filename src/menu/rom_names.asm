GraphicData::
    ds $4EA0 - @, 0x00

UnknownData::

MenuText::
    REPT NUM_ITEMS
        db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    ENDR

BottomText::
    REPT NUM_ITEMS
        db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    ENDR
