# a list of alive players who hasn't been harassed
# a list of players with tag "harassed"

function ww:chat/separator

tellraw @s [{"text":"[ 色狼騷擾名單 ]","bold":true,"color":"light_purple"}]

execute if entity @a[tag=!harassed,tag=alive,tag=!hentai] run tellraw @s [{"text":"\n未騷擾: ","bold":false},{"selector":"@a[tag=!harassed,tag=alive,tag=!hentai]","color":"red","bold":true}]

execute if entity @a[tag=harassed] run tellraw @s [{"text":"\n已騷擾","bold":false},{"text":": "},{"selector":"@a[tag=harassed]","bold":true,"color":"green"}]

function ww:chat/separator