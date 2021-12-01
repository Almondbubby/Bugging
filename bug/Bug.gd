extends KinematicBody2D


var speed = 150
var dir = -1
var velocity = Vector2.ZERO
var ramped = false
var onRamp = false

func _physics_process(delta):
	velocity.x = 150
	if !onRamp:
		velocity.y = 100
	else:
		velocity.y = 0
	$AnimationPlayer.play("crawl")
	velocity.x *= dir
	move_and_slide(velocity)

func _process(delta):
	if ramped:
		global_rotation_degrees +=45
		ramped = false

func _on_Area2D_body_entered(body):

	if body.is_in_group("ramp") && !onRamp:
		onRamp = true
		if dir == 1:
			position.x += 5
			global_rotation_degrees -= 45

	if body.is_in_group("reverseAnt") && !onRamp:
		scale.x *= -1
		dir *=-1



func _on_Area2D2_body_exited(body):
	if body.is_in_group("ramp"):
		onRamp = false
		ramped = true
