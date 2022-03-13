extends VehicleBody
	
var horse_power = 2000
var accel_speed = 20

var steer_angle = deg2rad(30)
var steer_speed = 3

var brake_power = 30
var brake_speed = 0

func _physics_process(delta):
	var throt_input = Input.get_action_strength("W")-Input.get_action_strength("S")
	engine_force = throt_input*horse_power

	var steer_input = -Input.get_action_strength("D")+Input.get_action_strength("A")	
	steering = lerp_angle(steering,steer_input*steer_angle,steer_speed*delta)
	
	var brake_input = Input.get_action_strength("SPACE")
	brake = brake_power*brake_input
	print(brake)
	
func _ready():
	pass
