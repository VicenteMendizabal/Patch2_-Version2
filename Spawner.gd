extends Node2D

var ColeccionableEscena = preload("res://Escenas/collecionable.tscn")




func _ready():
	$Timer.stop()
	$Timer.wait_time = randf_range(1.1 , 3.2)
	$Timer.start()
	



func _on_timer_timeout():
	var coleccionable = ColeccionableEscena.instantiate()
	add_child(coleccionable)
