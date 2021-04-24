extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_PlayButton_pressed():
	get_node("TextureRect/AnimationPlayer").play("FadeButton");
	get_parent().get_node("Title/AnimationPlayer").play("TitleFade")
	


func _on_AnimationPlayer_animation_finished(anim_name):
	get_parent().get_node("TitleMusic").stop()
	get_parent().get_node("WaveSound").play()
	get_parent().get_node("Path2D/PathFollow2D/Ship").start()

	get_parent().remove_child(self)
