from utils.helper import get_env


class BaseEc2:

    def __init__(self):
        get_env('test')
