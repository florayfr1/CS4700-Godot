extends KinematicBody2D

var velocity = Vector2.ZERO
var acceleration = 500

func _physics_process(delta):
	if Input.is_action_pressed("move_left"):
		velocity.x = -acceleration
	elif Input.is_action_pressed("move_right"):
		velocity.x = +acceleration
	move_and_slide(velocity)
