# thermodynamic/place_thermo_cycle
# Re-Loot
execute unless entity @s[gamemode=creative] run loot give @s loot thermodynamic:thermo_cycle_loot
# clear @s bowl 1
execute unless entity @s[gamemode=creative] run schedule function thermodynamic:bowl_clear 1t
execute unless entity @s[gamemode=creative] run tag @s add bowl_clear

#remove the sponge placing advancement
advancement revoke @s only thermodynamic:use_thermo_cycle
# Binary switch
execute as @s[scores={thermo_cycle=0}] run scoreboard players set @s thermo_cycle 1
scoreboard players add @s thermo_cycle 1
execute as @s[scores={thermo_cycle=3}] run scoreboard players set @s thermo_cycle 0

# Vis
#### optional toggle execute if entity @s[scores={thermo_cycle=0}] run 
particle minecraft:lava ~ ~.55 ~ 4 4 4 1 250 force
particle minecraft:poof ~ ~.55 ~ 2 2 2 1 750 force
particle minecraft:soul_fire_flame ~ ~.55 ~ 2 2 2 .5 750 force
# sound
playsound minecraft:entity.ender_dragon.flap master @a[distance=..25]
playsound minecraft:entity.evoker.prepare_attack master @a[distance=..25]

tellraw @s[scores={thermo_cycle=1..}] ["",{"text":"Thermodynamic Reactions: ","color":"gold"},{"text":"Off","color":"dark_red"}]
tellraw @s[scores={thermo_cycle=0}] ["",{"text":"Thermodynamic Reactions: ","color":"gold"},{"text":"On","color":"dark_green"}]


