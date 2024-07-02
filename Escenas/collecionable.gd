extends Area2D

var esMoneda = false
var spritedeEnemigo = preload("res://AssetsJuego/barril.png")



func _ready():
	if randf() > .5:
		esMoneda = true
	
	if !esMoneda:
		$Sprite.texture = spritedeEnemigo

func _on_body_entered(body):
	if body.is_in_group("Player"):
		if esMoneda:
			body.subirScore()
		else:
			body.morirse()
			
			
		queue_free()
			
			
			
			
func _process(delta):
	position.y += 0.45
	
	
	
