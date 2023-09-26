extends Node2D

func _input(event):
	# if event.is_action_pressed("rotate"):
	#	self.rotate_active_block()
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_W:
			print("rotate")
			self.rotate_active_block()
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func rotate_active_block():
	var block = get_child(0).get_child(0)
	var direction = block.get_meta("direction")
	block.set_meta("direction", direction+1)
