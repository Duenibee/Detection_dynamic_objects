from pynput import keyboard
import rospy
from geometry_msgs.msg import Twist
from math import pi

max_lin_vel = 0.5
max_ang_vel = pi/2

current_pressed = set()
def on_press(key):
    current_pressed.add(key)
    print('Key %s pressed' % current_pressed)

def on_release(key):
    print('Key %s released' % key)
    if key in current_pressed:
        current_pressed.remove(key)

with keyboard.Listener(
    on_press=on_press,
    on_release=on_release) as listener:
    listener.join()