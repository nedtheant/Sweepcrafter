reload
scoreboard objectives remove mineCount
scoreboard objectives remove cleared
scoreboard objectives remove timer
scoreboard objectives remove flagged
scoreboard objectives remove debug
scoreboard objectives remove initial_mines
scoreboard objectives remove mines

scoreboard objectives add mineCount dummy
scoreboard objectives add cleared dummy
scoreboard objectives add timer dummy
scoreboard objectives add flagged dummy
scoreboard objectives add initial_mines dummy
scoreboard objectives add mines dummy

scoreboard players set variables mineCount 0
scoreboard players set variables cleared 0
scoreboard players set variables timer 0
scoreboard players set variables flagged 0
scoreboard players set variables initial_mines 10
scoreboard players set variables mines 0

# For Sidebar
scoreboard objectives add debug dummy "Variables"

# For operations
scoreboard objectives add temp dummy
scoreboard players set variables temp 0