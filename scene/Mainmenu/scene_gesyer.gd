extends Node2D

onready var tween = $Tween

func _ready():
	tween.interpolate_property($Sprite,"position",Vector2(-700,0),Vector2(0,0),1,Tween.TRANS_LINEAR,Tween.EASE_IN)
	tween.start()


func _on_exit_pressed():
	get_tree().quit()
