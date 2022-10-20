extends Area2D


func _ready():
	$Flag/AnimationPlayer.play("Wave")



func _on_Area2D_area_entered(area):
	$Flag/AnimationPlayer.play("Ending")
