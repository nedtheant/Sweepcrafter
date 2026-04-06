say New Beginner Game Started

#Reset variables
scoreboard players set variables initial_mines 10

scoreboard players operation variables flagged = variables initial_mines
scoreboard players set variables timer 0


# Clear Timer
function timer:stop

#sidebar updater
setblock 10 109 -5 air
setblock 10 109 -5 repeating_command_block{Command:"function main:9x9_10/debug",auto:1}


# Remove previous command blocks
fill 0 105 0 60 105 60 air
fill 0 104 0 60 104 60 air
fill 0 103 0 60 103 60 air

# Remove bombs/wool/repeaters/obsidian
fill 0 107 0 60 108 60 air
fill -2 107 -2 60 106 60 air replace obsidian


# place obsidian
fill -2 107 -2 10 106 10 obsidian

# place stone
fill 0 107 0 8 107 8 stone

# Place buttons
fill 0 108 0 8 108 8 repeater[facing=south]

# Spawn init state command blocks
fill 0 105 0 8 105 8 repeating_command_block{Command:"execute if block ~ 108 ~ air run function mine_gen:9x9_10/start_spawn",auto:1}

