extends VehicleBody

func _physics_process(delta):
	steering = Input.get_axis("a","d") * 100
	engine_force = Input.get_axis('w',"s") * 100
