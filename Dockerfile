FROM ros:foxy

WORKDIR /face_emotions_recognition_ws

COPY ./src /face_emotions_recognition_ws/src

RUN apt -y update && apt -y upgrade

RUN apt-get -y install python3-pip
RUN pip install numpy
RUN apt-get -y install ros-foxy-cv-bridge
RUN pip install mediapipe
RUN pip install tensorflow
RUN . /opt/ros/foxy/setup.sh && colcon build --symlink-install
    
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]