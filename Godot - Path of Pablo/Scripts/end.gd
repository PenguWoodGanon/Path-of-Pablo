extends Area2D

var entered = false

func _on_end_entered(body: Node2D):
	if not entered:
		print("works")
		entered = true
		get_tree().change_scene_to_file("res://Scenes/win_menu.tscn")
