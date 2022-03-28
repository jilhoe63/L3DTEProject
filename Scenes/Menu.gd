extends Control


func _ready():
	pass


func _on_Start_Button_pressed():
	get_tree().change_scene("res://Scenes/Scene_Selection.tscn")
	pass


func _on_Options_Button_pressed():
	print("feature not yet implemented")
	pass


func _on_Quit_Button_pressed():
	get_tree().quit()
	pass
