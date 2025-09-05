# morning
execute store result score %secondsMorning var run scoreboard players operation %minutesMorning var = %MORNING_TIME constant
scoreboard players operation %minutesMorning var /= 60 constant
scoreboard players operation %secondsMorning var %= 60 constant

data modify storage ww:game DISPLAY.setting.morning set value '{"text":""}'

execute if score %minutesMorning var matches ..0 run data modify storage ww:game DISPLAY.setting.morning set value '[{"text":"白天 "},{"score":{"name":"%secondsMorning","objective":"var"},"color":"green","bold":true},{"text":" 秒","color":"white","bold":false}]'

execute if score %minutesMorning var matches 1.. run data modify storage ww:game DISPLAY.setting.morning set value '[{"text":"白天 "},{"score":{"name":"%minutesMorning","objective":"var"},"color":"green","bold":true},{"text":" 分 ","color":"white","bold":false},{"score":{"name":"%secondsMorning","objective":"var"},"color":"green","bold":true},{"text":" 秒","color":"white","bold":false}]'

# night
execute store result score %secondsNight var run scoreboard players operation %minutesNight var = %NIGHT_TIME constant
scoreboard players operation %minutesNight var /= 60 constant
scoreboard players operation %secondsNight var %= 60 constant

data modify storage ww:game DISPLAY.setting.night set value '{"text":""}'

execute if score %minutesNight var matches ..0 run data modify storage ww:game DISPLAY.setting.night set value '[{"text":" | 夜晚 "},{"score":{"name":"%secondsNight","objective":"var"},"color":"green","bold":true},{"text":" 秒","color":"white","bold":false}]'

execute if score %minutesNight var matches 1.. run data modify storage ww:game DISPLAY.setting.night set value '[{"text":" | 夜晚 "},{"score":{"name":"%minutesNight","objective":"var"},"color":"green","bold":true},{"text":" 分 ","color":"white","bold":false},{"score":{"name":"%secondsNight","objective":"var"},"color":"green","bold":true},{"text":" 秒","color":"white","bold":false}]'

# wolf
execute store result score %secondsWolf var run scoreboard players operation %minutesWolf var = %WOLF_TIME constant
scoreboard players operation %minutesWolf var /= 60 constant
scoreboard players operation %secondsWolf var %= 60 constant

data modify storage ww:game DISPLAY.setting.wolf set value '{"text":""}'

execute if predicate ww:mode/debate if score %minutesWolf var matches ..0 run data modify storage ww:game DISPLAY.setting.wolf set value '[{"text":" | 狼人討論 "},{"score":{"name":"%secondsWolf","objective":"var"},"color":"green","bold":true},{"text":" 秒","color":"white","bold":false}]'

execute if predicate ww:mode/debate if score %minutesWolf var matches 1.. run data modify storage ww:game DISPLAY.setting.wolf set value '[{"text":" | 狼人討論 "},{"score":{"name":"%minutesWolf","objective":"var"},"color":"green","bold":true},{"text":" 分 ","color":"white","bold":false},{"score":{"name":"%secondsWolf","objective":"var"},"color":"green","bold":true},{"text":" 秒","color":"white","bold":false}]'

tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.setting.morning","interpret":true},{"storage":"ww:game","nbt":"DISPLAY.setting.night","interpret":true},{"storage":"ww:game","nbt":"DISPLAY.setting.wolf","interpret":true}]