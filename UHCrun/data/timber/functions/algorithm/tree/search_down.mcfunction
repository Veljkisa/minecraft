# search for next log downwards
execute positioned ~ ~-1 ~ if predicate timber:block/log unless entity @e[type=minecraft:marker,tag=timber_log,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~ ~-1 ~1 if predicate timber:block/log unless entity @e[type=minecraft:marker,tag=timber_log,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~ ~-1 ~-1 if predicate timber:block/log unless entity @e[type=minecraft:marker,tag=timber_log,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~1 ~-1 ~ if predicate timber:block/log unless entity @e[type=minecraft:marker,tag=timber_log,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~1 ~-1 ~1 if predicate timber:block/log unless entity @e[type=minecraft:marker,tag=timber_log,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~1 ~-1 ~-1 if predicate timber:block/log unless entity @e[type=minecraft:marker,tag=timber_log,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~-1 ~-1 ~ if predicate timber:block/log unless entity @e[type=minecraft:marker,tag=timber_log,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~-1 ~-1 ~1 if predicate timber:block/log unless entity @e[type=minecraft:marker,tag=timber_log,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop
execute positioned ~-1 ~-1 ~-1 if predicate timber:block/log unless entity @e[type=minecraft:marker,tag=timber_log,distance=...1,sort=arbitrary,limit=1] run function timber:algorithm/tree/chop