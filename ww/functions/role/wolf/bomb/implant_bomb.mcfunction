## CONTEXT: @s = source player, @p[tag=correctStare] = target player

scoreboard players set %success var 0
execute unless score @p[tag=correctStare] bombTimer matches 1.. run scoreboard players set %success var 1

execute if score %success var matches 1 if entity @s[tag=!fool] run scoreboard players set @p[tag=correctStare] bombTimer 30
execute if score %success var matches 1 if entity @s[tag=!fool] run tellraw @p[tag=correctStare] [{"storage":"ww:game","nbt":"DISPLAY.warn","interpret":true},{"text":"你被植入炸彈了, 快用票人劍去傳給別人, 或是請求大家跳過白天"}]
execute if score %success var matches 1 if entity @s[tag=!fool] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"你將炸彈植入到 "},{"selector":"@p[tag=correctStare]","color":"yellow","bold":true}]

execute if score %success var matches 1 if entity @s[tag=fool] run scoreboard players set @s bombTimer 30
execute if score %success var matches 1 if entity @s[tag=fool] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.lmao","interpret":true},{"text":"炸彈黏在你身上, 拿也拿不掉, 你只能求大家跳過白天"}]
execute if score %success var matches 1 run clear @s warped_fungus_on_a_stick{implant_bomb:1b}

execute if score %success var matches 0 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"該玩家已經帶有炸彈了, 請選擇別的玩家"}]