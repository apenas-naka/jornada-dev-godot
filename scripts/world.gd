extends Node2D

const myCollectable = preload("res://scenes/burguer.tscn");

func _on_spawn_collectables_timeout():	# QUANDO O TIMER 'spawnCollectables' ZERAR
	var rng = RandomNumberGenerator.new();

	var pos_x = rng.randf_range(-500, 500);
	var pos_y = rng.randf_range(-800, 800);

	var spawned_Obj = myCollectable.instantiate();
	spawned_Obj.global_position.x = pos_x;
	spawned_Obj.global_position.y = pos_y;
	#print("POS: " + str(spawned_Obj.position));
	spawned_Obj.add_to_group("collectables");
	add_child(spawned_Obj);
