extends KinematicBody2D

export var speed = 500

const p_container = preload("res://Player\'/PContainer.tres")
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
	
	direction = direction.normalized()
	var velocity = speed * direction * delta
	var collision = move_and_collide(velocity)
	
	if collision != null:
		if collision.collider == p_container.player:
			direction = direction.bounce(collision.normal)
			direction.x = get_bounce_directionx(collision)

		else:
			print(collision.collider.get_meta("brick"))
			if collision.collider.get_meta("brick"):
				print("hit brick")
				collision.collider.decrease_points()
			direction = direction.bounce(collision.normal)
		
func get_bounce_directionx(collision: KinematicCollision2D):
	var relativex = collision.position.x - p_container.player.global_position.x
	var percent = relativex / p_container.player_width
	return (percent - 0.5) * 2
	
func is_game_over():
	if not is_visible.is_on_screen():
		print("Game over")
		get_tree().change_scene(world)
		
