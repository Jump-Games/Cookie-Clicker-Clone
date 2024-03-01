extends Area2D

var cookieEntered: bool = false
var cookies: float = 0
## This will (probably) change with upgrades, for example:
#     'Multiply Amount gained when clicked by 2'
var cookieAddAmnt = 1

var cps: float = 0

# signal increase_cps(amount: int)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if (cookieEntered and Input.is_action_just_pressed("lmb")):
		cookies += cookieAddAmnt
		## Not really needed anymore
		# print("Cookies count is: " + str(cookies))

func _mouse_enter():
	cookieEntered = true
	print("Cookie is Entered\n")

func _mouse_exit():
	cookieEntered = false
	print("Cookie is Exited\n")


func _on_cps_timer_timeout():
	%CPSTimer.set_wait_time(1.0)
	cookies += cps
