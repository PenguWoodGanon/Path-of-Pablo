extends Area2D

var entered = false
@onready var timer = $Timer


func _on_spikes_entered(body: Node2D):
	if entered == false:
		entered = true
		body.global_position = $DestinationPoint.global_position
		Global.health -= 1
		timer.start()
		print("Blade hit!")



func _on_timer_timeout():
	entered = false
