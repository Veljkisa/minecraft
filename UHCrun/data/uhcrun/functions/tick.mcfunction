#pokrene funkciju za koorde
function uhcrun:koorde/koorde 

#proverava etape
execute if score $global etapa matches 1 run execute as @a[tag=!cekanje] run function uhcrun:etapa/priprema
execute if score $global etapa matches 3.. run execute as @a[tag=!cekanje] run function uhcrun:etapa/pocetak
#execute as @a at @a[tag=cekanje] if block ~ ~-1 ~ minecraft:bedrock run function cekanje/nopvp

#prebaci na spectator sve koji su ubijeni
execute if score $global etapa matches 3.. as @a if score @s Smrti matches 1 run function uhcrun:etapa/pocetak

#spectator ne moze da se udalji od teammatea na survival vise od 16 bloka kad pocne pvp
execute if score $global etapa matches 4 run function uhcrun:spectator/spectator

#brise ench gold apple svima iz inv
#execute if score $global etapa matches 4 run clear @a[gamemode=survival] minecraft:enchanted_golden_apple

#proverava za pobednika
execute if score $global etapa matches 3.. run function uhcrun:pobeda/pobednik

#dodaje 1 na tickove svaki tick
scoreboard players add $global tikovi 1

#na svaka 20 ticka (1 sekunda) pokrene funkciju za bossbar (tajmer)
execute if score $global sekundeostale matches 0..1500 if score $global tikovi matches 20 run function uhcrun:bossbar/bossbar
#/execute store result bossbar minecraft:border value run scoreboard players get Veljkisha testBorder

#enebluje za trigger
scoreboard players enable @a koordinate
scoreboard players enable @a tajmer

#proverava da li je ukljucen scoreboard da pokaze timove
execute if score $global tim matches 0 run function uhcrun:knjiga/timovi

#funkcija koja daje xp kad se iskopaju odredjeni blokovi
execute as @a[gamemode=survival] run function uhcrun:xp/provera

#daje regen kad ubijes nekog jer nema head
execute as @a if score @s regen matches 1 run function uhcrun:regen/kill

function uhcrun:sansa/provera