extends KinematicBody2D

var selected = true

func _ready():
	global_position = Vector2(350.7,527.001)

func _physics_process(delta):
	if selected:
		$CollisionPolygon2D.disabled = true
		global_position = lerp(global_position,get_global_mouse_position(),delta*25)
		if !Input.is_action_pressed("click"):
			selected = false
	if !selected:
		$CollisionPolygon2D.disabled = false
		move_and_slide(Vector2(0,400))




func _on_Area2D_input_event(viewport, event, shape_idx):
	if Input.is_action_pressed("click") && !selected:
		selected = true

