extends Area2D

@onready var audio_stream_player = $AudioStreamPlayer
@onready var animated_sprite_2d = $AnimatedSprite2D

var collected = false

func _ready():
	animated_sprite_2d.visible = true

func _on_body_entered(_body):
	if collected == false:
		Global.coins += 1
		collected = true
		animated_sprite_2d.visible = false
		audio_stream_player.play()
		await audio_stream_player.finished
		queue_free()
