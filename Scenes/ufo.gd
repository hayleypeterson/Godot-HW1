extends Node2D
@export var rotation_speed : float
@export var translation_speed : float = 50.0 

func _ready():
	pass


func _process(delta):
	rotate(rotation_speed * delta)

	var direction_to_origin = Vector2(0, 0) - position
	var distance_to_origin = direction_to_origin.length()
	if distance_to_origin > 0.1:
		direction_to_origin = direction_to_origin.normalized()

		var sinusoidal_factor = sin(Time.get_ticks_msec() / 1000.0) * 2.0
		var modified_speed = translation_speed + sinusoidal_factor * 300.0

		var translation_vector = direction_to_origin * modified_speed * delta
		position += translation_vector
	else:
		position = Vector2(0, 0) 


	pass
