# tick

#

schedule function thermodynamic:tick_1s 1s
#
execute as @a[scores={therm_logout=1..}] run function thermodynamic:logout

scoreboard players enable @a thermodynamic
execute as @a unless score @s thermodynamic matches 0 run function thermodynamic:trigger

execute as @a[scores={therm_craft=1..}] run function thermodynamic:craft_start

execute as @e[type=item,nbt={Item:{Count:1b,tag:{Tags: ["Thermodynamic"]}}}] at @s if block ~ ~-0.01 ~ minecraft:grindstone run function thermodynamic:grindstone



#old
#execute as @a[scores={thermodynamic=..-1}] run function thermodynamic:toggle