extends CharacterBody2D;

@export var playerSpeed : int = 400;
@export var playerHungry : int = 5;
@onready var playerCollectable := $"../burguer";


func get_input():
	var input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down");
	velocity = input_direction * playerSpeed;
#	PROCESSAMENTO DE FISICA (CADA FPS)
func _physics_process(delta):
	get_input();
	
	var collided = move_and_collide(velocity * delta) # Verifica se esta colidindo.
	if collided:	# Se estiver vai normalizar a posição (pra não atravessar).
		velocity = velocity.bounce(collided.get_normal());


func _on_hungry_timer_timeout():
	playerHungry -= 1;
	print("Barra de fome: " + str(playerHungry));
	if playerHungry < 1:
		print("Você morreu de fome!");


#func _on_burguer_body_entered(body):
	#if body.name == "player":
		#print("Player comeu");
		#playerCollectable.queue_free();


#func _on_spawn_collectables_timeout():
	#const myCollectable = preload("res://scenes/burguer.tscn");
	#
	#var obj = myCollectable.instantiate();
	#obj.position.x = randi_range(210, 500);
	#obj.position.y = randi_range(9, 550);
	#add_sibling(obj);
	#print("Item criado");
