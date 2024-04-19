#proverava za sve timove da li su jedini igraci koji su zivi isti tim
execute if entity @a[team=Zuti] unless entity @a[team=!Zuti,gamemode=!spectator] run function uhcrun:pobeda/zuti
execute if entity @a[team=Plavi] unless entity @a[team=!Plavi,gamemode=!spectator] run function uhcrun:pobeda/plavi
execute if entity @a[team=Zeleni] unless entity @a[team=!Zeleni,gamemode=!spectator] run function uhcrun:pobeda/zeleni
execute if entity @a[team=Crveni] unless entity @a[team=!Crveni,gamemode=!spectator] run function uhcrun:pobeda/crveni
execute if entity @a[team=Roze] unless entity @a[team=!Roze,gamemode=!spectator] run function uhcrun:pobeda/roze
execute if entity @a[team=Narandzasti] unless entity @a[team=!Narandzasti,gamemode=!spectator] run function uhcrun:pobeda/narandzasti
execute if entity @a[team=Ljubicasti] unless entity @a[team=!Ljubicasti,gamemode=!spectator] run function uhcrun:pobeda/ljubicasti
execute if entity @a[team=Cijan] unless entity @a[team=!Cijan,gamemode=!spectator] run function uhcrun:pobeda/cijan