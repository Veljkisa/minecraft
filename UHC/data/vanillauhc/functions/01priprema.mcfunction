#priprema
time set 0
clear @a
gamemode survival @a

#napravi waiting room
fill -13 220 -13 13 224 13 minecraft:barrier hollow
fill -13 224 -13 13 224 13 minecraft:air

#tp sve do waiting room
schedule function vanillauhc:teleport/teleport 3s

#za worldspawn i spawnpoint
gamerule spawnRadius 3
setworldspawn 0 230 0

#gamerules
gamerule naturalRegeneration false
gamerule announceAdvancements false
gamerule doWardenSpawning false
gamerule doInsomnia false
gamerule keepInventory true
gamerule playersNetherPortalDefaultDelay 1000000000
difficulty easy


#border
worldborder center 0 0 
worldborder damage buffer 5
worldborder set 1500
worldborder warning distance 20

#objective za srca (da pokazuje na Tab i ispod imena)
scoreboard objectives add Srca health
scoreboard objectives setdisplay below_name Srca
scoreboard objectives setdisplay list Srca
scoreboard objectives modify Srca rendertype hearts

#funkcija koja pripremi koorde
function vanillauhc:koorde/priprema

#globalna promeljniva sto pokazuje koja je etapa
scoreboard objectives add etapa dummy
scoreboard players set $global etapa 1
tag @a remove cekanje
