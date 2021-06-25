extends KinematicBody2D

export var speed: int = 200
export var jump_force: int = 0x5f

func _process(delta):
	var direction = Vector2.ZERO

	# Vertical movement
	if Input.is_key_pressed(KEY_UP):
		direction += Vector2.UP
	elif Input.is_key_pressed(KEY_DOWN):
		direction += Vector2.DOWN

	# Horizontal movement	
	if Input.is_key_pressed(KEY_UP):
		direction += Vector2.UP
	elif Input.is_key_pressed(KEY_DOWN):
		direction += Vector2.DOWN

	# WARNING: Will be processed each frame
	move_and_slide(Vector2.UP * speed * delta)

func _ready(delta):
	print("Script is now ready!")
	$AnimatedSprite.play("default")
