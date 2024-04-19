#clearuje sve
effect clear @a 
clear @a 

#skloni levele
xp set @a 0 points
xp set @a 0 levels

#gamerules
gamerule keepInventory false

#prebaci na gamemode sve
gamemode survival @a
gamemode spectator @a[team=tim]

#skloni sobu za cekanje
fill -13 220 -13 13 224 13 minecraft:air 

#teleportuje igrace na random deo mape
time set 0
tp @a 0 250 0 
spreadplayers 0 0 250 500 true @a

#daje efekte za pocetak i potion
effect give @a saturation 10 10
effect give @a regeneration 10 10
effect give @a resistance 60 10

#tajmer za ostale funkcije
schedule function uhcrun:obavestenja/min10pvp 300s
schedule function uhcrun:obavestenja/min05pvp 600s
schedule function uhcrun:obavestenja/min01pvp 840s
schedule function uhcrun:04pvp 900s
#dodati funkcije za 1min i za dmg
function uhcrun:recepti/recepti

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
scoreboard players set $global sekundeostale 900

#skloni scoreboard za timove
scoreboard objectives remove timovi
scoreboard objectives remove tim

#napravi bossbar za tajmer
bossbar add bossbar {"text":"Border","color":"white"}
bossbar set minecraft:bossbar color white
bossbar set minecraft:bossbar max 900
bossbar set minecraft:bossbar style notched_20

#obrise sve ispaljene strele i iteme na zemlji
kill @e[type=item]
kill @e[type=arrow]

#doda objective za killove
scoreboard objectives add Killovi playerKillCount 
scoreboard objectives add regen playerKillCount 
scoreboard objectives setdisplay sidebar Killovi

#daje starting tools
give @a minecraft:stone_axe
give @a minecraft:stone_pickaxe

effect give @a minecraft:absorption 900 1