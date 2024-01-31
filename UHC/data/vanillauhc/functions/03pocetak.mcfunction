effect clear @a 
clear @a 
xp set @a 0 points
xp set @a 0 levels
gamemode survival @a
gamerule doDaylightCycle true
time set 0
tp @a 0 250 0 
fill -5 220 -5 5 224 5 minecraft:air 
spreadplayers 0 0 400 750 true @a

effect give @a saturation 10 10
effect give @a regeneration 10 10
effect give @a resistance 300 10

schedule function vanillauhc:obavestenja/min15pvp 600s
schedule function vanillauhc:obavestenja/min10pvp 900s
schedule function vanillauhc:obavestenja/min05pvp 1200s
schedule function vanillauhc:04pvp 1500s

title @a title {"text": "START", "color": "red"}
    playsound minecraft:item.goat_horn.sound.0 ambient @a ~ ~2 ~ 100 1

worldborder center 0 0 
worldborder damage buffer 5
worldborder set 1500
worldborder warning distance 20

gamemode spectator @a[team=tim]

give @a potion{Potion:"minecraft:strong_healing"} 1

scoreboard objectives add Pocetak dummy
scoreboard players set @a Pocetak 1

scoreboard objectives add Smrti deathCount
