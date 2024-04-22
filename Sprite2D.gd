extends Sprite2D

var speed = 400
var angular_speed = PI

	
func _process(delta):
	rotation += angular_speed * delta
	var direction = Vector2.ZERO
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		direction.y = -1
	if Input.is_action_pressed("ui_down"):
		direction.y = 1
	if Input.is_action_pressed("ui_left"):
		direction.x = -1
	if Input.is_action_pressed("ui_right"):
		direction.x = 1
	position += direction * delta * speed


func _on_button_pressed():
	set_process(not is_processing())

