extends Node


var boxes
var ramps
var planks
var level
var changedLevel = false
var inAir = false

func _process(delta):
	if Input.is_action_pressed("esc"):
		get_tree().change_scene("res://UI/Main Menu.tscn")
	if changedLevel:
		changedLevel = false
		if get_tree().get_current_scene().get_name() == "Level1":
			boxes = 0
			ramps = 1
			planks = 0
		if get_tree().get_current_scene().get_name() == "Level2":
			boxes = 1
			ramps = 2
			planks = 0
		if get_tree().get_current_scene().get_name() == "Level3":
			boxes = 1
			ramps = 2
			planks = 1
