extends Control

var world = "res://Game_Classic/Game_Main/MainScene.tscn"

func _ready():
	visible = false
	
func _reset_button_pressed():
	get_tree().change_scene(world)
