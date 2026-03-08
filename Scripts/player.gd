extends CharacterBody2D

var speed = 400  # move speed in pixels/sec
signal item_pickup(item)


func _physics_process(delta):
	var direction = Input.get_vector("left", "right", "forward", "back")
	velocity = direction * speed

	move_and_slide()
	
func _on_item_detector_area_entered(area: Area2D) -> void:
	print("im touching right now")
	# because it only detects it once it only allows me to pickup the frame its being detected
	# this means that I need to set up a timer or make sure it checks each frame that I am in
	var item = area.get_node(get_path_to(area))
	#if Input.is_action_just_pressed("pickup"):
	emit_signal("item_pickup",item)
	
		
		
		
