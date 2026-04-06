execute if block ~ 108 ~ repeater if block ~ 107 ~ stone run setblock ~ ~-1 ~ obsidian

execute if block ~ 107 ~ light_gray_wool run setblock ~ ~-1 ~ light_gray_wool
execute if block ~ 107 ~ cyan_wool run setblock ~ ~-1 ~ cyan_wool
execute if block ~ 107 ~ green_wool run setblock ~ ~-1 ~ green_wool
execute if block ~ 107 ~ red_wool run setblock ~ ~-1 ~ red_wool
execute if block ~ 107 ~ blue_wool run setblock ~ ~-1 ~ blue_wool
execute if block ~ 107 ~ brown_wool run setblock ~ ~-1 ~ brown_wool
execute if block ~ 107 ~ light_blue_wool run setblock ~ ~-1 ~ light_blue_wool
execute if block ~ 107 ~ black_wool run setblock ~ ~-1 ~ black_wool
execute if block ~ 107 ~ gray_wool run setblock ~ ~-1 ~ gray_wool

# Reveal Mines
execute if block ~ 107 ~ tnt run setblock ~ ~-1 ~ tnt
execute if block ~ 107 ~ tnt run setblock ~ 108 ~ air


setblock ~ ~ ~ air
setblock ~ ~ ~ repeating_command_block{Command:"function main:lose_state_two",auto:1}

# Bugfix
execute if block ~ 107 ~ air run setblock ~ ~-1 ~ tnt


