execute at @a[scores={Smrti=1}] run setblock ~ ~ ~ minecraft:player_head

gamemode spectator @a[gamemode=survival,scores={Pocetak=1,Smrti=1}]

scoreboard players set @a[gamemode=spectator] Smrti 0

clear @a[gamemode=survival] minecraft:enchanted_golden_apple

execute if entity @a[scores={Kraj=0}] run function vanillauhc:pobeda/pobednik

execute as @a if score @s Priprema matches 1 run effect give @a regeneration 1000 4

function vanillauhc:koorde/koorde 
