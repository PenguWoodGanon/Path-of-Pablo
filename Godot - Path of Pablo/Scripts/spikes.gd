extends Area2D

var entered = false
@onready var timer = $Timer

func _on_spikes_entered(body: Node2D):
	if entered == false:
		body.set_position($DestinationPoint.global_position)
		Global.health -= 1
		timer.start()



func when_timer_finished():
	entered = false
