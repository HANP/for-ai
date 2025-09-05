tellraw @a[tag=wraiths,tag=alive] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"<好人陣營>","color":"yellow","bold":true},{"text":" 已全數陣亡, 你失去了永久無敵, 也能被狼人探知到","color":"white","bold":false}]

tag @a[tag=wraiths] remove immortal

execute as @a[tag=wraiths,tag=alive] run function ww:skill/ghost/off

clear @a[tag=wraiths,tag=alive] warped_fungus_on_a_stick{ghost_on:1b}
clear @a[tag=wraiths,tag=alive] warped_fungus_on_a_stick{ghost_off:1b}