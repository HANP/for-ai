## Running in function ww:time/skip/success

tellraw @a[scores={bombTimer=1..}] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"炸彈已被清除"}]
scoreboard players reset * bombTimer