extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#This is an item scene that I want to be able to instance with a different resourses
	#that way I dont need to make 100 nodes for all the items I want 
	var Item_Data = load("res://Resourses/ball.tres") as ItemResource
	print(Item_Data.type)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
