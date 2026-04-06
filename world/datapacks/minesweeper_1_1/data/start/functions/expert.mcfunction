say New Expert Game Started

#Reset variables
scoreboard players set variables initial_mines 99

scoreboard players operation variables flagged = variables initial_mines
scoreboard players set variables timer 0

#sidebar updater
setblock 10 109 -5 air
setblock 10 109 -5 repeating_command_block{Command:"function main:22x22_99/debug",auto:1}


# Clear Timer
function timer:stop

# Remove previous command blocks
fill 0 105 0 60 105 60 air
fill 0 104 0 60 104 60 air
fill 0 103 0 60 103 60 air

# Remove bombs/wool/repeaters
fill 0 107 0 60 108 60 air
fill -2 107 -2 60 106 60 air replace obsidian

# place obsidian
fill -2 107 -2 23 106 23 obsidian

# place stone
fill 0 107 0 21 107 21 stone

# Place buttons
fill 0 108 0 21 108 21 repeater[facing=south]

# Spawn init state command blocks
fill 0 105 0 21 105 21 repeating_command_block{Command:"execute if block ~ 108 ~ air run function mine_gen:22x22_99/start_spawn",auto:1}

