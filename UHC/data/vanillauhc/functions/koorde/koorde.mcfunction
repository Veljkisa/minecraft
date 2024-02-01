tag @a remove compare
tag @a[gamemode=!spectator] add compare
execute as @a[tag=compare] store result score @s X run data get entity @s Pos[0]
execute as @a[tag=compare] store result score @s Y run data get entity @s Pos[1]
execute as @a[tag=compare] store result score @s Z run data get entity @s Pos[2]

scoreboard players set @a dx 0
scoreboard players set @a dy 0
scoreboard players set @a dz 0

execute as @a[tag=compare] at @s run scoreboard players operation @s dx -= @s X
execute as @a[tag=compare] at @s run scoreboard players operation @s dy -= @s Y
execute as @a[tag=compare] at @s run scoreboard players operation @s dz -= @s Z


execute as @a[team=Zuti] at @s run scoreboard players operation @s dx += @a[tag=compare,sort=nearest,limit=1,team=Zuti,distance=0.1..] X
execute as @a[team=Zuti] at @s run scoreboard players operation @s dy += @a[tag=compare,sort=nearest,limit=1,team=Zuti,distance=0.1..] Y
execute as @a[team=Zuti] at @s run scoreboard players operation @s dz += @a[tag=compare,sort=nearest,limit=1,team=Zuti,distance=0.1..] Z

execute as @a[team=Plavi] at @s run scoreboard players operation @s dx += @a[tag=compare,sort=nearest,limit=1,team=Plavi,distance=0.1..] X
execute as @a[team=Plavi] at @s run scoreboard players operation @s dy += @a[tag=compare,sort=nearest,limit=1,team=Plavi,distance=0.1..] Y
execute as @a[team=Plavi] at @s run scoreboard players operation @s dz += @a[tag=compare,sort=nearest,limit=1,team=Plavi,distance=0.1..] Z 

execute as @a[team=Zeleni] at @s run scoreboard players operation @s dx += @a[tag=compare,sort=nearest,limit=1,team=Zeleni,distance=0.1..] X
execute as @a[team=Zeleni] at @s run scoreboard players operation @s dy += @a[tag=compare,sort=nearest,limit=1,team=Zeleni,distance=0.1..] Y
execute as @a[team=Zeleni] at @s run scoreboard players operation @s dz += @a[tag=compare,sort=nearest,limit=1,team=Zeleni,distance=0.1..] Z 

execute as @a[team=Crveni] at @s run scoreboard players operation @s dx += @a[tag=compare,sort=nearest,limit=1,team=Crveni,distance=0.1..] X
execute as @a[team=Crveni] at @s run scoreboard players operation @s dy += @a[tag=compare,sort=nearest,limit=1,team=Crveni,distance=0.1..] Y
execute as @a[team=Crveni] at @s run scoreboard players operation @s dz += @a[tag=compare,sort=nearest,limit=1,team=Crveni,distance=0.1..] Z 

execute as @a[team=Roze] at @s run scoreboard players operation @s dx += @a[tag=compare,sort=nearest,limit=1,team=Roze,distance=0.1..] X
execute as @a[team=Roze] at @s run scoreboard players operation @s dy += @a[tag=compare,sort=nearest,limit=1,team=Roze,distance=0.1..] Y
execute as @a[team=Roze] at @s run scoreboard players operation @s dz += @a[tag=compare,sort=nearest,limit=1,team=Roze,distance=0.1..] Z

execute as @a[team=Narandzasti] at @s run scoreboard players operation @s dx += @a[tag=compare,sort=nearest,limit=1,team=Narandzasti,distance=0.1..] X
execute as @a[team=Narandzasti] at @s run scoreboard players operation @s dy += @a[tag=compare,sort=nearest,limit=1,team=Narandzasti,distance=0.1..] Y
execute as @a[team=Narandzasti] at @s run scoreboard players operation @s dz += @a[tag=compare,sort=nearest,limit=1,team=Narandzasti,distance=0.1..] Z 

execute as @a[team=Ljubicasti] at @s run scoreboard players operation @s dx += @a[tag=compare,sort=nearest,limit=1,team=Ljubicasti,distance=0.1..] X
execute as @a[team=Ljubicasti] at @s run scoreboard players operation @s dy += @a[tag=compare,sort=nearest,limit=1,team=Ljubicasti,distance=0.1..] Y
execute as @a[team=Ljubicasti] at @s run scoreboard players operation @s dz += @a[tag=compare,sort=nearest,limit=1,team=Ljubicasti,distance=0.1..] Z

