extends Control

func _process(_delta):
	if Input.is_action_just_pressed("testing"):
		get_tree().change_scene_to_file("res://Scenes/testing.tscn")


func _on_quit_game_pressed():
	get_tree().quit()


func _on_new_game_pressed():
	get_tree().change_scene_to_file("res://Scenes/level_select.tscn")


func _on_profile_pressed():
	get_tree().change_scene_to_file("res://Scenes/profile.tscn")
