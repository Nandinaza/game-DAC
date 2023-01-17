extends CanvasLayer

export (String,FILE,"*.json") var dialog_file
var dialog = []

func _ready():
	play()
func play():
	dialog = load_dialog()
	
	$NinePatchRect/Name.text = dialog[0]["name"]
	$NinePatchRect/Dialog.text = dialog[0]["text"]
func load_dialog():
	var file = File.new()
	if file.file_exists(dialog_file):
		file.open(dialog_file,file.READ)
		return parse_json(file.get_as_text())
