# sets up leaderboard

# setup math objectives
scoreboard objectives add mp_indiv dummy
scoreboard objectives add mp_lb dummy

# set placements to min
scoreboard players set $p1 mp_indiv -2147483648
scoreboard players set $p2 mp_indiv -2147483648
scoreboard players set $p3 mp_indiv -2147483648
scoreboard players set $p4 mp_indiv -2147483648
scoreboard players set $p5 mp_indiv -2147483648

# clear player tags
tag @a remove lb_p1
tag @a remove lb_p2
tag @a remove lb_p3
tag @a remove lb_p4
tag @a remove lb_p5