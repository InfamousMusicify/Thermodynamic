

scoreboard players operation @s cryocherry = @s thermodynamic
tag @s remove fuse_cryocherry
tag @s remove fuse_tweak

tellraw @s [""," Cryo-Cherry-Bomb Fuse ",{"text":"Set: ","color":"red"},{"score":{"name":"@s","objective":"cryocherry"},"color":"red"}]