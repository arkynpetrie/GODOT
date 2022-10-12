extends Area2D

onready var bomb = preload("res://scenes/Bomb.tscn")





func create_new_bomb():
	var new_bomb = bomb.instance()
	new_bomb.global_position = $Position2D.global_position
	get_parent().add_child(new_bomb)

func throw_bomb():
	$AnimationPlayer.play("ThrowBomb")
	yield($AnimationPlayer,"animation_finished")
	$AnimationPlayer.play("Idle")

func _on_Timer_timeout():
	throw_bomb()
