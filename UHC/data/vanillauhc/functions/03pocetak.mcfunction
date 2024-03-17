#clearuje sve
effect clear @a 
clear @a 

#skloni levele
xp set @a 0 points
xp set @a 0 levels

#gamerules
gamerule doDaylightCycle true
gamerule keepInventory false

#prebaci na gamemode sve
gamemode survival @a
gamemode spectator @a[team=tim]

#skloni sobu za cekanje
fill -13 220 -13 13 224 13 minecraft:air 

#teleportuje igrace na random deo mape
time set 0
tp @a 0 250 0 
spreadplayers 0 0 400 750 true @a

#daje efekte za pocetak i potion
effect give @a saturation 10 10
effect give @a regeneration 10 10
effect give @a resistance 300 10
give @a potion{Potion:"minecraft:strong_healing"} 1

#tajmer za ostale funkcije
schedule function vanillauhc:obavestenja/min15pvp 600s
schedule function vanillauhc:obavestenja/min10pvp 900s
schedule function vanillauhc:obavestenja/min05pvp 1200s
schedule function vanillauhc:04pvp 1500s
function vanillauhc:recepti/recepti

#text kao title i zvuk
title @a title {"text": "START", "color": "red"}
playsound minecraft:item.goat_horn.sound.0 ambient @a ~ ~2 ~ 100 1

#doda objective smrti koji sluzi da prebaci na spectator
scoreboard objectives add Smrti deathCount

#postavi etapu
scoreboard players set $global etapa 3

#doda scoreboar za tikove,sekunde, sekundeostale za $global 
scoreboard objectives add tikovi dummy
scoreboard players set $global tikovi 0
scoreboard objectives add sekunde dummy
scoreboard players set $global sekunde 0
scoreboard objectives add sekundeostale dummy
scoreboard players set $global sekundeostale 1500

#skloni scoreboard za timove
scoreboard objectives remove timovi
scoreboard objectives remove tim

#napravi bossbar za tajmer
bossbar add bossbar {"text":"Border","color":"white"}
bossbar set minecraft:bossbar color white
bossbar set minecraft:bossbar max 1500
bossbar set minecraft:bossbar style notched_20

#obrise sve ispaljene strele i iteme na zemlji
kill @e[type=item]
kill @e[type=arrow]

#doda objective za killove
scoreboard objectives add Killovi playerKillCount 
scoreboard objectives setdisplay sidebar Killovi