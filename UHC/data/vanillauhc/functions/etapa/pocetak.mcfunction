#funkciju pokrene onaj ko treba da se prebaci na spectator
gamemode spectator @s 

#postavlja player head ako je umro u toku igre
execute if score @s Smrti matches 1 at @s run setblock ~ ~ ~ minecraft:player_head

#daje night vision
effect give @s minecraft:night_vision infinite 

#daje tag cekanje (ako neko udje dok game traje)
tag @s add cekanje

#vraca smrti na 0 onima koji su u spectator (ako umre neko dok game traje)
scoreboard players set @a[gamemode=spectator] Smrti 0 