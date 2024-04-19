#skloni sobu za cekanje ako je tu
fill -13 220 -13 13 224 13 minecraft:air 

#ugasi tajmer za sve funkcije
schedule clear uhcrun:04pvp
schedule clear uhcrun:obavestenja/min10pvp
schedule clear uhcrun:obavestenja/min05pvp
schedule clear uhcrun:obavestenja/min01pvp
schedule clear uhcrun:obavestenja/min15kraj
schedule clear uhcrun:obavestenja/min10kraj
schedule clear uhcrun:obavestenja/min05kraj
schedule clear uhcrun:obavestenja/min01kraj
schedule clear uhcrun:kraj/kraj
schedule clear uhcrun:kraj/glowing

#vrati worldborder na default
worldborder set 30000000

#vrati sve gamerule na default
gamerule doDaylightCycle true
gamerule naturalRegeneration true
gamerule announceAdvancements true
gamerule doWardenSpawning true
gamerule doInsomnia true
gamerule keepInventory false
gamerule doMobSpawning true
gamerule playersNetherPortalDefaultDelay 80

#skloni sve timove koji su bili tokom igre
team remove Crveni
team remove Zeleni
team remove Plavi
team remove Zuti
team remove Roze
team remove Narandzasti
team remove Cijan
team remove Ljubicasti
team remove tim

#skloni sve objectives koji su bili tokom igre
scoreboard objectives remove Srca
scoreboard objectives remove Killovi
scoreboard objectives remove Smrti
#scoreboard objectives remove Pocetak
scoreboard objectives remove Kraj
scoreboard objectives remove etapa

#skloni objectives za koordinate
scoreboard objectives remove dx 
scoreboard objectives remove dy 
scoreboard objectives remove dz 
scoreboard objectives remove X 
scoreboard objectives remove Y 
scoreboard objectives remove Z 

#clearuje sve i prebaci na survival
effect clear @a 
clear @a 
gamemode survival @a 

#skloni sve objectives za vreme
scoreboard objectives remove tikovi
scoreboard objectives remove sekunde
scoreboard objectives remove sekundeostale

#skloni triggere za tajmer i koordinate
scoreboard objectives remove tajmer 
scoreboard objectives remove koordinate 

#skloni tajmer kao bossbar
bossbar remove minecraft:bossbar

#skloni tagove koji su bili tokom igre
tag @a remove cekanje
tag @a remove compare

#skloni scoreboard za timove
scoreboard objectives remove timovi
scoreboard objectives remove tim

#skloni scoreboard za knjigu
scoreboard objectives remove knjiga