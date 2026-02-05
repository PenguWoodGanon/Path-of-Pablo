extends CharacterBody2D

var SPEED = 300.0
var JUMP_VELOCITY = -400.0

@onready var hitbox = $Hitbox
@onready var anim_sprite = $AnimatedSprite2D

func _ready():
	print_hitbox_size()

func _physics_process(delta):
	if Global.char_move == true:
		#Hitbox Resizing
		if Global.char_pablo == true:
			hitbox.shape.size = Vector2(28, 32.5)
		if Global.char_mrsmiley == true:
			hitbox.shape.size = Vector2(32, 32.5)
		if Global.char_speed == true:
			hitbox.shape.size = Vector2(32, 32.5)
		if Global.char_knight == true:
			hitbox.shape.size = Vector2(32, 32.5)
		if Global.char_megapablo == true:
			hitbox.shape.size = Vector2(28, 32.5)
		if Global.char_paul == true:
			hitbox.shape.size = Vector2(32, 32.5)
		if Global.char_slime == true:
			hitbox.shape.size = Vector2(32, 16.5)
		if Global.char_donut == true:
			hitbox.shape.size = Vector2(32, 32.5)
		#Gravity
		if not is_on_floor():
			velocity += get_gravity() * delta
			if Global.char_pablo == true:
				anim_sprite.play("pablo_default")
			if Global.char_mrsmiley == true:
				anim_sprite.play("mr_smiley_default")
			if Global.char_speed == true:
				anim_sprite.play("speed_default")
			if Global.char_megapablo == true:
				anim_sprite.play("megapablo_default")
			if Global.char_knight == true:
				anim_sprite.play("knight_default")
			if Global.char_paul == true:
				anim_sprite.play("paul_default")
			if Global.char_slime == true:
				anim_sprite.play("slime_default")
			if Global.char_donut == true:
				anim_sprite.play("donut_default")
		#Jump
		if Input.is_action_just_pressed("jump") and is_on_floor():
			velocity.y = JUMP_VELOCITY
			if Global.char_slime == true:
				anim_sprite.play("slime_default")
		#Direction
		var direction = Input.get_axis("left", "right")
		#Flip the sprite
		if direction > 0:
			anim_sprite.flip_h = false
		if direction < 0:
			anim_sprite.flip_h = true
		#Moving left and right
		if direction:
			velocity.x = direction * SPEED
			if Global.char_pablo == true:
				anim_sprite.play("pablo_run")
			if Global.char_mrsmiley == true:
				anim_sprite.play("mr_smiley_run")
			if Global.char_speed == true:
				anim_sprite.play("speed_run")
			if Global.char_megapablo == true:
				anim_sprite.play("megapablo_run")
			if Global.char_knight == true:
				anim_sprite.play("knight_run")
			if Global.char_paul == true:
				anim_sprite.play("paul_run")
			if Global.char_slime == true:
				anim_sprite.play("slime_run")
			if Global.char_donut == true:
				anim_sprite.play("donut_run")
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
		#Idle
		if is_on_floor() == true and direction == 0:
			if Global.char_pablo == true:
				anim_sprite.play("pablo_idle")
			if Global.char_mrsmiley == true:
				anim_sprite.play("mr_smiley_idle")
			if Global.char_speed == true:
				anim_sprite.play("speed_idle")
			if Global.char_megapablo == true:
				anim_sprite.play("megapablo_idle")
			if Global.char_knight == true:
				anim_sprite.play("knight_idle")
			if Global.char_paul == true:
				anim_sprite.play("paul_idle")
			if Global.char_slime == true:
				anim_sprite.play("slime_idle")
			if Global.char_donut == true:
				anim_sprite.play("donut_idle")
				Global.health = 4
		# Speed's speed
		if Global.char_speed == true:
			SPEED = 400
		else:
			SPEED = 300
		move_and_slide()

func print_hitbox_size():
	print("Width: ", hitbox.shape.size.x)
	print("Height: ", hitbox.shape.size.y)
