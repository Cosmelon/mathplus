# Description: Convert ticks into time
# Author: Cosmelon
# make +tickInput convert the amount of ticks to combined time in milli, sec, and min

scoreboard objectives add convert dummy

#+tickInput --> #tickMin
scoreboard players operation #rem convert = +tickInput convert
scoreboard players operation #tickMin convert = #rem convert
scoreboard players operation #tickMin convert /= #minConst timeConst
scoreboard players operation #rem convert %= #minConst timeConst

# get sec
scoreboard players operation #tickSec convert = #rem convert
scoreboard players operation #tickSec convert /= #secConst timeConst
scoreboard players operation #rem convert %= #secConst timeConst

# get milli
scoreboard players operation #tickMilli convert = #rem convert
scoreboard players operation #tickMilli convert *= #milliConst timeConst
scoreboard players operation #rem convert %= #milliConst timeConst

# set math scores to named
scoreboard players operation +Min convert = #tickMin convert
scoreboard players operation +Sec convert = #tickSec convert
scoreboard players operation +Milli convert = #tickMilli convert
scoreboard players operation +remainder convert = #rem convert

# give result
tellraw @a [{"text":"","color":"green"},{"score":{"name":"+Min","objective":"convert"}},{"text":"mins "},{"score":{"name":"+Sec","objective":"convert"}},{"text":"sec "},{"score":{"name":"+Milli","objective":"convert"}},{"text":"milliseconds"}]