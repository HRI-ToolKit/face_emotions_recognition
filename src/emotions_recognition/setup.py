from setuptools import setup

package_name = 'emotions_recognition'

setup(
    name=package_name,
    version='0.0.0',
    packages=[package_name],
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='saarmoseri',
    maintainer_email='saar@cogniteam.com',
    description='TODO: Package description',
    license='TODO: License declaration',
    tests_require=['pytest'],
    entry_points={
        'console_scripts': [
            'emt_rec_node = emotions_recognition.emt_rec_node:main'
        ],
    },
)
