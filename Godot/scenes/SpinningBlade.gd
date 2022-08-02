extends Node2D
export (int) var follow_speed = 50
func _ready():
	$AnimationPlayer.play("Spin")
	
func _process(delta):
	$path2D/PathFollow2D.offset += 50 * delta
