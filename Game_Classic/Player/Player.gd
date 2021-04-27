extends KinematicBody2D

var velocity = Vector2.ZERO
var acceleration = 500
var friction = 200

export var player_length = 7

onready var player_map = get_node("playerParts")
const p_container = preload("res://Game_Classic/Player/PContainer.tres")
#player_container
const player_cell_width = 32  #width of indiv player cell in pixels

func _ready():
	build_player(player_length)
	p_container.player = self
	p_container.player_width = player_length * player_cell_width
func build_player(length):
	assert(length >= 2, "Error: length must be greater than 2")
	#Video part 4
	
	var temp_cell = 0
	var left_body_part = 0
	
	player_map.set_cell(temp_cell,0,left_body_part)
	
	for i in range (0, length - 1):
		temp_cell += 1
		player_map.set_cell(temp_cell,0,left_body_part)
		
	temp_cell += 1
	player_map.set_cell(temp_cell,0,left_body_part)
	
func _physics_process(delta):
	fix_y()
	if Input.is_action_pressed("move_left"):
		velocity.x = -acceleration
	elif Input.is_action_pressed("move_right"):
		velocity.x = +acceleration
	move_and_slide(velocity)

	velocity = velocity.move_toward(Vector2.ZERO, friction)

func fix_y():
	position.y = 665
