extends Node2D

var currentitem:Area2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_player_item_pickup(item) -> void:
	print("alright how will i get rid of this item and move it to the player")
	currentitem = item
	


func _on_ball_area_entered(area: Area2D) -> void:
	print(currentitem)
	
