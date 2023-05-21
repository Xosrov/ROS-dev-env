FROM ros:noetic-ros-core

RUN apt-get update && apt-get install software-properties-common -y && add-apt-repository ppa:longsleep/golang-backports

RUN apt-get install golang-go vim git -y

RUN echo "source /opt/ros/noetic/setup.bash" >> /root/.bashrc

RUN git config --global user.email "seyed.alireza.miryazdi@gmail.com" && git config --global user.name "Xosrov" && git config --global --add safe.directory /app/src

WORKDIR /app