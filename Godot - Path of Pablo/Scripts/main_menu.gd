extends Control

@onready var settings_menu = $SettingsMenu

func _ready():
	settings_menu.visible = false

func _process(_delta):
	if Input.is_action_just_pressed("testing"):
		get_tree().change_scene_to_file("res://Scenes/testing.tscn")
	if Input.is_action_just_pressed("escape"):
		settings_menu.visible = false

func _on_quit_game_pressed():
	get_tree().quit()

func _on_new_game_pressed():
	get_tree().change_scene_to_file("res://Scenes/level_select.tscn")

func _on_profile_pressed():
	get_tree().change_scene_to_file("res://Scenes/profile.tscn")

func _on_erase_save_data_pressed():
	Global.clear_data()

func _on_volume_value_changed(value):
	AudioServer.set_bus_volume_db(0,value)

func _on_settings_pressed():
	settings_menu.visible = true
