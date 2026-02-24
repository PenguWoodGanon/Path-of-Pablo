extends Panel

@onready var mrsmiley_locked = $MrSmileyCard/LOCKED
@onready var donut_locked = $DonutCard/LOCKED2
@onready var warrior_locked = $WarriorCard/LOCKED3
@onready var megapablo_locked = $MegaPabloCard/LOCKED4
@onready var speed_locked = $SpeedCard/LOCKED5
@onready var paul_locked = $PaulCard/LOCKED6
@onready var slime_locked = $SlimeCard/LOCKED7


func _ready():
	update_locks()

func _process(_delta):
	update_locks()

# -------------------------
# LOCK VISIBILITY
# -------------------------
func update_locks():
	mrsmiley_locked.visible = !Global.mrsmiley_unlocked
	donut_locked.visible = !Global.donut_unlocked
	warrior_locked.visible = !Global.knight_unlocked
	megapablo_locked.visible = !Global.megapablo_unlocked
	speed_locked.visible = !Global.speed_unlocked
	paul_locked.visible = !Global.paul_unlocked
	slime_locked.visible = !Global.slime_unlocked


# -------------------------
# CHARACTER RESET
# -------------------------
func reset_characters():
	Global.char_pablo = false
	Global.char_mrsmiley = false
	Global.char_speed = false
	Global.char_megapablo = false
	Global.char_knight = false
	Global.char_paul = false
	Global.char_slime = false
	Global.char_donut = false


# -------------------------
# BUTTONS
# -------------------------

# Mr. Smiley
func _on_button_pressed():
	if Global.mrsmiley_unlocked:
		reset_characters()
		Global.char_mrsmiley = true


# Pablo
func _on_pablo_pressed():
	reset_characters()
	Global.char_pablo = true


# Speed
func _on_speed_pressed():
	if Global.speed_unlocked:
		reset_characters()
		Global.char_speed = true


# Mega Pablo
func _on_megapablo_pressed():
	if Global.megapablo_unlocked:
		reset_characters()
		Global.char_megapablo = true


# Warrior
func _on_warrior_pressed():
	if Global.knight_unlocked:
		reset_characters()
		Global.char_knight = true


# Paul
func _on_paul_pressed():
	if Global.paul_unlocked:
		reset_characters()
		Global.char_paul = true


# Slime
func _on_slime_pressed():
	if Global.slime_unlocked:
		reset_characters()
		Global.char_slime = true


# Donut
func _on_donut_pressed():
	if Global.donut_unlocked:
		reset_characters()
		Global.char_donut = true
