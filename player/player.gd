extends CharacterBody2D

const SPEED: int = 750

func _physics_process(delta):
#	velocity.x = Input.get_axis("ui_left", "ui_right")
#	velocity.y = Input.get_axis("ui_up", "ui_down")
#	velocity = velocity.normalized() * SPEED
#	move_and_slide()

	var direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	if direction:
		velocity = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0,SPEED)
		velocity.y = move_toward(velocity.y, 0,SPEED)
	
	move_and_slide()
