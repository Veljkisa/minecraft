time set 0
clear @a   
fill -8 220 -8 8 224 8 minecraft:barrier hollow
fill -8 224 -8 8 224 8 minecraft:air
tp @a 0 230 0
gamemode survival @a

gamerule naturalRegeneration false
gamerule announceAdvancements false
gamerule doWardenSpawning false
gamerule doInsomnia false
gamerule keepInventory true
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

scoreboard objectives add Priprema dummy
scoreboard players set @a Priprema 1

