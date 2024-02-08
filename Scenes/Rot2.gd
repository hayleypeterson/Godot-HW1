extends Node2D
@export var rotation_speed : float


func _ready():
	pass
	
	
func _process(delta):
	rotate(rotation_speed * delta)
	pass
