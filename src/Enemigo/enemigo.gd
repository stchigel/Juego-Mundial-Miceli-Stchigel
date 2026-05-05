extends CharacterBody2D


const SPEED = 200.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	velocity.x = SPEED
	move_and_slide()
	
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		if collision.get_collider().is_in_group("player"):
			get_parent().perder()
		else: if collision.get_collider().is_in_group("obstaculo") and collision.get_collider().has_method("destruir"): 
			collision.get_collider().destruir()
