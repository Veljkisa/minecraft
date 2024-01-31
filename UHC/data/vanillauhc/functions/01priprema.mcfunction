time set 0
clear @a   
fill -5 220 -5 5 224 5 minecraft:barrier hollow
fill -5 224 -5 5 224 5 minecraft:air
tp @a 0 230 0
gamemode survival @a 

gamerule naturalRegeneration false
gamerule announceAdvancements false
gamerule doWardenSpawning false
gamerule doInsomnia false
gamerule playersNetherPortalDefaultDelay 1000000000
difficulty easy

worldborder center 0 0 
worldborder damage buffer 5
worldborder set 1500
worldborder warning distance 20

scoreboard objectives add Srca health
scoreboard objectives setdisplay below_name Srca
scoreboard objectives setdisplay list Srca
scoreboard objectives modify Srca rendertype hearts

effect give @a regeneration 1000 4

gamerule spawnRadius 3
setworldspawn 0 230 0

function vanillauhc:koorde/priprema

