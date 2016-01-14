########################################################################
#
# LCD1.py: Learning how to read GPIO inputs
#
#
#
#
#
########################################################################
import time
import RPi.GPIO as GPIO
#INPUTS: map GPIO to Switches
SW1 = 4 #GPIO4 = Pi pin 7
SW2 = 23 #GPIO16 = Pi pin 16
SW3 = 10 #GPIO10 = Pi pin 19
SW4 = 9 #GPIO9 = Pi pin 21
INPUTS = [SW1,SW2,SW3,SW4]

def InitIO():
	GPIO.setmode(GPIO.BCM)
	GPIO.setwarnings(False)
	for switch in INPUTS:
		GPIO.setup(switch, GPIO.IN, pull_up_down=GPIO.PUD_UP)
def CheckSwitches():
	val1 = not GPIO.input(SW1)
	val2 = not GPIO.input(SW2)
	val3 = not GPIO.input(SW3)
	val4 = not GPIO.input(SW4)
	print val4,val1,val2,val3
#
#
# Main Program here.
print "Pi LCD1 test program starting"
InitIO()
while (True):
	CheckSwitches()
	time.sleep(1)
