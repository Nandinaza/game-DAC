extends Control



func _on_Button_pressed():
	get_tree().change_scene("res://scene/level1/dialog_lv1.tscn")


func _on_Button2_pressed():
	get_tree().change_scene("res://scene/level2/level2.tscn")
