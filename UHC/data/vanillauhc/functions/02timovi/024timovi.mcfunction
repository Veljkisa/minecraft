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

#podesi timove
team modify Plavi color blue
team modify Crveni color red
team modify Zuti color yellow
team modify Zeleni color green

team modify Zuti friendlyFire false
team modify Crveni friendlyFire false
team modify Plavi friendlyFire false
team modify Zeleni friendlyFire false

#doda ljude u timove
team join Crveni @r[team=tim]
team join Zuti @r[team=tim]
team join Zeleni @r[team=tim]
team join Plavi @r[team=tim] 

team join Crveni @r[team=tim]
team join Zuti @r[team=tim]
team join Zeleni @r[team=tim]
team join Plavi @r[team=tim]

team join Crveni @r[team=tim]
team join Zuti @r[team=tim]
team join Zeleni @r[team=tim]
team join Plavi @r[team=tim]

team join Crveni @r[team=tim]
team join Zuti @r[team=tim]
team join Zeleni @r[team=tim]
team join Plavi @r[team=tim]

team join Crveni @r[team=tim]
team join Zuti @r[team=tim]
team join Zeleni @r[team=tim]
team join Plavi @r[team=tim]

#doda objective za killove
scoreboard objectives add Killovi playerKillCount 
scoreboard objectives setdisplay sidebar Killovi

#doda objectives 
scoreboard objectives add koordinate trigger
scoreboard objectives add tajmer trigger
scoreboard players set @a koordinate 1
scoreboard players set @a tajmer 1

#da svakom spyglass 
give @a minecraft:spyglass


