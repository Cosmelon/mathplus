# Description: Convert ticks into time
# Author: Cosmelon
# make +tickInput convert the amount of ticks to equivalent times in milli, sec, and min

scoreboard objectives add equiv dummy

# convert tick to milli
scoreboard players operation #tickMilli equiv = +tickInput equiv
scoreboard players operation #tickMilli equiv *= #milliConst timeConst
scoreboard players operation +milli equiv = #tickMilli equiv

# convert tick to sec
scoreboard players operation #tickSec equiv = +tickInput equiv
scoreboard players operation #tickSec equiv /= #secConst timeConst
scoreboard players operation +sec equiv = #tickSec equiv

# convert tick to min
scoreboard players operation #tickMin equiv = +tickInput equiv
scoreboard players operation #tickMin equiv /= #minConst timeConst
scoreboard players operation +min equiv = #tickMin equiv