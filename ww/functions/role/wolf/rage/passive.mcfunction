## CONTEXT: @s = rage wolf who just axed a player

scoreboard players add @s speedLevel 1

# auto apply base movement value if already suited
execute if predicate ww:armed run function ww:role/wolf/rage/suit_on

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"成功刀人, 著裝時速度提升","color":"green"}]