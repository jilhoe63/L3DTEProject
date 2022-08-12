extends Control

func _ready():
	pass # Replace with function body.


func _on_Button_1_pressed():
	get_tree().change_scene("res://Scenes/Test_scene.tscn")
	pass # Replace with function body.


func _on_Button_2_pressed():
	get_tree().change_scene("res://Scenes/Test_Scene_Two.tscn")
	pass # Replace with function body.


func _on_Button_3_pressed():
	print("feature not yet implemented")
	pass # Replace with function body.


func _on_Button_4_pressed():
	get_tree().change_scene("res://Scenes/Menu.tscn")
	pass # Replace with function body.
