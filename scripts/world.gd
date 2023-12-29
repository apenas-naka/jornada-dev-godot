extends Node2D

const myCollectable = preload("res://scenes/burguer.tscn");

func _on_spawn_collectables_timeout():	# QUANDO O TIMER spawnCol. acabar:
	var newObject = myCollectable.instantiate();
	newObject.position = Vector2(randf_range(0, 2000), randf_range(0, 2000));
	print(newObject.position);
	newObject.add_to_group("collectables");
	add_child(newObject);
	#newObject.hide();
	#$visibleCollectables.start();
	#print("TIMER VISIBLE INIT");
	#var teste := $visibleCollectables;
	#teste.wait_time = 1;
	#teste.start()
	#teste.timeout.connect()
	#var teste = $burguer/checkColl;
	#print(teste);
	#


func _on_visible_collectables_timeout():
	var collect = $burguer;
	collect.show();
	print("timer show()")
