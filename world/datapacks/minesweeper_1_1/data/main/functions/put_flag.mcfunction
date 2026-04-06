setblock ~ ~ ~ air
scoreboard players remove variables flagged 1
setblock ~ ~ ~ repeating_command_block{Command:"execute if block ~ ~1 ~ air run function main:remove_flag",auto:1}

