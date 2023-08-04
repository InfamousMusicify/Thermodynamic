
tag @s remove thermodynamic_off
tellraw @s ["",{"text":"Thermodynamic Reactions: ","color":"gold"},{"text":"On","color":"dark_green"}]

scoreboard players enable @s thermodynamic
#scoreboard players add @s therm.config 1