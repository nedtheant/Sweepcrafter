setblock ~ ~ ~ air
scoreboard players add variables flagged 1
setblock ~ ~ ~ command_block{Command:"function main:put_flag"}

