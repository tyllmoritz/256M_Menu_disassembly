SECTION "HeaderGlobalChecksum", ROM0[$14E]
HeaderGlobalChecksum::
    db $67, $12

SECTION "Credits", ROM0[$150]
Jump_000_0150:
    db "256M ROM Builderby LK"

SECTION "Bank0 - 0xFF", ROM0[$200]
    ds $4000 - @, 0xFF
