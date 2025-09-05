clear @s warped_fungus_on_a_stick{vote:1b,morning:1b}
clear @s wooden_sword{vote:1b,morning:1b}

execute if score %long_dist_vote system matches 0 run give @s wooden_sword{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1}],display:{Name:'{"text":"暴民劍","color":"gold","bold":true,"italic":false}'},vote:1b,morning:1b,unique:1b}
execute if score %long_dist_vote system matches 1 run give @s warped_fungus_on_a_stick{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1}],display:{Name:'{"text":"暴民劍","color":"gold","bold":true,"italic":false}'},vote:1b,morning:1b,unique:1b}