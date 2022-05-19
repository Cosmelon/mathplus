##
 # go.mcfunction
 # absolute value math
 #
 # Created by Cosmelon
##

# zero $out
scoreboard players set $out mp_absval 0

# if $in mp_absval <= -1
scoreboard players set #math mp_absval 0
scoreboard players set #const mp_absval -1
execute if score $in mp_absval matches ..-1 run scoreboard players operation #math mp_absval = $in mp_absval
execute if score $in mp_absval matches ..-1 run scoreboard players operation #math mp_absval /= #const mp_absval

# if $in mp_absval >= 0
execute if score $in mp_absval matches 0.. run scoreboard players operation #math mp_absval = $in mp_absval

# final output
scoreboard players operation $out mp_absval = #math mp_absval
scoreboard players set #math mp_absval 0