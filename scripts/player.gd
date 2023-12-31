class_name PlayerInfo;
extends CharacterBody2D;

@export var playerSpeed : int = 400;
@export var playerHungry : int = 5;

func get_input():
	var input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down");
	velocity = input_direction * playerSpeed;
#	PROCESSAMENTO DE FISICA (CADA FPS)
func _physics_process(delta):
	get_input();
	var collided = move_and_collide(velocity * delta) # Verifica se esta colidindo.
	
	if collided:	# Se estiver vai normalizar a posição (pra não atravessar).
		velocity = velocity.bounce(collided.get_normal());

func _on_hungry_timer_timeout():	# QUANDO CONTADOR DE FOME ZERAR
	playerHungry -= 1;
	print("Barra de fome: " + str(playerHungry));
	if playerHungry < 1:
		print("Você morreu de fome!");

func _input(event):
	if event.is_action_released("test_key_J"):
		print("Você apertou J");
