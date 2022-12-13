extends Control

var time;

func _physics_process(delta):
	if(Input.is_action_pressed("ui_page_up")):
		$TextureRect.texture("res://Asset/Mainmenu/Title.png")


