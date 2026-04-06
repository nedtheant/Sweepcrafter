scoreboard players set variables timer 0

# Construct and start timer
fill 9 106 -9 10 106 -5 redstone_wire
setblock 9 106 -9 command_block{Command:"scoreboard players add variables timer 1"}
setblock 9 107 -9 redstone_wire
fill 10 106 -7 10 106 -8 repeater[facing=north,delay=4]
setblock 10 106 -6 repeater[facing=north,delay=2,powered=true]
