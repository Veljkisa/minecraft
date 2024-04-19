#stavi etapu na -1 da bi se sve zavrsilo
scoreboard players set $global etapa -1

#obavestenje i zvuk za pobedu
title @a title {"text":"Ljubicasti tim pobedjuje","color":"dark_purple"}
playsound minecraft:item.goat_horn.sound.6 ambient @a ~ ~2 ~ 100 1
