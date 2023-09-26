class_name BlockTile
extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.set_colors()
	self.show_or_hide()


func set_colors():
	var color = get_meta("color")
	var shadowColor = get_meta("shadowColor")
	var lightColor = get_meta("lightColor")
	
	get_node("core/block").color = color
	get_node("right/block").color = color
	get_node("top/block").color = color
	get_node("left/block").color = color
	get_node("bottom/block").color = color
	
	get_node("core/shadow").color = shadowColor
	get_node("right/shadow").color = shadowColor
	get_node("bottom/shadow").color = shadowColor
	
	get_node("right/light").color = lightColor
	get_node("top/light").color = lightColor
	get_node("left/light").color = lightColor
	get_node("bottom/light").color = lightColor
	get_node("not_right/light").color = lightColor
	get_node("not_top/light").color = lightColor


func show_or_hide():
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
