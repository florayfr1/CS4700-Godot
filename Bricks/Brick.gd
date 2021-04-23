extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var points = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	set_meta("brick", true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func decrease_points():
	points -= 1
	if points <= 0:
		queue_free()
