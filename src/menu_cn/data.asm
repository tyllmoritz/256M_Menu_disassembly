GraphicData::
    ds $4d8b - @, 0x00

;
db $01 ; subtitle length


ds $4df7 - @, 0xff

SubtitleCharacters::
    ds $4f3a - @, 0x00

UnknownData2:: ;GraphicData+$168
    ds $6cf7 - @, 0x00

UnknownData::
    ds $6f2f - @, 0x00
