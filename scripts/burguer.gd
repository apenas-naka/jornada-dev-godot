extends Area2D

func _ready():
	var vtimer = $visibilityTimer;	# REFERENCIA O TIMER 'visibleCollectables'
	vtimer.start(1.5);	# INICIA A CONTAGEM PARA MOSTRAR OS ITENS
	hide();	#	ESCONDE

func _on_body_entered(body):	#COLISÃO COM O ITEM
	if body.is_in_group("walls"):	#	SE ESTIVER NO GRUPO 'parede'
		#print("SPAWNOU NA PAREDE");
		queue_free();
		#print("REMOVIDO");
	if body.is_in_group("player"):	# SE ESTIVER NO GRUPO 'player'
		#print("Coletado pelo jogador!");
		queue_free();
		
func _on_visibility_timer_timeout():	# QUANDO O TEMPO ACABAR
	show();	# MOSTRAR OS ITENS
	#print("VisibilityTimer: ON")
func _on_check_coll_area_entered(_area):	# SE ESTIVER SOBREPOSTO
	if !has_overlapping_areas():
		queue_free();	# LIMPA
