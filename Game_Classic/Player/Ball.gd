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
			var hit_position = - collision.collider.global_position + collision.position 
			print(hit_position)
			var normal = fix_normal(collision.normal, hit_position)
			direction = direction.bounce(normal)			
						
			if collision.collider.get_meta("brick"):
				var brick = collision.collider
				emit_signal("ball_hit", brick)
				brick.decrease_points()
				

func fix_normal(normal, hit_position):
	if normal.x == 1 or normal.x == -1 or normal.y == 1 or normal.y == -1:
		return normal
	
	if hit_position.x < 2 and hit_position.y < 2:
		normal = Vector2(-0.5, -0.5) #up left
	elif hit_position.x > 94 and hit_position.y < 2:
		normal = Vector2(0.5, -0.5) #up right
	elif hit_position.x > 94 and hit_position.y > 30:
		normal = Vector2(0.5, 0.5) #low right
	elif hit_position.x < 2 and hit_position.y > 30:
		normal = Vector2(-0.5, 0.5) #low left
	normal = normal.normalized()
	return normal
func is_game_over():
	if not is_visible.is_on_screen():
		print("Game over")
		get_tree().change_scene(world)
		
