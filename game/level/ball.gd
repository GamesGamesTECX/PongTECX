extends CharacterBody2D

var speed = 500

func _ready():
	randomize()
	velocity.x = [-1.0,1.0][randf()]
	velocity.y = [-1.0,1.0][randf()]
	
func _physics_process(delta):
	var colilision_object = move_and_collide(velocity*speed*delta)
	if colilision_object:
		print("bum")
		velocity = velocity.bounce(colilision_object.get_normal())
		speed += 10

func _on_button_apple_pressed():
	$Sprite2D/AnimationPlayer.play("apple")

func _on_button_green_apple_pressed():
	$Sprite2D/AnimationPlayer.play("green_apple")


func _on_button_banana_pressed():
	$Sprite2D/AnimationPlayer.play("banana")
