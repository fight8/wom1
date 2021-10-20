#!/usr/bin/env python3
import os
from time import sleep

app_name = os.getenv("APP_NAME")

while True:
    try:
        os.system(f"curl https://{app_name}.herokuapp.com")
        print("App is online...")
    except:
        print("Ping failed, retrying...")
        try:
            os.system(f"curl -s https://{app_name}.herokuapp.com")
        except:
            print("Cannot ping, app stop...")
    sleep(25*60)
    #sleep(10)
