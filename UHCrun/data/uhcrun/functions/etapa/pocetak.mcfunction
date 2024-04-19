#funkciju pokrene onaj ko treba da se prebaci na spectator
gamemode spectator @s 

#daje night vision
effect give @s minecraft:night_vision infinite 

#daje tag cekanje (ako neko udje dok game traje)
tag @s add cekanje

#vraca smrti na 0 onima koji su u spectator (ako umre neko dok game traje)
scoreboard players set @a[gamemode=spectator] Smrti 0 