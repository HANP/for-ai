scoreboard players reset * morningVote
clear @a written_book

execute unless score %blood_moon system matches 1.. run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"白狼自爆， 遊戲強制進入夜晚","color":"white","bold":false}]

execute if score %blood_moon system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"強制進入夜晚","color":"white","bold":false}]

function ww:time/swap