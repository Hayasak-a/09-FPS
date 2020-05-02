extends Area


var speed : float = 30.0
var damage : int = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	translation+=global_transform.basis.z*speed*delta
	


func _on_Bullet_body_entered(body):
	if(body.has_method("take_damage")):
		body.take_damage(damage)
		destroy()

func destroy():
	queue_free()


func _on_Timer_timeout():
	destroy()
