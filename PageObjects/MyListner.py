# MyListener.py
from robot.api import logger

class MyListener:
    ROBOT_LISTENER_API_VERSION = 2

    def __init__(self):
        self.test_count = 0

    def start_test(self, name, attrs):
        self.test_count += 1
        logger.info(f'Starting test: {name}')

    def end_test(self, name, attrs):
        logger.info(f'Ending test: {name}')

    def close(self):
        logger.info(f'Total tests run: {self.test_count}')
