extends Node2D

var nomor = 0
#sangat dianjurkan menggunakan load data 
#dan switch case

func _ready():
	load_dialog("nandi ganteng")
	
func load_dialog(param):
	$dialog.text = param
	$Tween.interpolate_property(
		$dialog,"percent_visible",0,1,1,Tween.TRANS_LINEAR,Tween.EASE_IN_OUT
	)
	$Tween.start()


func _on_lanjut_pressed():
	nomor += 1
	if(nomor == 1):
		load_dialog("hello nama saya azmi")
	elif(nomor == 2):
		load_dialog("dan ini adalah game detektif")
