# Spawn game_state command blocks
fill 0 105 0 49 105 49 repeating_command_block{Command:"function main:50x50_515/game_state",auto:1}

# Reset Cleared and Spawn checkWin command block
scoreboard players operation variables flagged = variables initial_mines
scoreboard players set variables cleared 0

setblock 8 107 -5 repeating_command_block{Command:"execute if score variables cleared matches 1985 run function main:50x50_515/win",auto:1}

# Setup Flag Counter
fill 0 103 0 49 103 49 command_block{Command:"function main:put_flag"}

 