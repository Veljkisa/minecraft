#stavi etapu na -1 da bi se sve zavrsilo
scoreboard players set $global etapa -1

#obavestenje i zvuk za pobedu
title @a title {"text":"Zuti tim pobedjuje","color":"yellow"}
playsound minecraft:item.goat_horn.sound.6 ambient @a ~ ~2 ~ 100 1
