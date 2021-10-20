#!/usr/bin/env python3
import os
from time import sleep

#APP_NAME = {app_name}
APP_NAME = 'awakeman1'


while True:
    try:
        os.system(f"curl https://%s.herokuapp.com" %APP_NAME)
    except:
        print("Ping failed, retrying...")
        try:
            os.system(f"curl https://%s.herokuapp.com" %APP_NAME)
        except:
            print("Cannot ping app, terminating...")
    sleep(2)
    print('Is run..')

