extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_UpButton_pressed():
	get_parent().get_node("Parrot/AnimationPlayerParrotShip").play("ParrotUp")
	get_parent().get_node("DingSound").play()
	Score.boat_score+=10
