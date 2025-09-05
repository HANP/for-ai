# CONTEXT: @s = cupid

tag @s remove pairedA
function ww:book/pair_a
tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.warn","interpret":true},{"text":"配對的攻方已殞命, 請重新配對"}]