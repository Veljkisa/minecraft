#poveca sekunde za 1 (znaci da je prosla 1 sekunda)
scoreboard players set $global sekunde 1

#vrati tikove na 0 kad dodju do 20 (20 tikova su 1 sekunda)
scoreboard players set $global tikovi 0

#oduzme 1 od sekundeostale (znaci da je prosla 1 vise sekunda)
scoreboard players operation $global sekundeostale -= $global sekunde

#postavi tajmer koristeci sekundeostale
execute store result bossbar minecraft:bossbar value run scoreboard players get $global sekundeostale

#pokaze svima tajmer koji imaju score tajmer postavljen na 1 (to je onaj trigger)
bossbar set minecraft:bossbar players @a[scores={tajmer=1..}]

#vrati sekunde na nula i proces se nastavlja iz pocetka kad prodju 20 tikova
scoreboard players set $global sekunde 0