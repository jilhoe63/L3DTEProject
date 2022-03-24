extends Control


func _ready():
	pass


func _on_Start_Button_pressed():
	get_tree().change_scene("res://Scenes/Test_scene.tscn")
	pass


func _on_Options_Button_pressed():
	print("feature not yet implemented ... but you know that jilles. Jilles, I know what you think, how you think and your deepest fears. I can destroy you.")
	pass


func _on_Quit_Button_pressed():
	get_tree().quit()
	pass
