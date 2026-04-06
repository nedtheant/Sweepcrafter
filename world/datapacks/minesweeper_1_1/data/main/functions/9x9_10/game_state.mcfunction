# Flagged Square Protection
execute if block ~ 108 ~ repeater[delay=1] run setblock ~ ~-1 ~ air
execute if block ~ 108 ~ repeater[delay=2] run setblock ~ ~-1 ~ redstone_block
execute if block ~ 108 ~ repeater[delay=3] run setblock ~ ~-1 ~ air
execute if block ~ 108 ~ repeater[delay=4] run setblock ~ ~-1 ~ redstone_block
execute if block ~ 108 ~ air if block ~ ~-1 ~ redstone_block run setblock ~ 108 ~ repeater[facing=south,delay=2]

# Right-click detection
execute if block ~ 108 ~ air if block ~ 107 ~ tnt if block ~ ~-1 ~ air run function main:9x9_10/if_tnt
execute if block ~ 108 ~ air if block ~ 107 ~ stone if block ~ ~-1 ~ air run function main:if_stone
execute if block ~ 108 ~ air if block ~ 107 ~ air if block ~ ~-1 ~ air run function main:if_stone
