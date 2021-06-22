extends Node
class_name GlobalHelper


#func map_bodies(bodyList):
#	var result = []
#
#	for b in bodyList:
#		result.append(b.global_position)
		

func draw_circle(center, radius, line: Line2D):
	var result
	var point = Vector2()
	
	for i in range(721):
		point = Vector2(radius, 0).rotated(deg2rad(i/2))
		line.add_point(point)
		
		
#func recursive_body_count(bodies :Array, result):
#	for i in bodies:
#		if (i.get_child_count() > 1):
#			recursive_body_count([i], result)
#
#		else:
#			result += i
	
#	return result

func _test():
	print ("testestes")
