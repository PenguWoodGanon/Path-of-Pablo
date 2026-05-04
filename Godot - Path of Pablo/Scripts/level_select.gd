extends Control

var dormgrass = false
var swampybog = false
var undercastle = false

@onready var dorm_background = $DormBackground
@onready var swamp_background = $SwampBackground
@onready var castle_background = $CastleBackground

func _ready():
	dorm_background.visible = false
	swamp_background.visible = false
	castle_background.visible = false

func _on_dormgrass_pressed():
	dormgrass = true
	swampybog = false
	undercastle = false
	dorm_background.visible = true
	swamp_background.visible = false
	castle_background.visible = false

func _on_swampy_bog_pressed():
	dormgrass = false
	swampybog = true
	undercastle = false
	dorm_background.visible = false
	swamp_background.visible = true
	castle_background.visible = false
	
func _on_watercastle_pressed():
	dormgrass = false
	swampybog = false
	undercastle = true
	dorm_background.visible = false
	swamp_background.visible = false
	castle_background.visible = true

func _on_embark_pressed():
	if dormgrass == true:
		get_tree().change_scene_to_file("res://Scenes/Levels/dormant_grasslands.tscn")
	if swampybog == true:
		get_tree().change_scene_to_file("res://Scenes/Levels/swampy_bog.tscn")
	if undercastle == true:
		get_tree().change_scene_to_file("res://Scenes/construction.tscn")
	else:
		print("No Level Selected")


func _on_groundtunnels_pressed():
	get_tree().change_scene_to_file("res://Scenes/construction.tscn")


func _on_heavensgate_pressed():
	get_tree().change_scene_to_file("res://Scenes/construction.tscn")
