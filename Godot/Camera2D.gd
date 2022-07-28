extends Camera2D

var target = null
var zoomed = false 
var center = vector2.ZERO 


func _ready():
	center = get_viewport_rect().size/2

func _process(delt)
