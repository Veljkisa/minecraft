#stavi etapu na -1 da bi se sve zavrsilo
scoreboard players set $global etapa -1

#obavestenje i zvuk za pobedu
title @a title {"text":"Plavi tim pobedjuje","color":"blue"}
playsound minecraft:item.goat_horn.sound.6 ambient @a ~ ~2 ~ 100 1
