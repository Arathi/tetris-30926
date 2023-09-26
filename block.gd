class_name Block
extends Node2D


const block_type_i = 1 # 2
const block_type_j = 2 # 4
const block_type_l = 3 # 4
const block_type_o = 4 # 1
const block_type_s = 5 # 2
const block_type_t = 6 # 4
const block_type_z = 7 # 2


enum {
	BLOCK_TYPE_I = 1,
	BLOCK_TYPE_J = 2,
	BLOCK_TYPE_L = 3,
	BLOCK_TYPE_O = 4,
	BLOCK_TYPE_S = 5,
	BLOCK_TYPE_T = 6,
	BLOCK_TYPE_Z = 7,
}


const direction_0 = 0
const direction_90 = 1
const direction_180 = 2
const direction_270 = 3


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var type = get_meta("type")
	var direction = get_meta("direction")
	if type == BLOCK_TYPE_I: # I
		direction = direction % 2
		if direction == direction_0:
			move_block(0, 1, 0, false, false, false, true)
			move_block(1, 1, 1, false, true,  false, true)
			move_block(2, 1, 2, false, true,  false, true)
			move_block(3, 1, 3, false, true,  false, false)
		else:
			move_block(0, 0, 1, true,  false, false, false)
			move_block(1, 1, 1, true,  false, true,  false)
			move_block(2, 2, 1, true,  false, true,  false)
			move_block(3, 3, 1, false, false, true,  false)

	if type == BLOCK_TYPE_J: # J
		direction = direction % 4
		if direction == direction_0:
			move_block(0, 1, 0, false, false, false, true)
			move_block(1, 1, 1, false, true, false, true)
			move_block(2, 1, 2, false, true, true, false)
			move_block(3, 0, 2, true,  false, false, false)
		if direction == direction_90:
			move_block(0, 0, 0, true,  false, false, false)
			move_block(1, 1, 0, true,  false, true,  false)
			move_block(2, 2, 0, false, false, true,  true)
			move_block(3, 2, 1, false, true, false, false)
		if direction == direction_180:
			move_block(0, 1, 0, false, false, true, false)
			move_block(1, 0, 0, true, false, false, true)
			move_block(2, 0, 1, false, true, false, true)
			move_block(3, 0, 2, false, true, false, false)
		if direction == direction_270:
			move_block(0, 0, 0, false, false, false, true)
			move_block(1, 0, 1, true, true, false, false)
			move_block(2, 1, 1, true, false, true, false)
			move_block(3, 2, 1, false, false, true, false)
	
	if type == BLOCK_TYPE_L: # L
		direction = direction % 4
		if direction == direction_0:
			pass
		if direction == direction_90:
			pass
		if direction == direction_180:
			pass
		if direction == direction_270:
			pass
	
	if type == BLOCK_TYPE_O: # O
		move_block(0, 0, 0, true, false, false, true)
		move_block(1, 1, 0, false, false, true, true)
		move_block(2, 1, 1, false, true, true, false)
		move_block(3, 0, 1, true, true, false, false)
	
	# move_block(0, 0, 0, false, false, false, false)
	if type == BLOCK_TYPE_S: # S
		direction = direction % 4
		if direction == direction_0:
			move_block(0, 2, 0, false, false, true, false)
			move_block(1, 1, 0, true, false, false, true)
			move_block(2, 1, 1, false, true, true, false)
			move_block(3, 0, 1, true, false, false, false)
			pass
		if direction == direction_90:
			pass
		if direction == direction_180:
			pass
		if direction == direction_270:
			pass
	
	if type == block_type_t: # T
		direction = direction % 4
		if direction == direction_0:
			pass
		if direction == direction_90:
			pass
		if direction == direction_180:
			pass
		if direction == direction_270:
			pass
	
	if type == block_type_z: # Z
		direction = direction % 4
		if direction == direction_0:
			pass
		if direction == direction_90:
			pass
		if direction == direction_180:
			pass
		if direction == direction_270:
			pass


func move_block(block_index, x: int, y: int, right: bool, top: bool, left: bool, bottom: bool):
	var block: Node2D = get_child(block_index)
	block.set_meta("right", right)
	block.set_meta("top", top)
	block.set_meta("left", left)
	block.set_meta("bottom", bottom)
	block.position = Vector2(x*8, y*8)
