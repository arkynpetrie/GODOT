extends Control


func _ready():
	$VBoxContainer/StartButton.grab_focus()


func _on_StartButton_pressed():
	get_tree().change_scene("res://World.tscn")


func _on_OptionsButton_pressed():
	get_tree().change_scene("res://Options.tscn")



func _on_QuitButton_pressed():
	get_tree().quit()
