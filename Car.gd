extends VehicleBody

var max_rpm = 11000
var max_torque = 400

func _physics_process(delta):
	steering = lerp(steering, Input.get_axis("D","A") * 0.4, 5 * delta)
	var acceleration = Input.get_axis("S","W")
	var rpm = $Rear_Left.get_rpm()
	$Rear_Left.engine_force = acceleration * max_torque * ( 1 - rpm / max_rpm)
	rpm = $Rear_Right.get_rpm()
	$Rear_Right.engine_force = acceleration * max_torque * ( 1 - rpm / max_rpm)

func _ready():
	pass 