execute as @a[team=Cijan] at @s run scoreboard players operation @s dx += @a[tag=compare,sort=nearest,limit=1,team=Cijan,distance=0.1..] X
execute as @a[team=Cijan] at @s run scoreboard players operation @s dy += @a[tag=compare,sort=nearest,limit=1,team=Cijan,distance=0.1..] Y
execute as @a[team=Cijan] at @s run scoreboard players operation @s dz += @a[tag=compare,sort=nearest,limit=1,team=Cijan,distance=0.1..] Z





#title @s actionbar {"text":"Nearest Entity: ","color":"gold","extra":[{"selector":"@e[tag=compare,sort=furthest,limit=1]","color":"white"},{"text":" || dx: "},{"selector":"@e[tag=negx]"},{"score":{"name":"@e[tag=compare,sort=furthest,limit=1]","objective":"dx"},"color":"red"},{"text":"."},{"score":{"name":"@s","objective":"dx"},"color":"red"},{"text":" dy: "},{"selector":"@e[tag=negy]"},{"score":{"name":"@e[tag=compare,sort=furthest,limit=1]","objective":"dy"},"color":"green"},{"text":"."},{"score":{"name":"@s","objective":"dy"},"color":"green"},{"text":" dz: "},{"selector":"@e[tag=negz]"},{"score":{"name":"@e[tag=compare,sort=furthest,limit=1]","objective":"dz"},"color":"blue"},{"text":"."},{"score":{"name":"@s","objective":"dz"},"color":"blue"}]}

execute as @a[team=Zuti,gamemode=!spectator] at @s run title @s actionbar [{"text":"X: ","color":"white"},{"score":{"name":"@s","objective":"X"}},{"text":" / Y: "},{"score":{"name":"@s","objective":"Y"}},{"text":" / Z: "},{"score":{"name":"@s","objective":"Z"}},{"text":" "},{"text":" "},{"text":" "},{"selector":"@a[tag=compare,sort=nearest,team=Zuti,limit=1,distance=0.1..]","color":"yellow"},{"text":" dX: ","color":"yellow"},{"score":{"name":"@s","objective":"dx"},"color":"yellow"},{"text":" / dY: ","color":"yellow"},{"score":{"name":"@s","objective":"dy"},"color":"yellow"},{"text":" / dZ: ","color":"yellow"},{"score":{"name":"@s","objective":"dz"},"color":"yellow"}]

execute as @a[team=Plavi,gamemode=!spectator] at @s run title @s actionbar [{"text":"X: ","color":"white"},{"score":{"name":"@s","objective":"X"}},{"text":" / Y: "},{"score":{"name":"@s","objective":"Y"}},{"text":" / Z: "},{"score":{"name":"@s","objective":"Z"}},{"text":" "},{"text":" "},{"text":" "},{"selector":"@a[tag=compare,sort=nearest,team=Plavi,limit=1,distance=0.1..]","color":"blue"},{"text":" dX: ","color":"blue"},{"score":{"name":"@s","objective":"dx"},"color":"blue"},{"text":" / dY: ","color":"blue"},{"score":{"name":"@s","objective":"dy"},"color":"blue"},{"text":" / dZ: ","color":"blue"},{"score":{"name":"@s","objective":"dz"},"color":"blue"}]

execute as @a[team=Zeleni,gamemode=!spectator] at @s run title @s actionbar [{"text":"X: ","color":"white"},{"score":{"name":"@s","objective":"X"}},{"text":" / Y: "},{"score":{"name":"@s","objective":"Y"}},{"text":" / Z: "},{"score":{"name":"@s","objective":"Z"}},{"text":" "},{"text":" "},{"text":" "},{"selector":"@a[tag=compare,sort=nearest,team=Zeleni,limit=1,distance=0.1..]","color":"green"},{"text":" dX: ","color":"green"},{"score":{"name":"@s","objective":"dx"},"color":"green"},{"text":" / dY: ","color":"green"},{"score":{"name":"@s","objective":"dy"},"color":"green"},{"text":" / dZ: ","color":"green"},{"score":{"name":"@s","objective":"dz"},"color":"green"}]

