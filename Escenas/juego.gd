extends Node


@onready var player = $Player
var scoreJugador := 0


func _ready():
	player.connect("scoreUP", subirScore)
	player.connect("playerDied", morir)
	
func subirScore():
	scoreJugador+= 1
	$ScoreLabel.text = str(scoreJugador)
	

func morir():
	
	$DeadScreen/HBoxContainer/FinalScore.text = str(scoreJugador)
	$DeadScreen.show()
	get_tree().paused = true
	pass
