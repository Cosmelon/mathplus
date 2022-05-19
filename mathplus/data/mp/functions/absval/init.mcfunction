##
 # init.mcfunction
 # initializes scoreboard and sets numbers to 0
 #
 # Created by Cosmelon
##

scoreboard objectives add mp_absval dummy
scoreboard players set $in mp_absval 0
scoreboard players set $out mp_absval 0
scoreboard players set $math mp_absval 0
scoreboard players set #const mp_absval -1