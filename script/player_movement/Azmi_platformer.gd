extends KinematicBody2D

var laju = 100; var pergerakan = Vector2.ZERO; onready var animasi = $AnimatedSprite

func _physics_process(_delta):
	pergerakan.y += 20;
	if(Input.is_action_pressed("ui_right")):
		pergerakan.x += 90;
	elif(Input.is_action_pressed("ui_left")):
		pergerakan.x -= 90;
	if(Input.is_action_pressed("ui_accept") and is_on_floor()):
		pergerakan.y -= 499;
		
	pergerakan.x = lerp(pergerakan.x,0,0.2)
	pergerakan = move_and_slide(pergerakan,Vector2.UP)
	print(pergerakan)
	
	update_animasi()
func update_animasi():
	if(pergerakan.x != 0):
		animasi.play("jalan")
	else:
		animasi.play("idle")
