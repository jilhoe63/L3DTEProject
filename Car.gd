extends VehicleBody

var max_rpm = 11000
var max_torque = 200
var brake_power = 10

func _physics_process(delta):
	steering = lerp(steering, Input.get_axis("D","A") * 0.4, 5 * delta)
	var acceleration = Input.get_axis("S","W")
	var rpm = $Rear_Left.get_rpm()
	$Rear_Left.engine_force = acceleration * max_torque * ( 1 - rpm / max_rpm + 50)
	rpm = $Rear_Right.get_rpm()
	$Rear_Right.engine_force = acceleration * max_torque * ( 1 - rpm / max_rpm + 50)

	var brake_input = Input.get_action_strength("SPACE")
	brake = brake_power*brake_input
		
func _ready():
	pass 
