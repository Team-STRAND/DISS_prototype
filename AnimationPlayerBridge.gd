extends AnimationPlayer


func _ready():
	get_parent().get_parent().get_node("Voices/Fish/FishVoice5").connect("finished",self,"move_pirates")

func move_pirates():
	get_parent().get_parent().get_node("PirateBlue/AnimationPlayerPirateBlue").play("Move")
	get_parent().get_parent().get_node("PirateRed/AnimationPlayerPirateRed").play("Move")
	get_parent().get_parent().get_node("PirateGirl/AnimationPlayerPirateGirl").play("Move")


func _on_AnimationPlayerBridge_animation_finished(anim_name):
	get_parent().get_parent().get_node("Voices/Fish/FishVoice5").play()
