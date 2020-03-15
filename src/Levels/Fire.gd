extends Area2D

export var score: = 0

func _on_Fire_body_entered(area: Area2D) -> void:
	if area.global_position.y > stomp_area.global_position.y:
		return
	die()

onready var stomp_area: Area2D = $StompArea2D


func die() -> void:
	PlayerData.score += score
	queue_free()
