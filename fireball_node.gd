extends RigidBody3D
var speed = 7.0

func _ready():
	linear_velocity = transform.basis * Vector3(-speed, -speed, 0)

func _physics_process(delta):
	if get_contact_count() == 3:
		self.queue_free()
