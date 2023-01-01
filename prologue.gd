extends Node2D

func _ready():
	load_dialog("90tulis")
func load_dialog(param):
	$Tween.interpolate_property($dialog,"percent_visible",0,1,1,Tween.TRANS_LINEAR,Tween.EASE_IN_OUT)
	$Tween.start()
	$dialog.text(param)
