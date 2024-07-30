extends CharacterBody2D


const SPEED = 400


func _physics_process(delta):
	var direcao = Input.get_axis("up", "down")
	if direcao:
		velocity.y = direcao * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
