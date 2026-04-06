function timer:stop

title @p times 20 60 20
title @p title "You Won!!!"
title @p subtitle ["Time: ",{"score":{"name":"variables","objective":"timer"}},"s"]
playsound minecraft:entity.experience_orb.pickup master @p

setblock 8 107 -5 air
fill 0 105 0 60 105 60 air
fill 0 104 0 60 104 60 air
fill 0 103 0 60 103 60 air

# Setup win_state
fill 0 105 0 8 105 8 repeating_command_block{Command:"function main:win_state",auto:1}
scoreboard players set variables flagged 0

#highscore thingo
execute if score variables timer < variables beg_bt run say New Best Time!
execute if score variables timer < variables beg_bt run scoreboard players operation variables beg_bt = variables timer