extends Control

onready var tween = $Tween

func _ready():
	pass
func muncul():
	tween.interpolate_property(
		self,"rect_position:y",0,334,1,Tween.TRANS_LINEAR,Tween.EASE_IN
	)
	tween.start()
