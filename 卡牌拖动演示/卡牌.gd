extends TextureRect

#目标层
@export var layer:int


func _get_drag_data(_position):
	var mydata = card_data.new(layer,self)
	var card=TextureRect.new()
	card.texture=texture
	card.global_position=global_position
	set_drag_preview(card)
	return mydata
	

#要发送的数据
class card_data:
	var layer:int
	var card:TextureRect
	func _init(_layer:int,_card:TextureRect) -> void:
		layer=_layer
		card=_card
