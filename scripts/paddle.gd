extends Area2D

var speed = 400


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var viewport: Rect2 = get_viewport().get_visible_rect()
	var movement = Vector2.ZERO
	
	# Set movement direction based on input
	if (Input.is_action_pressed("ui_down")):
		movement.y = 1
	if (Input.is_action_pressed('ui_up')):
		movement.y = -1
		
	position += movement * speed * delta
	position.y = clamp(position.y, 0, viewport.size.y)
