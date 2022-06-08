extends VehicleBody
	
var horse_power = 432
var accel_speed = 200

var steer_angle = deg2rad(30)
var steer_speed = 2

var brake_power = 40
var brake_speed = 0

func _physics_process(delta):
	var throt_input = Input.get_action_strength("W")-Input.get_action_strength("S")
	engine_force = lerp(engine_force,throt_input*horse_power,accel_speed*delta)

	var steer_input = -Input.get_action_strength("D")+Input.get_action_strength("A")	
	steering = lerp_angle(steering,steer_input*steer_angle,steer_speed*delta)
	
	var brake_input = Input.get_action_strength("SPACE")
	brake = brake_power*brake_input
	
func _ready():
	pass
