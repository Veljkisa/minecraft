worldborder set 1 1500
gamerule doDaylightCycle false
title @a title {"text": "BORDER SE SMANJUJE", "color": "dark_red"}
playsound minecraft:item.goat_horn.sound.2 ambient @a ~ ~2 ~ 100 1

scoreboard objectives add Kraj dummy
scoreboard players set @a Kraj 0

team modify PVP friendlyFire false

team modify Zuti friendlyFire true
team modify Crveni friendlyFire true
team modify Plavi friendlyFire true
team modify Zeleni friendlyFire true
team modify Roze friendlyFire true
team modify Narandzasti friendlyFire true
team modify Ljubicasti friendlyFire true
team modify Cijan friendlyFire true

schedule clear vanillauhc:04pvp
schedule clear vanillauhc:obavestenja/min15pvp 
schedule clear vanillauhc:obavestenja/min10pvp
schedule clear vanillauhc:obavestenja/min05pvp

schedule function vanillauhc:obavestenja/min15kraj 600s
schedule function vanillauhc:obavestenja/min10kraj 900s
schedule function vanillauhc:obavestenja/min05kraj 1200s