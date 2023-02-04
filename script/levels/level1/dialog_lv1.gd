extends Node2D

var index = -1
var agen_smith = preload("res://assets/dialog/potrait/agen_smith.png")
var thomas = preload("res://assets/dialog/potrait/thomas_slebew.png")

var kantorbg = preload("res://assets/background/kantor.jpeg")

onready var muka1 = $muka_karakter_1
onready var muka2 = $muka_karakter_2
onready var background = $backround

var data = [
	"ah pagi yang sangat cerah",
	"sayang sekali saya tidak punya pekerjaan",
	"hei nak apakah kamu butuh perkerjaan",
	"namaku agen smith",
	"kami menawarkan pekerjaan magang untuk-mu",
	"wah mantap,kerja jadi apa tuh?",
	"kebetulan kami butuh orang terpilih untuk menjalankan misi rahasia",
	"gasken....!",
	"setelah beberapa lama akhirnya azmi pun sampai di markas rahasia",
	"hai perkenalkan namaku thomas slebeww",#9
	"dan aku adalah bos di sini",
	"oh",
	"mungkin ini misi yang berbahaya",
	"apakah kamu sanggup menjalankan tugas ini?",
	"tugas apa?",
	"misi kita adalah mematamatai dan menghancurkan",#15
	"organisasi misterius bernama the partok",
	"the partok?",
	"iyah",
	"organisasi ini telah menyebabkan berbagai kerisuhan ",
	"selain itu semua anggota the partok juga bertingkah selayaknya orang gila",
	"entah siapa atau apa dalang di balik semua ini",#21
	"segerombolan orang gila ya?",
	"aku akan berusaha semaksimal mungkin",
	"apa ada informasi lagi?",
	"tidak,jadi bagaimana?",
	"akan saya usahakan",
	"kamu butuh nama samaran",#27
	"dan saya rasa yang paling tepat adalah ",
	"Detektif Azmi Clibot",
	"ih wagu men",
	"gak usah mbantah lu a***ng ba***at ",#31
	"ngikutin script aja susah amat ",
	"oh iya maaf",#33
	"kamu akan diantar oleh agen smith ke ",
	"tempat terakhir kali organisasi ini nampak",
	"siap",#34
	"singkat cerita akhirnya azmi sampai",
	"ke tempat tujuan"
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
		get_tree().change_scene("res://scene/level1/level1.tscn")
	else:
		match(index):
			0: $backround.visible = true
			1: $backround.visible = false
			2: muka2.visible = true
			3: muka1.visible = false
			5:
				muka1.visible = true
				muka2.visible = false
			6:
				muka1.visible = false
				muka2.visible = true
			7:
				muka1.visible = true
				muka2.visible = false
#masuk ke kantor
			8:
				muka1.visible = false
				$backround.visible = true
				$backround.set_texture(kantorbg)
				$backround.scale.x = 5
				$backround.scale.y = 4
			9: 
				muka2.set_texture(thomas)
				muka2.visible = true
			11:
				muka2.visible = false
				muka1.visible = true
			12:
				muka2.visible = true
				muka1.visible = false
			14:
				muka1.visible = true
				muka2.visible = false
			15:
				muka1.visible = false
				muka2.visible = true
			17:
				muka1.visible = true
				muka2.visible = false
			18:
				muka1.visible = false
				muka2.visible = true
			22:
				muka1.visible = true
				muka2.visible = false
			25:
				muka1.visible = false
				muka2.visible = true
			26:
				muka1.visible = true
				muka2.visible = false
			27:
				muka1.visible = false
				muka2.visible = true
			30:
				muka1.visible = true
				muka2.visible = false
			31:
				muka1.visible = false
				muka2.visible = true
			33:
				muka1.visible = true
				muka2.visible = false
			34:
				muka1.visible = false
				muka2.visible = true
			36:
				muka1.visible = true
				muka2.visible = false
			37:
				muka1.visible = false
		load_dialog(data[index],false,false)
