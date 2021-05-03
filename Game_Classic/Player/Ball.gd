extends KinematicBody2D

export var speed = 500

const p_container = preload("res://Game_Classic/Player/PContainer.tres")
var world = "res://Game_Classic/Game_Main/MainScene.tscn"
var direction = Vector2(0.5, 1)
var is_throwing = false

onready var is_visible = get_node("BallVisible")
	
signal ball_hit(brick)

func _physics_process(delta):
	if Input.is_action_just_pressed("throw"):
		is_throwing = true
	
	if not is_throwing:
		return
	
	is_game_over()
	
	direction = direction.normalized()
	var velocity = speed * direction * delta
	var collision = move_and_collide(velocity)
	
	if collision != null:
		if collision.collider == p_container.player:
			direction = direction.bounce(collision.normal)
		

		else:
			if collision.collider.get_meta("brick"):
				var brick = collision.collider
				emit_signal("ball_hit", brick)
				brick.decrease_points()
				
			direction = direction.bounce(collision.normal)
		
	
func is_game_over():
	if not is_visible.is_on_screen():
		print("Game over")
		get_tree().change_scene(world)
		
