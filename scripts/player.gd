extends CharacterBody2D;

@export var playerSpeed : int = 400;
@export var playerHungry : int = 3;

func get_input():
	var input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down");
	velocity = input_direction * playerSpeed;
#	PROCESSAMENTO DE FISICA (CADA FPS)
func _physics_process(delta):
	get_input();
	var collided = move_and_collide(velocity * delta) # Verifica se esta colidindo.
	if collided:	# Se estiver vai normalizar a posição (pra não atravessar).
		velocity = velocity.bounce(collided.get_normal());
