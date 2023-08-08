

scoreboard players operation @s rosite = @s thermodynamic
tag @s remove fuse_rosite
tag @s remove fuse_tweak
tellraw @s ["","Rosite Fuse ",{"text":"Set: ","color":"red"},{"score":{"name":"@s","objective":"rosite"},"color":"red"}]
