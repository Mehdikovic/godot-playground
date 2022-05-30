extends KinematicBody2D
export var speed := 500.0

func _physics_process(delta:float) -> void:
	var input_vector := Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left") ,
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	)
	var move_direction := input_vector.normalized()
	move_and_slide(speed * move_direction)
	if	input_vector.length_squared() != 0:
		$SpritesComposition/MainBody.play("Run")
	else:
		$SpritesComposition/MainBody.play("Idle")

	if(self.position.x - get_global_mouse_position().x < 0) :
		$SpritesComposition/MainBody.flip_h = false
	else:
		$SpritesComposition/MainBody.flip_h = true
