extends Node2D

var points=0

func _ready():
	get_node("UpButton").visible=false
	get_node("DownButton").visible=false

func _process(delta):
	if(points>=4):
		get_node("UpButton").visible=true
		get_node("DownButton").visible=true

func add_point():
	points=points+1
