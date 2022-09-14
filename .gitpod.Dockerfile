FROM gitpod/workspace-mysql

RUN sudo apt-get update \
    && sudo apt-get install cowsay -y
RUN mkdir -p /home/gitpod/utpl