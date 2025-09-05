execute store result score %players var if entity @a[predicate=!ww:god]
scoreboard players add %spirit pool 1
execute if score %spirit pool >= %players var run scoreboard players set %spirit pool 0
execute if entity @s[predicate=ww:sneaking] run scoreboard players set %spirit pool 0
tellraw @s 
[{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":""},{"text":"灵媒"},
  {"text":"最大數量已改為"},
  {"score":{"name":"%spirit","objective":"pool"},"color":"green","bold":true}
]