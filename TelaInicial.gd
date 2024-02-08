extends Node

	
func load_game():
	var file = FileAccess.open("res://savegame.data", FileAccess.READ)
	Global.playerScore = file.get_var()
	Global.opponentScore = file.get_var()
	file.close()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_new_game_pressed():
	get_tree().change_scene_to_file("res://game/level/level.tscn")

func _on_load_game_pressed():
	load_game()
	get_tree().change_scene_to_file("res://game/level/level.tscn")
