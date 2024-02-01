fill -8 220 -8 8 224 8 minecraft:air 

schedule clear vanillauhc:04pvp
schedule clear vanillauhc:obavestenja/min15pvp 
schedule clear vanillauhc:obavestenja/min10pvp
schedule clear vanillauhc:obavestenja/min05pvp
schedule clear vanillauhc:obavestenja/min15border 
schedule clear vanillauhc:obavestenja/min10border
schedule clear vanillauhc:obavestenja/min05border

worldborder set 30000000

gamerule doDaylightCycle true
gamerule naturalRegeneration true
gamerule announceAdvancements true
gamerule doWardenSpawning true
gamerule doInsomnia true
gamerule playersNetherPortalDefaultDelay 80

team remove PVP
team remove Crveni
team remove Zeleni
team remove Plavi
team remove Zuti
team remove Roze
team remove Narandzasti
team remove Cijan
team remove Ljubicasti
team remove tim
#team remove pvp

scoreboard objectives remove Srca
scoreboard objectives remove Killovi

scoreboard objectives remove Smrti
scoreboard objectives remove Pocetak
scoreboard objectives remove Kraj

scoreboard objectives remove dx 
scoreboard objectives remove dy 
scoreboard objectives remove dz 
scoreboard objectives remove X 
scoreboard objectives remove Y 
scoreboard objectives remove Z 

tag @a remove compare

gamemode survival @a 

effect clear @a 

