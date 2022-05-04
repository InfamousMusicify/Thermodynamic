# Load file
scoreboard objectives add cryobomb dummy
scoreboard objectives add m_cryobomb dummy
#
scoreboard objectives add bomb_time dummy
# scoreboard objectives add cryo_sneak minecraft.custom:minecraft.sneak_time
#
advancement revoke @a only cryobomb:cryobomb/trigger/place_cryobomb
advancement revoke @a only cryobomb:cryobomb/trigger/place_m_cryobomb
#