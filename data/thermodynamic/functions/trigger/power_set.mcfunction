

scoreboard players operation @s therm.config = @s thermodynamic


#execute as @a[scores={thermodynamic=1..}]
tag @s[scores={therm.config=1..}] add thermodynamic_off
tag @s[scores={therm.config=0}] remove thermodynamic_off

tag @s remove therm_power
tag @s remove fuse_tweak

#tellraw @s ["","Thermodynamic ",{"text":"Set: ","color":"red"},{"score":{"name":"@s","objective":"cryopop"},"color":"red"}]

tellraw @s[tag=thermodynamic_off] ["",{"text":"Thermodynamic reactions: ","color":"gold"},{"text":"Off","color":"dark_red"}]
tellraw @s[tag=!thermodynamic_off] ["",{"text":"Thermodynamic reactions: ","color":"gold"},{"text":"On","color":"dark_green"}]
