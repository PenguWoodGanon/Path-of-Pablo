extends Control


func _ready():
	Global.total_coins += Global.coins
	Global.char_pablo = false
	Global.char_mrsmiley = false
	Global.char_speed = true
	Global.char_megapablo = false
	Global.char_knight = false
	Global.char_paul = false
	Global.char_slime = false
	Global.char_donut = false
	Global.save()
	Global.levels_beaten += 1
	$Coins.text = str("Coins Collected : ", Global.coins)


func _on_finish_pressed():
	Global.coins = 0
	Global.save()
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
