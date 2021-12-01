extends Control




func _ready():
	Singletons.level = 0

func _on_StartButton_pressed():
	get_tree().change_scene("res://UI/LevelMenu.tscn")


func _on_CreditsButton_pressed():
	get_tree().change_scene("res://UI/Credits.tscn")
