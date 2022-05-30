extends Node2D

func _process(_delta: float) -> void:
	_set_z_index()
	look_at(get_global_mouse_position())


func _set_z_index():
	var deg = rad2deg(global_position.angle_to_point(get_global_mouse_position()))
	if deg < 140 and deg > 40:
		z_index = -1
	else:
		z_index = 0
