extends KinematicBody2D

onready var animasi = $AnimatedSprite
var velocity = Vector2.ZERO
var nilai = 40

func _physics_process(delta):
	velocity.y += 50
	var input = Input.is_action_pressed("ui_accept") && is_on_floor()
	if input:
		velocity.y = -1200
	velocity = move_and_slide(velocity,Vector2.UP)
func _ready():
	animasi.play("lari")

func _input(event):
	if event is InputEventScreenTouch and is_on_floor():
		velocity.y = -1200

