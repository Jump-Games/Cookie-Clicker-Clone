extends Label


func _ready():
	self.position.y = 40

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	self.position.x = %Cookie.position.x - (self.size.x / 2)
	self.text = str(floor(%Cookie.cookies)) + " Cookies\n" + str(%Cookie.cps) + " CPS"
