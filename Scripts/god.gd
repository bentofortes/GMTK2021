extends Node


var helper = GlobalHelper.new()
onready var bodyContainer :Node = $BodyContainer


func _ready():
	var bodies = bodyContainer.bodies
	
#	helper._test()
#	print(bodies)
#	helper.draw_circle(bodies[1].global_position, 200, bodies[1].orbit)
	
