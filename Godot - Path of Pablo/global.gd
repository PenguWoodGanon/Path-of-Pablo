extends Node

var char_pablo = true
var char_mrsmiley = false
var char_speed = false
var char_megapablo = false
var char_knight = false
var char_paul = false
var char_slime = false
var char_donut = false

var mrsmiley_unlocked = false
var speed_unlocked = false
var megapablo_unlocked = false
var knight_unlocked = false
var paul_unlocked = false
var slime_unlocked = false
var donut_unlocked = false

var health = 4
var coins = 0
var total_coins = 0
var cursortower = false
var deluxe = false
var char_move = true
var time_speedrun = 0
var levels_beaten = 0

var save_path = "user://pathofpablo.save"
var username = "N/A"
var game_unlocked = false

func _process(_delta):
	if health == 5:
		health = 4
		print(health)
	if health == 0:
		print("Game Over")
		get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
		health = 4
	if char_pablo == true:
		char_pablo = true
		char_mrsmiley = false
		char_speed = false
		char_megapablo = false
		char_knight = false
		char_paul = false
		char_slime = false
		char_donut = false
	if char_mrsmiley == true:
		char_pablo = false
		char_mrsmiley = true
		char_speed = false
		char_megapablo = false
		char_knight = false
		char_paul = false
		char_slime = false
		char_donut = false
	if char_speed == true:
		char_pablo = false
		char_mrsmiley = false
		char_speed = true
		char_megapablo = false
		char_knight = false
		char_paul = false
		char_slime = false
		char_donut = false
	if char_megapablo == true:
		char_pablo = false
		char_mrsmiley = false
		char_speed = true
		char_megapablo = false
		char_knight = false
		char_paul = false
		char_slime = false
		char_donut = false
	if char_knight == true:
		char_pablo = false
		char_mrsmiley = false
		char_speed = false
		char_megapablo = false
		char_knight = true
		char_paul = false
		char_slime = false
		char_donut = false
	if char_paul == true:
		char_pablo = false
		char_mrsmiley = false
		char_speed = false
		char_megapablo = false
		char_knight = false
		char_paul = true
		char_slime = false
		char_donut = false
	if char_slime == true:
		char_pablo = false
		char_mrsmiley = false
		char_speed = false
		char_megapablo = false
		char_knight = false
		char_paul = false
		char_slime = true
		char_donut = false
	if char_donut == true:
		char_pablo = false
		char_mrsmiley = false
		char_speed = false
		char_megapablo = false
		char_knight = false
		char_paul = false
		char_slime = false
		char_donut = true

func save():
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	if file:
		file.store_var(coins)
		file.store_var(username)
		file.store_var(game_unlocked)
		file.close()

func load_data():
	if FileAccess.file_exists(save_path):
		var file = FileAccess.open(save_path, FileAccess.READ)
		if file:
			coins = file.get_var()
			username = file.get_var()
			game_unlocked = file.get_var()
			file.close()
	else:
		print("No Save Data")

func clear_data():
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	if file:
		coins = 0
		file.store_var(coins)
		username = "N/A"
		file.store_var(username)
		file.close()
