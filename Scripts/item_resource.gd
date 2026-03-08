# res://items/ItemResource.gd
class_name ItemResource
extends Resource

# Enum defining item types
enum ItemType {REAL, FAKEOUT }

@export_group("Basic Info")
@export var item_name: String = "New Item"
@export_multiline var description: String = ""
@export var texture: Texture2D # Icon as direct Texture2D reference

@export_group("Inventory Settings")
@export var type: ItemType = ItemType.REAL

# Having a unique ID is recommended for comparison
# resource_path is empty if not saved as file, so provide fallback
func get_id() -> String:
	return resource_path if not resource_path.is_empty() else str(get_instance_id())
