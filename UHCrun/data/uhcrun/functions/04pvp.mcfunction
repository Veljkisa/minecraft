#namesti worldborder
worldborder set 15 1200

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
schedule clear uhcrun:04pvp
schedule clear uhcrun:obavestenja/min10pvp
schedule clear uhcrun:obavestenja/min05pvp
schedule clear uhcrun:obavestenja/min01pvp
schedule clear uhcrun:obavestenja/min15kraj
schedule clear uhcrun:obavestenja/min10kraj
schedule clear uhcrun:obavestenja/min05kraj
schedule clear uhcrun:obavestenja/min01kraj

#postavi tajmer za ostale funkcije
schedule function uhcrun:obavestenja/min15kraj 300s
schedule function uhcrun:obavestenja/min10kraj 600s
schedule function uhcrun:obavestenja/min05kraj 900s
#dodam za 1min
schedule function uhcrun:kraj/kraj 1200s

#tajmer kao bossbar za kraj
bossbar set minecraft:bossbar name {"text":"Kraj","color":"red"}
bossbar set minecraft:bossbar color red
bossbar set minecraft:bossbar max 1200

#resetuje scoreboard vrednosti za $global da bi tajmer krenuo iz pocetka
scoreboard players set $global sekunde 0
scoreboard players set $global sekundeostale 1200
scoreboard players set $global tikovi 0

#postavi etapu
scoreboard players set $global etapa 4