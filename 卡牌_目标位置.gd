extends TextureRect

#层
@export var layer:int

#这里判断是否能拖动
func _can_drop_data(_position, _data):
	return _data.get("layer")==layer
	

#这里执行拖动后的修改
func _drop_data(_at_position: Vector2, _data: Variant) -> void:
	_data.get("card").position=position
