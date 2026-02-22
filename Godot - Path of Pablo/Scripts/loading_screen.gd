extends Node2D

@onready var counter = $counter
@onready var counter_timer = $CounterTimer

var count := 0

func _ready():
	Global.load_data()
	Global.save()

func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")

func _on_counter_timer_timeout() -> void:
	increase_counter()
	counter_timer.start()

func increase_counter() -> void:
	count += 10
	counter.text = str(count)
