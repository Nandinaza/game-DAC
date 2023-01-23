extends CanvasLayer

export (String,FILE,"*.json") var dialog_file = "res://script/dialog_test/dialog.json"
var dialog = []
var current_dialog_id = 0

func _ready():
	play()
func play():
	dialog = load_dialog()
	current_dialog_id = -1
	next_line()
	
func _input(event):
	if(event.is_action_pressed("nextline")):
		next_line()
func next_line():
	current_dialog_id += 1
	if current_dialog_id >= len(dialog):
		return
	
	$NinePatchRect/Name.text = dialog[current_dialog_id]["name"]
	$NinePatchRect/Dialog.text = dialog[current_dialog_id]["text"]
	
func load_dialog():
	var file = File.new()
	if file.file_exists(dialog_file):
		file.open(dialog_file,file.READ)
		return parse_json(file.get_as_text())
