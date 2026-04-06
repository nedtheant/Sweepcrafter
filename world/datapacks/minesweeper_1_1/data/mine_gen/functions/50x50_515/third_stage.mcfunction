# Set mines to positions of armor stands
execute as @e[type=armor_stand] at @s run function mine_gen:per_armor

# remove blocker
fill ~-2 109 ~ ~-2 110 ~ air

# remove second and third stage command blocks
fill ~-2 ~5 ~ ~ ~-1 ~ air

# Clear Blindness Effect
effect clear @p

# Start game state
function main:50x50_515/spawn_game
function timer:start