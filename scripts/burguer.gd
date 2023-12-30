extends Area2D

func _ready():
	var vtimer = $visibilityTimer;
	vtimer.start(1.5);
	hide();
	#print("hide()");

func _on_body_entered(body):	#COLISÃO COM O ITEM
	if body.is_in_group("walls"):	#	SE ESTIVER NO GRUPO 'PAREDE'
		print("SPAWNOU NA PAREDE");
		queue_free();
		print("REMOVIDO");
	if body.is_in_group("player"):
		print("Coletado pelo jogador!");
		queue_free();
	if body.is_in_group("collectables"):
		print("Dupla colisão");
		queue_free();


func _on_visibility_timer_timeout():
	show();
	#print("VisibilityTimer: ON")
