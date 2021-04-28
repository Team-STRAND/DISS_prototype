extends Sprite

onready var parent = get_parent()
var start=false

func _ready():
	pass # Replace with function body.

func start():
	start=true

func _process(delta):
	if(start):
		parent.set_offset(parent.get_offset() + 30 * delta)
		
		if(parent.unit_offset==1):
			get_tree().change_scene("res://ShapesScene.tscn")
