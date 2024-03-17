function vanillauhc:02timovi/podesavanja
#item replace entity @a hotbar.1 with written_book{pages:["[\"\",{\"text\":\"Timovi: \",\"bold\":true,\"italic\":true},\"\\n\",\"\\n\",{\"text\":\"Plavi\",\"italic\":true,\"color\":\"blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger timovi set 1\"},\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"selector\":\"@a[team=Plavi]\",\"color\":\"blue\"}]}},\"\\n\",{\"text\":\"Crveni\",\"italic\":true,\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger timovi set 2\"},\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"selector\":\"@a[team=Crveni]\",\"color\":\"red\"}]}},\"\\n\",{\"text\":\"Zeleni\",\"italic\":true,\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger timovi set 3\"},\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"selector\":\"@a[team=Zeleni]\",\"color\":\"green\"}]}},\"\\n\",{\"text\":\"Zuti\",\"italic\":true,\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger timovi set 4\"},\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"selector\":\"@a[team=Zuti]\",\"color\":\"yellow\"}]}},\"\\n\",{\"text\":\"Roze\",\"italic\":true,\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger timovi set 5\"},\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"selector\":\"@a[team=Roze]\",\"color\":\"light_purple\"}]}},\"\\n\",{\"text\":\"Narandzasti\",\"italic\":true,\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger timovi set 6\"},\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"selector\":\"@a[team=Narandzasti]\",\"color\":\"gold\"}]}},\"\\n\",{\"text\":\"Ljubicasti\",\"italic\":true,\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger timovi set 7\"},\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"selector\":\"@a[team=Ljubicasti]\",\"color\":\"dark_purple\"}]}},\"\\n\",{\"text\":\"Cijan\",\"italic\":true,\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger timovi set 8\"},\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"selector\":\"@a[team=Cijan]\",\"color\":\"dark_aqua\"}]}},\"\\n\",\"\\n\",{\"text\":\"Reset\",\"italic\":true,\"color\":\"dark_gray\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger timovi set 0\"},\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"selector\":\"@a[team=tim]\",\"italic\":true,\"color\":\"dark_gray\"}]}}]"],title:"Timovi",author:Veljkisha}
item replace entity @a hotbar.1 with minecraft:written_book{pages:["[{text:'Timovi: \\n\\n', bold:true}, {text:'Plavi\\n', color:blue, italic:true, bold:false, clickEvent:{action:'run_command', value:'/trigger timovi set 1'}},{text:'Crveni\\n', color:red, italic:true, bold:false, clickEvent:{action:'run_command', value:'/trigger timovi set 2'}},{text:'Zeleni\\n', color:green, italic:true, bold:false, clickEvent:{action:'run_command', value:'/trigger timovi set 3'}},{text:'Zuti\\n', color:yellow, italic:true, bold:false, clickEvent:{action:'run_command', value:'/trigger timovi set 4'}},{text:'Roze\\n', color:light_purple, italic:true, bold:false, clickEvent:{action:'run_command', value:'/trigger timovi set 5'}},{text:'Narandzasti\\n', color:gold, italic:true, bold:false, clickEvent:{action:'run_command', value:'/trigger timovi set 6'}},{text:'Ljubicasti\\n', color:dark_purple, italic:true, bold:false, clickEvent:{action:'run_command', value:'/trigger timovi set 7'}}, {text:'Cijan\\n', color:dark_aqua, italic:true, bold:false, clickEvent:{action:'run_command', value:'/trigger timovi set 8'}},{text:'\\nReset\\n', color:dark_gray,italic:true,bold:false, clickEvent:{action:'run_command', value:'/trigger timovi set 0'}}]"], title:"Timovi", author:"Veljkisha"} 1

#doda timove kao scoreboard koji ce ljudi da vide sa strane koji ce da bude trigger (sluzi da sortira na scoreboardu ko je koji tim)
scoreboard objectives add timovi trigger {"text":"Timovi","color":"dark_gray"}
scoreboard objectives setdisplay sidebar timovi
scoreboard players enable @a timovi

#doda scoreboar tim koji sluzi da se ne bi $global pojavio na scoreboard za timove
scoreboard objectives add tim dummy 
scoreboard players set @a timovi 0
scoreboard players set $global tim 0

