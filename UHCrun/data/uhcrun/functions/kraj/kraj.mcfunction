#podesi bossbar za deathmatch
bossbar set minecraft:bossbar max 300
bossbar set minecraft:bossbar name {"text":"Deathmatch","color":"dark_purple"}
bossbar set minecraft:bossbar color purple

#resetuje scoreboard vrednosti za $global da bi tajmer krenuo iz pocetka
scoreboard players set $global sekunde 0
scoreboard players set $global sekundeostale 300
scoreboard players set $global tikovi 0

effect give @a[gamemode=!spectator] minecraft:glowing 600
schedule function uhcrun:kraj/deathmatch 300s