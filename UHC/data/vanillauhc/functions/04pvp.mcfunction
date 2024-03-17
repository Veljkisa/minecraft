#namesti worldborder
worldborder set 15 1500

#ugasi dan/noc i postavi difficulty na normal
gamerule doDaylightCycle false
difficulty normal 

#text kao title i zvuk
title @a title {"text": "BORDER SE SMANJUJE", "color": "dark_red"}
playsound minecraft:item.goat_horn.sound.2 ambient @a ~ ~2 ~ 100 1

#upali pvp za sve timove
team modify Zuti friendlyFire true
team modify Crveni friendlyFire true
team modify Plavi friendlyFire true
team modify Zeleni friendlyFire true
team modify Roze friendlyFire true
team modify Narandzasti friendlyFire true
team modify Ljubicasti friendlyFire true
team modify Cijan friendlyFire true

#ugasi tajmer za funkcije ako se manuelno upali
schedule clear vanillauhc:04pvp
schedule clear vanillauhc:obavestenja/min15pvp 
schedule clear vanillauhc:obavestenja/min10pvp
schedule clear vanillauhc:obavestenja/min05pvp

#postavi tajmer za ostale funkcije
schedule function vanillauhc:obavestenja/min15kraj 600s
schedule function vanillauhc:obavestenja/min10kraj 900s
schedule function vanillauhc:obavestenja/min05kraj 1200s
schedule function vanillauhc:kraj/kraj 1500s

#tajmer kao bossbar za kraj
bossbar set minecraft:bossbar name {"text":"Kraj","color":"red"}
bossbar set minecraft:bossbar color red

#resetuje scoreboard vrednosti za $global da bi tajmer krenuo iz pocetka
scoreboard players set $global sekunde 0
scoreboard players set $global sekundeostale 1500
scoreboard players set $global tikovi 0

#postavi etapu
scoreboard players set $global etapa 4
