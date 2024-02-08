extends Node2D
@export var rotation_speed : float
@export var translation_speed : float = 50.0 


func _ready():
	pass 
	
	
func _process(delta):
	rotate(rotation_speed * delta)
	#gravity to origin
	var direction_to_origin = Vector2(0, 0) - position
	direction_to_origin = direction_to_origin.normalized()
	var translation_vector = direction_to_origin * translation_speed * delta
	position += translation_vector
	
	pass
