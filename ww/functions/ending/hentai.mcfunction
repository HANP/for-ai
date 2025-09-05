scoreboard players add @a[tag=hentai,tag=alive] wins 1

# title messages

tag @s add this
data modify storage ww:game chat.top set value '{"text":"色狼獲勝"}'
data modify storage ww:game chat.bottom set value '[{"text":"在場的各位都被騷擾啦"}]'

execute as @a run function ww:chat/title

tag @s remove this

# chat messages

function ww:ending/init

tellraw @a [{"text":"原因: "},{"text":"色狼成功摸遍場上尚存的玩家\n","color":"yellow"},{"text":"勝者: ","color":"white"},{"selector":"@a[tag=hentai,tag=alive]","color":"green","bold":true}]

execute as @a run function ww:chat/separator

function ww:game/end