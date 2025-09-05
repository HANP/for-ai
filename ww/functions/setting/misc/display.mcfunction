execute if predicate ww:mode/riot run tellraw @a [{"text":"剩下 "},{"score":{"name":"%riot_glow","objective":"system"},"color":"green","bold":true},{"text":" 名玩家時, 全體白天永久發光","color":"white","bold":false}]
execute if predicate ww:mode/riot if score %days_glow system matches 1.. run tellraw @a [{"score":{"name":"%days_glow","objective":"system"},"color":"green","bold":true},{"text":" 天後全體白天永久發光","color":"white","bold":false}]

execute if predicate ww:mode/riot if score %fall_damage system matches 1 run tellraw @a [{"text":"高處墜樓"},{"text":"會","color":"red","bold":true},{"text":"摔死","color":"white","bold":false}]
execute if predicate ww:mode/riot unless score %fall_damage system matches 1 run tellraw @a [{"text":"高處墜樓"},{"text":"不會","color":"red","bold":true},{"text":"摔死","color":"white","bold":false}]

execute if score %fast_mode system matches 1 run tellraw @a [{"text":"白天平票 (最少1票) 時, 遊戲會隨機選一人票死"}]

data modify storage ww:game DISPLAY.flow.officer set value '{"text":""}'
data modify storage ww:game DISPLAY.flow.buttons set value '{"text":""}'
data modify storage ww:game DISPLAY.flow.time1 set value '{"text":""}'
data modify storage ww:game DISPLAY.flow.time2 set value '{"text":""}'

execute if score %officer_enabled system matches 1 run data modify storage ww:game DISPLAY.flow.officer set value '{"text":"警長選舉 → "}'
execute if score %find_buttons system matches 1 run data modify storage ww:game DISPLAY.flow.buttons set value '{"text":"找職業按鈕 → "}'
execute if predicate ww:mode/riot run data modify storage ww:game DISPLAY.flow.time1 set value '{"text":"白天 → "}'
execute if predicate ww:mode/riot run data modify storage ww:game DISPLAY.flow.time2 set value '{"text":"夜晚 → "}'
execute if predicate ww:mode/debate run data modify storage ww:game DISPLAY.flow.time1 set value '{"text":"夜晚 → "}'
execute if predicate ww:mode/debate run data modify storage ww:game DISPLAY.flow.time2 set value '{"text":"白天 → "}'

tellraw @a [{"text":"遊戲流程: "},{"storage":"ww:game","nbt":"DISPLAY.flow.officer","interpret":true},{"storage":"ww:game","nbt":"DISPLAY.flow.buttons","interpret":true},{"storage":"ww:game","nbt":"DISPLAY.flow.time1","interpret":true},{"storage":"ww:game","nbt":"DISPLAY.flow.time2","interpret":true},{"text":"晝夜循環"}]

scoreboard players set %total pool 0
scoreboard players operation %total pool += %bads pool
scoreboard players operation %total pool += %goods pool
scoreboard players operation %total pool += %wraiths pool

execute store result score %players var if entity @a[predicate=!ww:god]
tellraw @a [{"text":"玩家總人數 ","color":"white","bold":false},{"score":{"name":"%players","objective":"var"},"color":"green","bold":true}, {"text":" 職業池總數 ","color":"white","bold":false},{"score":{"name":"%total","objective":"pool"},"color":"green","bold":true}]

execute if predicate ww:teaming run tellraw @a [{"text":"分組數量: ","color":"white","bold":false},{"score":{"name":"%TEAMS","objective":"constant"},"color":"green","bold":true}]
execute if predicate ww:teaming run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.warn","interpret":true},{"text":"結局判定將採用最後存活的組別獲勝, 並忽略狼人殺的所有原始結局 (狼人勝利, 戀人勝利, 抖M勝利等...)","color":"white","bold":false}]