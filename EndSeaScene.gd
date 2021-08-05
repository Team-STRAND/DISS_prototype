extends Node2D



func _ready():
	get_node("AnimationPlayer").play("ShipSailing")
	get_node("WaveSound").play()
	get_node("Voices").play()
	get_node("Diploma/TextEdit").text=Score.child_name
	get_node("Voices/Luigi/LuigiVoice10").connect("finished",self,"display_diploma")
	Score.write_to_file()

func display_diploma():
	get_node("Diploma/AnimationPlayer").play("DiplomaAppear")

func next_scene():
	get_tree().change_scene("res://sea.tscn")

func save_diploma():
	#var img=get_node("Diploma").get_texture().get_data()
	var img = get_node("Diploma").get_viewport().get_texture().get_data()
	img.flip_y()
	var path=Score.child_name+".png"
	img.save_png(path)

func _on_AnimationPlayer_animation_finished(anim_name):
	save_diploma();
	get_tree().change_scene("res://sea.tscn")

