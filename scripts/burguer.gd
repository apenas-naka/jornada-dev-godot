extends Area2D

func _ready():
	hide();
	print("Criado - Invisivel");

func _on_body_entered(body):	#COLISÃO COM O ITEM
	if body.is_in_group("walls"):	#	SE ESTIVER NO GRUPO 'PAREDE'
		print("SPAWNOU NA PAREDE");
		queue_free();
		print("REMOVIDO");
	elif body.is_in_group("player"):
		print("Coletado pelo jogador!");
		queue_free();
	elif body.is_in_group("collectables"):
		print("Dupla colisão");
		queue_free();
