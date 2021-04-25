extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var points

onready var animated_sprite = get_node("AnimatedSprite")


# Called when the node enters the scene tree for the first time.
func _ready():
	set_meta("brick", true)
	points = animated_sprite.frames.get_frame_count("default")
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func decrease_points():
	points -= 1
	
	if animated_sprite.frame < animated_sprite.frames.get_frame_count("default")  -1:
		animated_sprite.frame += 1
	
	if points <= 0:
		queue_free()
