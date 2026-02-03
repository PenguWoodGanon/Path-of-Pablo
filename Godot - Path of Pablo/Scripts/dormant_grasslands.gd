extends Node2D

var talked = false

func _on_mr_smiley_pressed():
	mr_smiley_talk()

func mr_smiley_talk():
	talked = true
