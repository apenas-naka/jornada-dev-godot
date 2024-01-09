extends Node;

#const myCollectable = preload("res://scenes/collectable.tscn");
##	VARIAVEIS DO PLAYER
#@onready var playerHungry : int = 10;
#@onready var playerStamina : int = 50;
#@onready var playerPoints : int = 0;
#@onready var bonus_multiplier : int = 1;
##	REFERENCIA DE VARIAVEIS (RESTART GAME)
#@onready var hungryRef = playerHungry;
#@onready var staRef = playerStamina;
#
#func _on_spawn_collectables_timeout():	# QUANDO O TIMER 'spawnCollectables' ZERAR
	#var rng = RandomNumberGenerator.new();	#Gerar novo numero aleatorio;
	#var pos_x = rng.randf_range(-3000, 3000);	# Limite X & Y das coords
	#var pos_y = rng.randf_range(-2500, 2500);
#
	#var spawned_Obj = myCollectable.instantiate();
	#spawned_Obj.global_position.x = pos_x;	# Seta localização do 'Spawn' aleatória.
	#spawned_Obj.global_position.y = pos_y;
	##print("POS: " + str(spawned_Obj.position));
	#spawned_Obj.add_to_group("collectables");	#Adiciona ao grupo 'coletavel'
	#add_child(spawned_Obj);	# Cria o objeto
