#schedule funkcije kad dodje kraj za glowing
schedule function vanillauhc:kraj/glowing 150s

#podesi bossbar za glowing
bossbar set minecraft:bossbar max 150
bossbar set minecraft:bossbar name {"text":"Glowing","color":"yellow"}
bossbar set minecraft:bossbar color yellow

#resetuje scoreboard vrednosti za $global da bi tajmer krenuo iz pocetka
scoreboard players set $global sekunde 0
scoreboard players set $global sekundeostale 150
scoreboard players set $global tikovi 0