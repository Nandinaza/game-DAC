extends Node2D

var index = -1

var data = [
	"ah pagi yang sangat cerah",
	"sayang sekali saya tidak punya pekerjaan",
	"hei nak apakah kamu butuh perkerjaan",
	"kami menawarkan pekerjaan magang untuk-mu"
]

func _ready():
	$muka_karakter_1.visible = true
	$muka_karakter_2.visible = false

	print(data[0])
	
	
func load_dialog(parameter,sprite1,sprite2):
	$RichTextLabel.text = parameter
	$Tween.interpolate_property(
		$RichTextLabel,"percent_visible",0,1,1,Tween.TRANS_LINEAR,Tween.EASE_OUT
	)
	$Tween.start()


func _on_lanjut_pressed():
	index += 1
	if(index == data.size()):
		load_dialog("end",false,false)
	else:
		load_dialog(data[index],false,false)
