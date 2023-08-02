

scoreboard players operation @s cryobomb = @s thermodynamic
tag @s remove fuse_cryobomb
tag @s remove fuse_tweak

tellraw @s ["","Cryo-Bomb Fuse ",{"text":"Set: ","color":"red"},{"score":{"name":"@s","objective":"cryobomb"},"color":"red"}]