import sys
import os
import json
from .helper import get_abspath
import pytest


# Lambdaのプロジェクトをシステムパスに追加
sys.path.append(os.path.join(get_abspath(), '../hello_world/'))


@pytest.fixture(scope='function', autouse=True)
def lambda_environment():

    with open('./hello_world/conf/env.json') as f:
        env_dict = json.load(f)

    for env in env_dict:
        for key, value in env_dict[env].items():
            os.environ[key] = str(value)
