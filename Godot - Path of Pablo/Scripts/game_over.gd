extends Control


func _ready():
	Global.total_coins += Global.coins
	Global.char_pablo = true
	Global.char_mrsmiley = false
	Global.char_speed = true
	Global.char_megapablo = false
	Global.char_knight = false
	Global.char_paul = false
	Global.char_slime = false
	Global.char_donut = false
	#Unlock
	Global.mrsmiley_unlocked = false
	Global.speed_unlocked = true
	Global.megapablo_unlocked = false
	Global.knight_unlocked = false
	Global.paul_unlocked = false
	Global.slime_unlocked = false
	Global.donut_unlocked = false
	Global.save()
	Global.levels_beaten += 1


func _on_button_pressed():
	Global.coins = 0
	Global.save()
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
