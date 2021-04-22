extends KinematicBody2D

export var speed = 500

var world = "res://Game 1/MainScene.tscn"
var direction = Vector2(0.5, 1)
var is_throwing = false

onready var is_visible = get_node("BallVisible")
	
func _physics_process(delta):
	if Input.is_action_just_pressed("throw"):
		is_throwing = true
	
	if not is_throwing:
		return
	
	is_game_over()
	
	var velocity = speed * direction * delta
	var collision = move_and_collide(velocity)
	
	if collision != null:
		direction = direction.bounce(collision.normal)
		

func is_game_over():
	if not is_visible.is_on_screen():
		print("Game over")
		get_tree().change_scene(world)
		
