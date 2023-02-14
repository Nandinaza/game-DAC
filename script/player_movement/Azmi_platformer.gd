extends KinematicBody2D

var laju = 100; var pergerakan = Vector2.ZERO; onready var animasi = $AnimatedSprite

func _physics_process(_delta):
	pergerakan.y += 20;
	if(Input.is_action_pressed("ui_right")):
		pergerakan.x += 70;
		
	elif(Input.is_action_pressed("ui_left")):
		pergerakan.x -= 70;
	if(Input.is_action_pressed("ui_accept") and is_on_floor()):
		pergerakan.y -= 499;
	
	pergerakan.x = lerp(pergerakan.x,0,0.2)
	pergerakan = move_and_slide(pergerakan,Vector2.UP)
	
	update_animasi()
func update_animasi():
	#kecepatan.x < (laju * 0.5) and kecepatan.x > (-laju * 0.5):
	if is_on_floor():
		if(pergerakan.x < (laju * 0.5) and pergerakan.x > (-laju *0.5)):
			animasi.play("idle")
		else:
			animasi.play("jalan")
	else:
		animasi.play("lompat")
	
	animasi.flip_h = false
	if(pergerakan.x < 0):
		animasi.flip_h = true
		
#tweeen area


func _on_zona_jatuh_body_entered(body):
	if(body.name == "kine"):
		get_tree().change_scene("res://scene/level1/level1.tscn")


func _on_finish_body_entered(body):
	if(body.name == "kine"):
		get_tree().change_scene("res://scene/win_and_defeat/normal_win.tscn")

