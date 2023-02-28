#!/bin/bash                                                                     
set -e
source /opt/ros/foxy/setup.bash
source /face_emotions_recognition_ws/install/setup.bash

exec "$@"