extends Sprite

onready var parent = get_parent()
var start=false

func _ready():
	pass # Replace with function body.

func start():
	start=true

func _process(delta):
	if(start):
		parent.set_offset(parent.get_offset() + 100 * delta)