execute as @a[team=Crveni,gamemode=!spectator] at @s run title @s actionbar [{"text":"X: ","color":"white"},{"score":{"name":"@s","objective":"X"}},{"text":" / Y: "},{"score":{"name":"@s","objective":"Y"}},{"text":" / Z: "},{"score":{"name":"@s","objective":"Z"}},{"text":" "},{"text":" "},{"text":" "},{"selector":"@a[tag=compare,sort=nearest,team=Crveni,limit=1,distance=0.1..]","color":"red"},{"text":" dX: ","color":"red"},{"score":{"name":"@s","objective":"dx"},"color":"red"},{"text":" / dY: ","color":"red"},{"score":{"name":"@s","objective":"dy"},"color":"red"},{"text":" / dZ: ","color":"red"},{"score":{"name":"@s","objective":"dz"},"color":"red"}]

execute as @a[team=Roze,gamemode=!spectator] at @s run title @s actionbar [{"text":"X: ","color":"white"},{"score":{"name":"@s","objective":"X"}},{"text":" / Y: "},{"score":{"name":"@s","objective":"Y"}},{"text":" / Z: "},{"score":{"name":"@s","objective":"Z"}},{"text":" "},{"text":" "},{"text":" "},{"selector":"@a[tag=compare,sort=nearest,team=Roze,limit=1,distance=0.1..]","color":"light_purple"},{"text":" dX: ","color":"light_purple"},{"score":{"name":"@s","objective":"dx"},"color":"light_purple"},{"text":" / dY: ","color":"light_purple"},{"score":{"name":"@s","objective":"dy"},"color":"light_purple"},{"text":" / dZ: ","color":"light_purple"},{"score":{"name":"@s","objective":"dz"},"color":"light_purple"}]

execute as @a[team=Narandzasti,gamemode=!spectator] at @s run title @s actionbar [{"text":"X: ","color":"white"},{"score":{"name":"@s","objective":"X"}},{"text":" / Y: "},{"score":{"name":"@s","objective":"Y"}},{"text":" / Z: "},{"score":{"name":"@s","objective":"Z"}},{"text":" "},{"text":" "},{"text":" "},{"selector":"@a[tag=compare,sort=nearest,team=Narandzasti,limit=1,distance=0.1..]","color":"gold"},{"text":" dX: ","color":"gold"},{"score":{"name":"@s","objective":"dx"},"color":"gold"},{"text":" / dY: ","color":"gold"},{"score":{"name":"@s","objective":"dy"},"color":"gold"},{"text":" / dZ: ","color":"gold"},{"score":{"name":"@s","objective":"dz"},"color":"gold"}]

execute as @a[team=Ljubicasti,gamemode=!spectator] at @s run title @s actionbar [{"text":"X: ","color":"white"},{"score":{"name":"@s","objective":"X"}},{"text":" / Y: "},{"score":{"name":"@s","objective":"Y"}},{"text":" / Z: "},{"score":{"name":"@s","objective":"Z"}},{"text":" "},{"text":" "},{"text":" "},{"selector":"@a[tag=compare,sort=nearest,team=Ljubicasti,limit=1,distance=0.1..]","color":"dark_purple"},{"text":" dX: ","color":"dark_purple"},{"score":{"name":"@s","objective":"dx"},"color":"dark_purple"},{"text":" / dY: ","color":"dark_purple"},{"score":{"name":"@s","objective":"dy"},"color":"dark_purple"},{"text":" / dZ: ","color":"dark_purple"},{"score":{"name":"@s","objective":"dz"},"color":"dark_purple"}]

execute as @a[team=Cijan,gamemode=!spectator] at @s run title @s actionbar [{"text":"X: ","color":"white"},{"score":{"name":"@s","objective":"X"}},{"text":" / Y: "},{"score":{"name":"@s","objective":"Y"}},{"text":" / Z: "},{"score":{"name":"@s","objective":"Z"}},{"text":" "},{"text":" "},{"text":" "},{"selector":"@a[tag=compare,sort=nearest,team=Cijan,limit=1,distance=0.1..]","color":"dark_aqua"},{"text":" dX: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"dx"},"color":"dark_aqua"},{"text":" / dY: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"dy"},"color":"dark_aqua"},{"text":" / dZ: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"dz"},"color":"dark_aqua"}]

#execute as @a[team=Zuti] at @s run title @s actionbar [{"selector":"@a[tag=compare,sort=nearest,limit=1,distance=0.1..]"}]

#execute as @a[team=Zuti] at @s run title @s actionbar [{"text":"X: "},"color":"gray","extra":[{"score":{"name":"@s","objective":"X"}},{"text":"Y: "},{"score":{"name":"@s","objective":"Y"}},{"text":"Z: ",{"score":{"name":"@s","objective":"Z"}}}]]