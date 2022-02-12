extends Node2D

var slowmo_active: bool = false

export(float) var normal_time_scale: float = 1.0
export(float) var slowmo_time_scale: float = 0.5

func start_slowmo():
	Engine.time_scale = slowmo_time_scale
	
func end_slowmo():
	Engine.time_scale = normal_time_scale


func reequest_slowmo_change():
	if slowmo_active:
		start_slowmo()
	else:
		end_slowmo()
