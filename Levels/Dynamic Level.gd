extends Node2D

export var rows = 3
export var columns = 4
export(int, 1, 5) var difficulty = 1 #1 to 5, 1 is easy

const brick_class = preload("res://Bricks/Brick.tscn")

#brick should be this imension
#const cell_width = 96
#const cell_height = 32
const cell_width = 130
const cell_height = 30

# Called when the node enters the scene tree for the first time.
func _ready():
	rows += difficulty
	var empty_range = 0.6 - (difficulty/ 10.0) #(0.1 to 0.5)

	for column in range(columns):
		for row in range(rows):
			var random = rand_range(0,1)
			if random < empty_range:
				pass
			elif random < 0.7:
				var brick = brick_class.instance()
				init_brick(brick.Frames.BLUE,brick, row, column, false)
				
			elif random < 0.9:
				var brick = brick_class.instance()
				init_brick(brick.Frames.GREEN, brick, row, column, false)
			else:
				var brick = brick_class.instance()
				init_brick(brick.Frames.GREY, brick, row, column, true)
				
func init_brick(frame, brick, row, column, indestructable):
		brick.set_frames(frame)
		brick.set_indestructable(indestructable)
		add_child(brick)
		brick.position.x = column * cell_width
		brick.position.y = row * cell_height
