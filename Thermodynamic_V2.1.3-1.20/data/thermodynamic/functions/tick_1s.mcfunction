# tick

#

schedule function thermodynamic:tick_1s 1s
#
execute as @a[scores={therm_logout=1..}] run function thermodynamic:logout

#scoreboard players enable @a thermodynamic
execute as @a unless score @s thermodynamic matches -1 run function thermodynamic:trigger
# fuse tag remover
execute as @a[tag=fuse_tweak] run function thermodynamic:fuse_kill_timer

# original ground craftin. more reliable funny enough
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:blue_ice",Count:1b}}] at @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_block",Count:1b}},distance=..1] at @s if block ~ ~-0.01 ~ minecraft:enchanting_table run function thermodynamic:craft
# old new crppy crafting table crafting, pig spawn egg, left for old players
execute as @a[scores={therm_craft=1..}] run function thermodynamic:craft_start
# disenchant
execute as @e[type=item,nbt={Item:{Count:1b,tag:{Tags: ["Thermodynamic"]}}}] at @s if block ~ ~-0.01 ~ minecraft:grindstone run function thermodynamic:grindstone
# kill old armorstands, fixes some edge case bugs.
execute as @e[type=armor_stand,tag=thermodynamic] run function thermodynamic:kill_as_timer

#old
#execute as @a[scores={thermodynamic=..-1}] run function thermodynamic:toggle