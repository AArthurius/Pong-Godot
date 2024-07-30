extends Node2D

var Pontos1 = 0
var Pontos2 = 0
@onready var Score1 = %Score1
@onready var Score2 = %Score2

# Called when the node enters the scene tree for the first time.
func _ready():
	Score1.text = str(Pontos1) # replace with any String
	Score2.text = str(Pontos2)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_esquerda_area_entered(area):
	Pontos1 = Pontos1 + 1
	Score1.text = str(Pontos1)
	
func _on_direita_area_entered(area):
	Pontos2 = Pontos2 + 1
	Score2.text = str(Pontos2)
