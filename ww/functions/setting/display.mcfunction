## Pool, Time, Mode, Map, Extra Settings
data modify storage ww:game DISPLAY.setting.ending set value '{"text":""}'

tellraw @a ""
function ww:role/assign/display
function ww:setting/map/display
function ww:setting/mode/display

tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.setting.map","interpret":true}," | ",{"storage":"ww:game","nbt":"DISPLAY.setting.mode","interpret":true},{"storage":"ww:game","nbt":"DISPLAY.setting.ending","interpret":true}]

function ww:setting/time/display
function ww:setting/misc/display
tellraw @a ""
