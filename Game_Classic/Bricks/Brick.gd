extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var points

onready var animated_sprite = get_node("AnimatedSprite")

var blue_frames = preload("res://Game_Classic/Bricks/frames/brick1_frame.tres")
var green_frames = preload("res://Game_Classic/Bricks/frames/brick2_frame.tres")
var grey_frames = preload("res://Game_Classic/Bricks/frames/brick0_frame.tres")

enum Frames {BLUE = 1, GREEN = 2, GREY = 0}

var current_frames = Frames.BLUE

var indestructable = false

func set_frames(frames):
	current_frames = frames

func change_frames():
	match current_frames:
		Frames.BLUE:
			animated_sprite.frames = blue_frames
		Frames.GREEN:
			animated_sprite.frames = green_frames
		Frames.GREY:
			animated_sprite.frames = grey_frames

# Called when the node enters the scene tree for the first time.
func _ready():
	set_meta("brick", true)
	change_frames()
	points = animated_sprite.frames.get_frame_count("default")
	
func set_indestructable(booleanValue):
	indestructable = booleanValue

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func decrease_points():
	if indestructable:
		return
	
	points -= 1
	
	if animated_sprite.frame < animated_sprite.frames.get_frame_count("default")  -1:
		animated_sprite.frame += 1
	
	if points <= 0:
		queue_free()

func is_exist_after_hit():
	return points > 1
