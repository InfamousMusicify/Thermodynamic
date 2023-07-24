# tick
schedule function thermodynamic:tick 1s

scoreboard players enable @a thermodynamic
execute as @a[scores={thermodynamic=1}] run function thermodynamic:toggle_off
execute as @a[scores={thermodynamic=3..}] run function thermodynamic:toggle_on

execute as @a[scores={thermo_craft=1..}] run function thermodynamic:craft_start
