extends Node

#var playerScore = 0
#var oponentScore = 0

func save_game():
	var file = FileAccess.open("res://savegame.data", FileAccess.WRITE)
	file.store_var(Global.playerScore)
	file.store_var(Global.opponentScore)
	file.close()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$PlayerScore.text = str(Global.playerScore)
	$OponentScore.text = str(Global.opponentScore)
	

func ball_reset():
	$Ball.position = Vector2(640,360)
	$Ball.speed = 500
	randomize()
	$Ball.velocity.x = [-1.0,1.0][randf()]
	$Ball.velocity.y = randf_range(-1,1)
	save_game()

func _on_left_body_entered(body):
	ball_reset()
	Global.opponentScore+=1;
	

func _on_right_body_entered(body):
	ball_reset()
	Global.playerScore+=1;
	
	

