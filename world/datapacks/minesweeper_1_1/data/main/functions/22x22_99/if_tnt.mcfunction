setblock 8 107 -5 air
fill 0 105 0 60 103 60 air

# "Explode"
particle minecraft:explosion ~ 108 ~ 1 1 1 1 12
playsound minecraft:entity.generic.explode master @p

# Setup lose_state
function timer:stop
fill 0 105 0 21 105 21 repeating_command_block{Command:"function main:lose_state",auto:1}

