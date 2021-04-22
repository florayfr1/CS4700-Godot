extends KinematicBody2D

var speed = 500
var direction = Vector2(0.5, 1)

func _physics_process(delta):
	var velocity = speed * direction * delta
	var collision = move_and_collide(velocity)
	
	if collision != null:
		direction = direction.bounce(collision.normal)
		
	
