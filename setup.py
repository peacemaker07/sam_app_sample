from setuptools import setup

requires = [
    'requests==2.22.0',
    'boto3==1.9.156',
    'mojimoji==0.0.8',
    'requests-mock==1.6.0',
    'sentry-sdk==0.12.3',
    'pytz==2019.1',
]

tests_require = [
    'pytest',
    'pytest-mock',
    'pytest-cov',
    'moto==1.3.8',
    'freezegun==0.3.12',
]

setup(
    name='sam-app-sample',
    version='0.0.2',
    description='sam app sample',
    include_package_data=True,
    extras_require={
        'testing': tests_require,
    },
    install_requires=requires,
    entry_points={},
)
