extends Control

onready var tween = $Tween

func muncul():
	tween.interpolate_property(
		self,"rect_position:y",0,334,1,Tween.TRANS_LINEAR,Tween.EASE_IN
	)
	tween.start()


func _on_peti_body_entered(body):
	muncul()


func _on_peti_body_exited(body):
	if(body.name == "kine"):
		tween.interpolate_property(
			self,"rect_position:y",334,0,1,Tween.TRANS_LINEAR,Tween.EASE_IN
		)
		tween.start()
