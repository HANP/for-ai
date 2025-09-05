execute store result score %players var if entity @a[predicate=!ww:god]
scoreboard players add %assassin_wolf pool 1
execute if score %assassin_wolf pool >= %players var run scoreboard players set %assassin_wolf pool 0
execute if entity @s[predicate=ww:sneaking] run scoreboard players set %assassin_wolf pool 0
tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"刺客狼","color":"gold"},{"text":" 最大數量已改為 "},{"score":{"name":"%assassin_wolf","objective":"pool"},"color":"green","bold":true}]