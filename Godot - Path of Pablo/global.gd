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
var cursortower = false
var deluxe = false
var char_move = true

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
