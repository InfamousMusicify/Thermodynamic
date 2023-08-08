

scoreboard players operation @s pinite = @s thermodynamic
tag @s remove fuse_pinite
tag @s remove fuse_tweak
tellraw @s ["","Pinite Fuse ",{"text":"Set: ","color":"red"},{"score":{"name":"@s","objective":"pinite"},"color":"red"}]
