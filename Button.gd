extends TextureButton

onready var parent = get_parent()
var move=false;

func _ready():
	pass # Replace with function body.

func _process(delta):
	if(move):
		parent.set_offset(parent.get_offset() + 300 * delta)

func _on_Button_pressed():
	move=true
	owner.add_point()
	disabled=true
	get_parent().get_parent().get_parent().get_parent().get_parent().get_node("DingSound").play()
	Score.boat_score+=10
	
	get_parent().get_parent().get_parent().get_parent().get_parent().get_node("Voices/Simon/SimonVoice3").play()
	#get_parent().get_parent().get_parent().get_parent().get_parent().get_node("Voices/Simon/SimonVoice3").stop()
