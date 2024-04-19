#proveri scoreboard koji se podesava preko knjige i stavi u odredjeni tim
execute as @a if score @s timovi matches 1 run team join Plavi @s
execute as @a if score @s timovi matches 2 run team join Crveni @s
execute as @a if score @s timovi matches 3 run team join Zeleni @s
execute as @a if score @s timovi matches 4 run team join Zuti @s
execute as @a if score @s timovi matches 5 run team join Roze @s
execute as @a if score @s timovi matches 6 run team join Narandzasti @s
execute as @a if score @s timovi matches 7 run team join Ljubicasti @s
execute as @a if score @s timovi matches 8 run team join Cijan @s
execute as @a if score @s timovi matches 0 run team join tim @s

#enabluje trigger da bi mogo opet preko knjige da se postavi
scoreboard players enable @a timovi
#item replace entity @a hotbar.1 with minecraft:written_book{pages:["[{text:'Timovi: \\n\\n', bold:true}, {text:'Plavi\\n', color:blue, italic:true, bold:false, clickEvent:{action:'run_command', value:'/trigger timovi set 1'}},{text:'Crveni\\n', color:red, italic:true, bold:false, clickEvent:{action:'run_command', value:'/trigger timovi set 2'}},{text:'Zeleni\\n', color:green, italic:true, bold:false, clickEvent:{action:'run_command', value:'/trigger timovi set 3'}},{text:'Zuti\\n', color:yellow, italic:true, bold:false, clickEvent:{action:'run_command', value:'/trigger timovi set 4'}},{text:'Roze\\n', color:light_purple, italic:true, bold:false, clickEvent:{action:'run_command', value:'/trigger timovi set 5'}},{text:'Narandzasti\\n', color:gold, italic:true, bold:false, clickEvent:{action:'run_command', value:'/trigger timovi set 6'}},{text:'Ljubicasti\\n', color:dark_purple, italic:true, bold:false, clickEvent:{action:'run_command', value:'/trigger timovi set 7'}}, {text:'Cijan\\n', color:dark_aqua, italic:true, bold:false, clickEvent:{action:'run_command', value:'/trigger timovi set 8'}},{text:'\\nReset\\n', color:dark_gray,italic:true,bold:false, clickEvent:{action:'run_command', value:'/trigger timovi set 0'}}]"], title:"Timovi", author:"Veljkisha"} 1