extends Node2D

export var rows = 3
export var columns = 10
export(int, 1, 5) var difficulty = 1 #1 to 5, 1 is easy

const blue_brick_class = preload("res://Bricks/Brick1.tscn")
const green_brick_class = preload("res://Bricks/Brick2.tscn")

#brick should be this imension
const cell_width = 96
const cell_height = 32


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
				var blue_brick = blue_brick_class.instance()
				init_brick(blue_brick, row, column)
				
			else:
				var green_brick = green_brick_class.instance()
				init_brick(green_brick, row, column)
				
func init_brick(brick, row, column):
		add_child(brick)
		brick.position.x = column * cell_width
		brick.position.y = row * cell_height
