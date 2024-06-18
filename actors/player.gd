extends CharacterBody2D

@onready var animatedsprite = $AnimationPlayer
@onready var sprite = $Sprite2D

const SPEED = 100

var direction = Vector2.ZERO


func _process(delta):
	animation()

func _physics_process(delta):
	direction = get_dir()
	velocity = direction * SPEED
	move_and_slide()

func get_dir() -> Vector2:
	return Vector2(int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left")), int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))).normalized()

func animation():
	if direction != Vector2.ZERO:
		if direction.x < 0:
			sprite.flip_h = true
		elif direction.x > 0:
			sprite.flip_h = false
		animatedsprite.play("run")
	else:
		animatedsprite.play("idle")
