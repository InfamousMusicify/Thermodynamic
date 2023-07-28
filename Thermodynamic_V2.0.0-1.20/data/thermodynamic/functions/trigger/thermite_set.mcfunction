

scoreboard players operation @s thermite = @s thermodynamic
tag @s remove fuse_thermite
tag @s remove fuse_tweak
tellraw @s ["","Thermite Fuse ",{"text":"Set: ","color":"red"},{"score":{"name":"@s","objective":"thermite"},"color":"red"}]
