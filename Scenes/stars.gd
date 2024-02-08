extends TextureRect

var oscillation_speed : float = 3.0
var min_opacity : float = 0.2
var max_opacity : float = 0.8

func _process(delta):
	var oscillation_factor = sin(Time.get_ticks_msec() / 1000.0 * oscillation_speed) 
	var current_opacity = lerp(min_opacity, max_opacity, (oscillation_factor + 1.0) / 2.0)
	modulate.a = current_opacity
