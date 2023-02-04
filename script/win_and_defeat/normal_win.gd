extends Node2D



func _on_TouchScreenButton_pressed():
	get_tree().change_scene("res://scene/pilih_level/level_selection.tscn")
