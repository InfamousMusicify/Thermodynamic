
tag @s add thermodynamic_off
tellraw @s ["",{"text":"Thermodynamic Reactions: ","color":"gold"},{"text":"Off","color":"dark_red"}]
scoreboard players enable @s thermodynamic
#scoreboard players set @s therm.config 0