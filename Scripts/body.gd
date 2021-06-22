extends KinematicBody2D


var speed = 2

onready var container = get_parent()
onready var original = get_node("../Original")
onready var orbitBlueprint = preload("res://Scenes/Orbit.tscn")
var helper = GlobalHelper.new()
var isPlanet = true

var orbit
var path :Line2D
var parent
var isOrbiting = false
var distance_to_parent = 0

var move_counter = 0
var clock = true


func _ready():
	set_physics_process(false)
	
	if (self.name == "OriginalSatelite"):
		parent = original
		
	_draw_orbit()
		
func _physics_process(delta):
	_move_along_orbit()
	pass
	
	
func _move_along_orbit():
	if !self.path:
		return
	
	self.position = parent.position + path.points[int(move_counter)]
	
#	clock = !clock
#	if clock:
	move_counter += speed
		
	if move_counter >= 720:
		move_counter = 0
		
		
func _draw_orbit():
	if (parent) and (parent.isPlanet):
		isOrbiting = true
		
		if (!parent.orbit) and (!self.path):
			var instance = orbitBlueprint.instance()
			
			parent.add_child(instance)
			helper.draw_circle(
				parent.global_position,
				(parent.global_position - self.global_position).length(),
				instance
			)
			parent.orbit = instance
			self.path = instance
			set_physics_process(true)
		
		
