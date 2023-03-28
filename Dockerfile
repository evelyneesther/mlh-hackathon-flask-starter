FROM ubuntu/postgres:14-22.04_edge
RUN apt update && apt upgrade
RUN apt install sudo
RUN sudo apt install git
#Log in to git with email and username
RUN sudo apt install python3
RUN sudo apt install python3-pip
RUN apt-get install libpq-dev
RUN pip install -r requirements.txt
