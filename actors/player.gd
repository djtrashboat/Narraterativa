extends CharacterBody2D


const SPEED = 300.0


var direction = Vector2.ZERO


func _physics_process(delta):
	
	get_dir()
	velocity = direction * SPEED
	# Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY
#
	## Get the input direction and handle the movement/deceleration.
	## As good practice, you should replace UI actions with custom gameplay actions.
	#var direction = Input.get_axis("ui_left", "ui_right")
	#if direction:
		#velocity.x = direction * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

func get_dir():
	#Input.is_action_pressed("ui_left")
	#direction.x = float("ui_right") - float("ui_left")
	direction.x = float(Input.is_action_pressed("ui_left")) - float(Input.is_action_pressed("ui_right"))
	print(direction)
