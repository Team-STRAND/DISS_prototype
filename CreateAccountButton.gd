extends TextureButton


func _ready():
	pass # Replace with function body.

func _on_CreateAccountButton_pressed():
	get_parent().show_create_account_scroll()
