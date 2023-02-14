extends KinematicBody2D

var velocity = Vector2.ZERO
var jalan = false

func _process(_delta):
	if jalan :
		velocity.x = 750
		velocity = move_and_slide(velocity)
