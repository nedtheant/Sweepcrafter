# Apply Blindness
effect give @p blindness 999 255
effect give @p night_vision 999 255


# Set Blocker (prevent mines spawning below first click)
setblock ~ 109 ~ stone
setblock ~ 110 ~ repeating_command_block{Command:"execute if entity @e[type=armor_stand,distance=..1] run spreadplayers 7.5 7.5 1 7.5 false @e[type=armor_stand]",auto:1}


# Set Amount of mines to spawn
scoreboard players set variables mines 40

# Finish init_state
fill 0 105 0 60 105 60 air

# Setup second step of mine_gen
setblock ~ ~-1 ~ repeating_command_block[facing=down]{Command:"execute if score variables mines matches 1.. run scoreboard players remove variables mines 1",auto:1}
setblock ~ ~-2 ~ chain_command_block[facing=down,conditional=true]{Command:"summon armor_stand -1 108 -1",auto:1}
setblock ~ ~-3 ~ chain_command_block[facing=down,conditional=true]{Command:"execute if score variables mines matches 0 run spreadplayers 7.5 7.5 1 7.5 false @e[type=armor_stand]",auto:1}
setblock ~ ~-4 ~ chain_command_block[facing=down,conditional=true]{Command:"setblock ~ ~-1 ~ redstone_block",auto:1}

# Set 2-delay repeater
setblock ~1 ~-6 ~ obsidian
setblock ~1 ~-5 ~ repeater[facing=west,delay=2]

# Setup final stage of mine_gen
setblock ~2 ~-5 ~ command_block[facing=east]{Command:"function mine_gen:16x16_40/third_stage"}

# Avoid Pointless Looping
setblock ~ ~-6 ~ command_block{Command:"setblock ~ ~5 ~ air"}
