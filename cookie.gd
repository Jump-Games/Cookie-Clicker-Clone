extends Area2D

var cookieEntered: bool = false
var cookies: int = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if (cookieEntered and Input.is_action_just_pressed("lmb")):
		cookies += 1
		print("Cookies count is: " + str(cookies))

func _mouse_enter():
	cookieEntered = true
	print("Cookie is Entered\n")

func _mouse_exit():
	cookieEntered = false
	print("\nCookie is Exited")
