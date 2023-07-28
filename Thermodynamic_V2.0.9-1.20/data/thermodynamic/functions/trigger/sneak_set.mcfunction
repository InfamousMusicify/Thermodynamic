scoreboard players operation @s therm_sneaking = @s thermodynamic


#execute as @a[scores={thermodynamic=1..}]
tag @s[scores={therm_sneaking=1}] add therm_sneak_off
tag @s[scores={therm_sneaking=0}] remove therm_sneak_off

tag @s remove therm_sneak
tag @s remove fuse_tweak

#tellraw @s ["","Thermodynamic Sneak ",{"text":"Set: ","color":"red"},{"score":{"name":"@s","objective":"cryopop"},"color":"red"}]

tellraw @s[tag=therm_sneak_off] ["",{"text":"Thermodynamic sneak: ","color":"gold"},{"text":"Off","color":"dark_red"}]
tellraw @s[tag=!therm_sneak_off] ["",{"text":"Thermodynamic sneak: ","color":"gold"},{"text":"On","color":"dark_green"}]