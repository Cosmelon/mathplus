# mp_indiv
# grabs player scores from mp_lb then throws it into mp_indiv to be sorted
# players will be sorted with tag p<score>

execute as @a run scoreboard players operation @s mp_indiv = @s mp_lb

# first place
execute as @a if score @s mp_indiv > $p1 mp_indiv run scoreboard players operation $p1 mp_indiv > @s mp_indiv
execute as @a if score @s mp_indiv = $p1 mp_indiv run tag @a remove lb_p1
execute as @a if score @s mp_indiv = $p1 mp_indiv run tag @s add lb_p1
execute as @a if score @s mp_indiv = $p1 mp_indiv run scoreboard players reset @s mp_indiv

# second place
execute as @a if score @s mp_indiv > $p2 mp_indiv run scoreboard players operation $p2 mp_indiv > @s mp_indiv
execute as @a if score @s mp_indiv = $p2 mp_indiv run tag @a remove lb_p2
execute as @a if score @s mp_indiv = $p2 mp_indiv run tag @s add lb_p2
execute as @a if score @s mp_indiv = $p2 mp_indiv run scoreboard players reset @s mp_indiv

# third place
execute as @a if score @s mp_indiv > $p3 mp_indiv run scoreboard players operation $p3 mp_indiv > @s mp_indiv
execute as @a if score @s mp_indiv = $p3 mp_indiv run tag @a remove lb_p3
execute as @a if score @s mp_indiv = $p3 mp_indiv run tag @s add lb_p3
execute as @a if score @s mp_indiv = $p3 mp_indiv run scoreboard players reset @s mp_indiv

# fourth place
execute as @a if score @s mp_indiv > $p4 mp_indiv run scoreboard players operation $p4 mp_indiv > @s mp_indiv
execute as @a if score @s mp_indiv = $p4 mp_indiv run tag @a remove lb_p4
execute as @a if score @s mp_indiv = $p4 mp_indiv run tag @s add lb_p4
execute as @a if score @s mp_indiv = $p4 mp_indiv run scoreboard players reset @s mp_indiv

# fifth place
execute as @a if score @s mp_indiv > $p5 mp_indiv run scoreboard players operation $p5 mp_indiv > @s mp_indiv
execute as @a if score @s mp_indiv = $p5 mp_indiv run tag @a remove lb_p5
execute as @a if score @s mp_indiv = $p5 mp_indiv run tag @s add lb_p5
execute as @a if score @s mp_indiv = $p5 mp_indiv run scoreboard players reset @s mp_indiv