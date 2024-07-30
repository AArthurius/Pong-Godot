extends CharacterBody2D

const xspeed = 200
const yspeed = 100

func rand(range):
	var range2 = range * -1
	var num = 0
	while num == 0:
		num = randi_range(range, range2)
	return num

func direção_inicial():
	position.x = 0
	position.y = 0
	velocity.x = xspeed * rand(2)
	velocity.y = yspeed * rand(4)

func _ready():
	direção_inicial()
	print(velocity)

func _process(delta):
	move_and_slide()


func _on_esquerda_area_entered(area):
	direção_inicial()
	
func _on_direita_area_entered(area):
	direção_inicial()
	

func _on_area_2d_body_entered(body):
	if body.name == "Bordas":
		velocity.y = velocity.y * -1
	elif body.name == "Retangulo" or body.name == "Retangulo2":
		velocity.x = velocity.x * -1
	else:
		print(body.name)
