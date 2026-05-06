extends CharacterBody2D


const _velocidad = 500.0
const _velocidad_salto = -600.0


func _physics_process(delta: float) -> void:
	#gravedad 
	velocity += get_gravity() *delta #get_gravity nos devuelve un vector2(x,y). getgravity le suma la gravedad en y a velocity 


	# Handle jump.
	if Input.is_action_just_pressed("saltar") and is_on_floor():
		velocity.y = _velocidad_salto


	if Input.is_action_pressed("derecha"):
		velocity.x = _velocidad
	elif Input.is_action_pressed("izquierda"):
		velocity.x = -_velocidad
	else:
		velocity.x = 0
	move_and_slide()
