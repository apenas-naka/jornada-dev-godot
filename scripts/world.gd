extends Node2D

const myCollectable = preload("res://scenes/burguer.tscn");

func _on_spawn_collectables_timeout():
	var newObject = myCollectable.instantiate();
	newObject.position = Vector2(randi_range(720, 620), randi_range(520, 1080));
	add_child(newObject);
	print("ITEM CRIADO");
