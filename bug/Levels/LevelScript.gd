extends Node2D

func _process(delta):
	$Camera2D.position = $Bug.position


func _on_Area2D_body_entered(body):
	if body.name == "Bug":
		get_tree().change_scene("res://UI/VictoryScreen.tscn")
