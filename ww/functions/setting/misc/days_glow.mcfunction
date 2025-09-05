## SETTING: Glow after N days in riot mode
## DEFAULT: %days_glow system 0

scoreboard players add %days_glow system 1
execute if entity @s[predicate=ww:sneaking] run scoreboard players set %days_glow system 0

execute if score %days_glow system matches 1.. run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"score":{"name":"%days_glow","objective":"system"},"color":"green","bold":true},{"text":" 天後全體白天永久發光","color":"white","bold":false}]

execute if score %days_glow system matches 0 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"數天後全體白天永久發光","color":"white","bold":false},{"text":"已關閉","color":"red","bold":true}]

execute if score %koumi_map system matches 1 run function pm:setting/update/signs