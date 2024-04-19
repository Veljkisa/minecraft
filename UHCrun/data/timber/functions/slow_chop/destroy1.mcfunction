# api
execute as @e[type=minecraft:marker,tag=timber_destroy,sort=nearest,limit=1] at @s run function timber:slow_chop/api

# destroy 1 block
execute as @e[type=minecraft:armor_stand,tag=timber_tool,y=0,distance=...1,sort=arbitrary,limit=1] at @e[type=minecraft:marker,tag=timber_destroy,sort=nearest,limit=1] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand

# destroy animation
gamerule doTileDrops false
execute at @e[type=minecraft:marker,tag=timber_destroy,sort=nearest,limit=1] run setblock ~ ~ ~ minecraft:air destroy
gamerule doTileDrops true

# stop sound
execute if score stopsound timber matches 1.. at @e[type=minecraft:marker,tag=timber_destroy,sort=nearest,limit=1] as @a[distance=..20,tag=!global.ignore.gui] run function timber:utils/stopsound

# delete location item
execute at @e[type=minecraft:marker,tag=timber_destroy,sort=nearest,limit=1] run kill @e[type=minecraft:item,distance=..1,nbt={Item:{tag:{Tags:["timber_location"]}}}]

# remove marker of processed blocks
kill @e[type=minecraft:marker,tag=timber_destroy,sort=nearest,limit=1]

scoreboard players add b_p_c timber 1