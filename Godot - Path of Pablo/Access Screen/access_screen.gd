extends Control

@onready var line_edit = $LineEdit

#--------------Codes--------------
var path1 = "PABLO-6DYVR"
var path2 = "PABLO-NYDY3"
var path3 = "PABLO-6DVDX"
var path4 = "PABLO-7NVX0"
var path5 = "PABLO-H7S0B"
var path6 = "PABLO-7DVG0"
var path7 = "PABLO-VC7E0"
var path8 = "PABLO-06DVC"
var path9 = "PABLO-S3FT6"
var path0 = "PABLO-9DBKD"
var deluxepath = "PABLO-D757F"
#---------------------------------
func _process(_delta):
	if Input.is_action_just_pressed("testing"):
		get_tree().change_scene_to_file("res://Scenes/loading_screen.tscn")
func _on_verify_pressed():
	var code: String = line_edit.text
	print(code)
	if code == path1:
		get_tree().change_scene_to_file("res://Scenes/loading_screen.tscn")
	if code == path2:
		get_tree().change_scene_to_file("res://Scenes/loading_screen.tscn")
	if code == path3:
		get_tree().change_scene_to_file("res://Scenes/loading_screen.tscn")
	if code == path4:
		get_tree().change_scene_to_file("res://Scenes/loading_screen.tscn")
	if code == path5:
		get_tree().change_scene_to_file("res://Scenes/loading_screen.tscn")
	if code == path6:
		get_tree().change_scene_to_file("res://Scenes/loading_screen.tscn")
	if code == path8:
		get_tree().change_scene_to_file("res://Scenes/loading_screen.tscn")
	if code == path9:
		get_tree().change_scene_to_file("res://Scenes/loading_screen.tscn")
	if code == path0:
		get_tree().change_scene_to_file("res://Scenes/loading_screen.tscn")
	if code == deluxepath:
		get_tree().change_scene_to_file("res://Scenes/loading_screen.tscn")
