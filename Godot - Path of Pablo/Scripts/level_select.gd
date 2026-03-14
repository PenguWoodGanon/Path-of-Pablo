extends Control

var dormgrass = false
var swampybog = false

@onready var dorm_background = $DormBackground
@onready var swamp_background = $SwampBackground

func _ready():
	dorm_background.visible = false
	swamp_background.visible = false

func _on_dormgrass_pressed():
	dormgrass = true
	swampybog = false
	dorm_background.visible = true
	swamp_background.visible = false

func _on_swampy_bog_pressed():
	dormgrass = false
	swampybog = true
	dorm_background.visible = false
	swamp_background.visible = true

func _on_embark_pressed():
	if dormgrass == true:
		get_tree().change_scene_to_file("res://Scenes/Levels/dormant_grasslands.tscn")
	if swampybog == true:
		get_tree().change_scene_to_file("res://Scenes/Levels/swampy_bog.tscn")
	else:
		print("No Level Selected")
