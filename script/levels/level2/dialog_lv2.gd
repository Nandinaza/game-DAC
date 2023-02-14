extends Node2D

onready var textlabel = $RichTextLabel
onready var muka = $muka_karakter_1
onready var tween = $Tween
var indek = 0

func _ready():
	var data_dialog = load("res://scene/dialog/dialog_logic.gd")
	var dialog = data_dialog.new()
	load_dialog(dialog.get_dialog2(0),null,null)
	
func load_dialog(param,pt1,bg):
	textlabel.text = param
	tween.interpolate_property(
		textlabel,"percent_visible",0,1,1,Tween.TRANS_LINEAR,Tween.EASE_IN_OUT
	)
	tween.start()
	if pt1 == true :
		muka.visible = true
	elif pt1 == false :
		muka.visible = false
	else :
		print("none")


func _on_lanjut_pressed():
	var data_dialog = load("res://scene/dialog/dialog_logic.gd")
	var dialog = data_dialog.new()
	indek += 1
	if(indek >= 2):
		get_tree().change_scene("res://scene/level2/level2.tscn")
	else:
		load_dialog(dialog.get_dialog2(indek),null,null)
