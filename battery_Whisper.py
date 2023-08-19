import psutil
from plyer import notification
import time

def check_battery_level():
    battery = psutil.sensors_battery()
    percent = battery.percent
    return percent

def send_notification(title, message):
    notification.notify(
        title=title,
        message=message,
        app_name='Battery Whisper',
        timeout=10,
    )

# Send a notification with emojis when the script starts
startup_message = "🔋 The script has started! 🚀"
send_notification("Battery Whisper", startup_message)

print("The script is running!") #Terminal print

while True:
    battery_level = check_battery_level()
    if battery_level >= 80:
        message = f"Your battery is now at {battery_level}%! Time to unplug, pal!. ⚡"
        send_notification("Battery Whisper", message)
    elif battery_level <= 25:
            message = f"Your battery is now at {battery_level}%! Please connect the charger. 🔌"
            send_notification("Battery Whisper", message)
    time.sleep(300)  # Check battery level every 30 secs
