## SETTING: Enable/Disable Long Distance Voting Method
## DEFAULT: %long_dist_vote system 0

scoreboard players add %long_dist_vote system 1
execute if score %long_dist_vote system matches 2.. run scoreboard players set %long_dist_vote system 0

execute if score %long_dist_vote system matches 1 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"遠距投票"},{"text":" 已開啟","color":"green","bold":true},{"text":": 白天投票道具可以點右鍵看向玩家投票, 無距離限制","color":"white","bold":false}]
execute if score %long_dist_vote system matches 0 run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"遠距投票"},{"text":" 已關閉","color":"red","bold":true},{"text":": 白天投票道具為普通的劍","color":"white","bold":false}]

execute if score %koumi_map system matches 1 run function pm:setting/update/signs