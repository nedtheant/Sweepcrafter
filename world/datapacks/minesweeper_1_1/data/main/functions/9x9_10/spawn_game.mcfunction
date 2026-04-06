# Spawn game_state command blocks
fill 0 105 0 8 105 8 repeating_command_block{Command:"function main:9x9_10/game_state",auto:1}

# Reset Cleared and Spawn checkWin command block
scoreboard players operation variables flagged = variables initial_mines
scoreboard players set variables cleared 0

setblock 8 107 -5 repeating_command_block{Command:"execute if score variables cleared matches 71 run function main:9x9_10/win",auto:1}

# Setup Flag Counter
fill 0 103 0 8 103 8 command_block{Command:"function main:put_flag"}

 