FROM    python:3.7-buster
USER    root
COPY    requirements.txt /tmp/
RUN adduser <project> \
        --disabled-password \
        --gecos ""
RUN apt-get update && \
    apt-get install -y sudo
RUN adduser <project> sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
WORKDIR /home/<project>
RUN pip install --upgrade pip
RUN sudo apt-get update && apt-get install -y libgl1-mesa-dev
RUN pip install -r /tmp/requirements.txt
EXPOSE  8888
#RUN jupyter notebook --allow-root --generate-config
