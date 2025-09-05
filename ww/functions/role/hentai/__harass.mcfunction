## CONTEXT: @s = player hit by a hentai, @p[tag=origin] = source (hentai) player
## ORIGIN: Ran by ww:player/damage/victim
## CONSTRAINT: a hentai player cannot harass another hentai player

tag @s[tag=!hentai] add harassed

# if victim isn't a hentai
execute if entity @s[tag=!hentai] run tellraw @a[tag=hentai] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"selector":"@s","color":"yellow","bold":true},{"text":" 被色狼騷擾 ","bold":false,"color":"white"}]

# if victim is also a hentai
execute if entity @s[tag=hentai] run tellraw @p[tag=origin] [{"storage":"ww:game","nbt":"DISPLAY.warn","interpret":true},{"text":"你騷擾錯人了, 這位也是名色狼","bold":false}]

# fool case
execute if entity @p[tag=origin,tag=fool] run tellraw @a[tag=!hentai] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"selector":"@s","color":"yellow","bold":true},{"text":" 被色狼騷擾 ","bold":false,"color":"white"}]