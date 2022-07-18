FROM python:3.10-slim-buster

ARG UID
ARG GID
ARG USERNAME
ARG GROUPNAME

RUN apt update && apt upgrade -y
RUN apt install libglfw3-dev python3-pip -y

RUN mkdir -p /opt/app

COPY main.py /opt/app

RUN groupadd -g $GID $GROUPNAME
RUN useradd -m -u $UID -g $GID $USERNAME

RUN chown $USERNAME:$GROUPNAME -R /opt/app
USER $USERNAME

RUN pip install glfw PyOpenGL numpy

WORKDIR /opt/app
ENTRYPOINT ["/bin/bash"]
