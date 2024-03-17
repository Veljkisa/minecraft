#clearuje sve 
clear @a
effect give @a resistance 1000 10

#ugasi pripremu
scoreboard objectives remove Priprema

#podesi no team tim
team add tim
team join tim @a

#napravi timove
team add Crveni
team add Zeleni
team add Plavi
team add Zuti
team add Roze
team add Narandzasti
team add Ljubicasti
team add Cijan

#podesi timove
team modify Plavi color blue
team modify Crveni color red
team modify Zuti color yellow
team modify Zeleni color green
team modify Roze color light_purple 
team modify Narandzasti color gold
team modify Ljubicasti color dark_purple
team modify Cijan color dark_aqua 

team modify Zuti friendlyFire false
team modify Crveni friendlyFire false
team modify Plavi friendlyFire false
team modify Zeleni friendlyFire false
team modify Roze friendlyFire false
team modify Narandzasti friendlyFire false
team modify Ljubicasti friendlyFire false
team modify Cijan friendlyFire false

#doda objectives 
scoreboard objectives add koordinate trigger
scoreboard objectives add tajmer trigger
scoreboard players set @a koordinate 1
scoreboard players set @a tajmer 1

#da svakom spyglass 
give @a minecraft:spyglass

#daje knjigu ako je ukljucena
execute if score $global knjiga matches 1 run function vanillauhc:00knjiga