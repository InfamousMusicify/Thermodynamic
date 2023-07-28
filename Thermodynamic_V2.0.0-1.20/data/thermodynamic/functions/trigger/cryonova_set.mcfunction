

scoreboard players operation @s cryonova = @s thermodynamic
tag @s remove fuse_cryonova
tag @s remove fuse_tweak

tellraw @s ["","Cryo-Nova Fuse ",{"text":"Set: ","color":"red"},{"score":{"name":"@s","objective":"cryonova"},"color":"red"}]