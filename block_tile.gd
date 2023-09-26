class_name BlockTile
extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var rightNode = self.get_child(1)
	var notRightNode = self.get_child(5)
	if get_meta("right"):
		if (rightNode.has_method("show")):
			rightNode.show()
		if (notRightNode.has_method("hide")):
			notRightNode.hide()
	else:
		if (rightNode.has_method("hide")):
			rightNode.hide()
		if (notRightNode.has_method("show")):
			notRightNode.show()
	
	var topNode = self.get_child(2)
	var notTopNode = self.get_child(6)
	if get_meta("top"):
		if (topNode.has_method("show")):
			topNode.show()
		if (notTopNode.has_method("hide")):
			notTopNode.hide()
	else:
		if (topNode.has_method("hide")):
			topNode.hide()
		if (notTopNode.has_method("show")):
			notTopNode.show()
	
	var leftNode = self.get_child(3)
	if get_meta("left"):
		if (leftNode.has_method("show")):
			leftNode.show()
	else:
		if (leftNode.has_method("hide")):
			leftNode.hide()
	
	var bottomNode = self.get_child(4)
	if get_meta("bottom"):
		if (bottomNode.has_method("show")):
			bottomNode.show()
	else:
		if (bottomNode.has_method("hide")):
			bottomNode.hide()
