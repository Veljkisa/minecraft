#pokrene funkciju za koorde
function vanillauhc:koorde/koorde 

#proverava etape
execute if score $global etapa matches 1 run execute as @a[tag=!cekanje] run function vanillauhc:etapa/priprema
execute if score $global etapa matches 3 run execute as @a[tag=!cekanje] run function vanillauhc:etapa/pocetak
#execute as @a at @a[tag=cekanje] if block ~ ~-1 ~ minecraft:bedrock run function cekanje/nopvp

#prebaci na spectator sve koji su ubijeni
execute if score $global etapa matches 3 as @a if score @s Smrti matches 1 run function vanillauhc:etapa/pocetak 

#brise ench gold apple svima iz inv
execute if score $global godapple matches 0 run clear @a[gamemode=survival] minecraft:enchanted_golden_apple

#proverava za pobednika
execute if score $global etapa matches 3.. run function vanillauhc:pobeda/pobednik

#dodaje 1 na tickove svaki tick
scoreboard players add $global tikovi 1

#na svaka 20 ticka (1 sekunda) pokrene funkciju za bossbar (tajmer)
execute if score $global sekundeostale matches 0..1500 if score $global tikovi matches 20 run function vanillauhc:bossbar/bossbar
#/execute store result bossbar minecraft:border value run scoreboard players get Veljkisha testBorder

#enebluje za trigger
scoreboard players enable @a koordinate
scoreboard players enable @a tajmer