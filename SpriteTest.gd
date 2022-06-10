extends Sprite

var syntheticTimer: int = 0
var timerLimit : int = 20

func _process(delta):
	randomize()
	position.x += rand_range(-10, 10) * delta
	position.y += rand_range(-10, 10) * delta
	syntheticTimer += 1
	if syntheticTimer > timerLimit:
		modulate = Color(randf(), randf(), randf())
		syntheticTimer = 0
		randomize()
		timerLimit = randi() % 50 + 15
