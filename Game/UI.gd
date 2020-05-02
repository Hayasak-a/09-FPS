extends Control


onready var healthBar : TextureProgress = get_node("HealthBar")
onready var ammoText : Label = get_node("Label")
onready var scoreText : Label = get_node("Label2")

func update_health_bar(curHp, maxHp):
	healthBar = get_node("HealthBar")
	healthBar.max_value = maxHp
	healthBar.value = curHp
	
	
func update_ammo_text(ammo):
	ammoText = get_node("Label")
	ammoText.text = "Ammo: " + str(ammo)
	
func update_score_text(score):
	scoreText = get_node("Label2")
	scoreText.text = "Score: " + str(score)
