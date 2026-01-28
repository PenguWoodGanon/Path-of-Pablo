extends Control

func _process(_delta):
	if Input.is_action_just_pressed("testing"):
		get_tree().change_scene_to_file("res://Scenes/testing.tscn")


func _on_quit_game_pressed():
	get_tree().quit()


func _on_dlc_pressed():
	get_tree().change_scene_to_file("res://Scenes/dlc_menu.tscn")
