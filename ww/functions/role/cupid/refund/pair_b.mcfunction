# CONTEXT: @s = cupid

tag @s remove pairedB
function ww:book/pair_b
tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.warn","interpret":true},{"text":"配對的受方已殞命, 請重新配對"}]