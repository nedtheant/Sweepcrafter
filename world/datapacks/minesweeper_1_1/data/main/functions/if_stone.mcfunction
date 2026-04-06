scoreboard players set variables mineCount 0

execute if block ~-1 107 ~-1 tnt run scoreboard players add variables mineCount 1
execute if block ~-1 107 ~ tnt run scoreboard players add variables mineCount 1
execute if block ~-1 107 ~1 tnt run scoreboard players add variables mineCount 1
execute if block ~ 107 ~-1 tnt run scoreboard players add variables mineCount 1
execute if block ~ 107 ~1 tnt run scoreboard players add variables mineCount 1
execute if block ~1 107 ~-1 tnt run scoreboard players add variables mineCount 1
execute if block ~1 107 ~ tnt run scoreboard players add variables mineCount 1
execute if block ~1 107 ~1 tnt run scoreboard players add variables mineCount 1

execute if score variables mineCount matches 0 run setblock ~ 107 ~ light_gray_wool
execute if score variables mineCount matches 1 run setblock ~ 107 ~ cyan_wool
execute if score variables mineCount matches 2 run setblock ~ 107 ~ green_wool
execute if score variables mineCount matches 3 run setblock ~ 107 ~ red_wool
execute if score variables mineCount matches 4 run setblock ~ 107 ~ blue_wool
execute if score variables mineCount matches 5 run setblock ~ 107 ~ brown_wool
execute if score variables mineCount matches 6 run setblock ~ 107 ~ light_blue_wool
execute if score variables mineCount matches 7 run setblock ~ 107 ~ black_wool
execute if score variables mineCount matches 8 run setblock ~ 107 ~ gray_wool

execute if score variables mineCount matches 0 run fill ~-1 108 ~-1 ~1 108 ~1 air

scoreboard players add variables cleared 1

function main:hold_wool