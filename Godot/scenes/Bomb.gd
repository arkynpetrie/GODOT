extends RigidBody2D








func _ready():
	apply_central_impulse(Vector2(1,-1)* 40) 


func warning():
	$AnimationPlayer.play("OnGround")
	yield($AnimationPlayer,"animation_finished")
	explode()
	
func explode():
	rotation_degrees=0
	$AnimationPlayer.play("Explode")
	yield($AnimationPlayer,"animation_finished")
	queue_free()
	
	
func _on_Timer_timeout():
	warning()
