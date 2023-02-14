extends Node2D

export (Array, PackedScene) var scene_obstacle
onready var camera = $Camera2D
onready var obs_position = $obs_position.position
onready var obs_container = $obs_container

func _ready():
	randomize()
	obj_generator(20)
	
func _physics_process(_delta):
	camera.position.x += 10

func obj_generator(jumlah):
	for i in jumlah:
		var type = randi() % 2
		var new_obs
		if(type == 0):
			new_obs = scene_obstacle[type].instance() as Area2D
			new_obs.position = obs_position
		elif(type == 1):
			new_obs = scene_obstacle[type].instance() as Area2D
			new_obs.position = obs_position
		
		if new_obs:
			obs_container.add_child(new_obs)
			obs_position.x += rand_range(1200,3000)


func _on_Timer_timeout():
	$Camera2D/TextureProgress.value += 2
	if ($Camera2D/TextureProgress.value == 100):
		get_tree().change_scene("res://scene/win_and_defeat/normal_win.tscn")
