extends CharacterBody2D;

@export var playerSpeed : int = 80;

func get_input():
	var input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down");
	velocity = input_direction * playerSpeed;
	if input_direction != Vector2(0, 0) and $FootstepSFX.playing == false:
		$FootstepSFX.play();

func _physics_process(delta):
	get_input();
	var collided = move_and_collide(velocity * delta) # Verifica se esta colidindo.
	if collided:	# Se estiver vai normalizar a posição (pra não atravessar).
		velocity = velocity.bounce(collided.get_normal());
		$FootstepSFX.stop();

func _input(event):
	if event.is_action_released("exit_key"):
		get_tree().quit();
