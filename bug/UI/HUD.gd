extends CanvasLayer

var box = preload("res://Objects/Box.tscn")
var ramp = preload("res://Objects/Ramp.tscn")
var plank = preload("res://Objects/Plank.tscn")

func _ready():
	Singletons.changedLevel = true

func _process(delta):
	$BoxText.text = str(Singletons.boxes)
	$RampText.text = str(Singletons.ramps)
	$PlankText.text = str(Singletons.planks)

func getBox():
	var b = box.instance()
	get_parent().add_child(b)

func getRamp():
	var r = ramp.instance()
	get_parent().add_child(r)
	
func getPlank():
	var p = plank.instance()
	get_parent().add_child(p)

func _on_Box_button_down():
	if Singletons.boxes >=1:
		Singletons.boxes-=1
		getBox()

func _on_Ramp_button_down():
	if Singletons.ramps >=1:
		Singletons.ramps-=1
		getRamp()



func _on_PlankButton_button_down():
	if Singletons.planks >=1:
		Singletons.planks-=1
		getPlank()
