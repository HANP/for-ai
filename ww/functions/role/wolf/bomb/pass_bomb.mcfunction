## Context: @p[tag=origin] is the origin, @s is the victim

scoreboard players set %success var 0
scoreboard players set %originIsFoolBombWolf var 0
execute unless score @s bombTimer matches 1.. run scoreboard players set %success var 1
execute if entity @p[tag=origin,tag=wolf,tag=bomb,tag=fool] run scoreboard players set %originIsFoolBombWolf var 1

execute if score %success var matches 1 if score %originIsFoolBombWolf var matches 0 run scoreboard players operation @s bombTimer = @p[tag=origin] bombTimer
execute if score %success var matches 1 if score %originIsFoolBombWolf var matches 0 run scoreboard players reset @p[tag=origin] bombTimer

execute if score %success var matches 1 if score %originIsFoolBombWolf var matches 1 run tellraw @p[tag=origin] [{"storage":"ww:game","nbt":"DISPLAY.lmao","interpret":true},{"text":"都說了炸彈拆不掉啦"}]

execute if score %success var matches 0 run tellraw @p[tag=origin] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"該玩家已經帶有炸彈了, 請選擇別的玩家"}]