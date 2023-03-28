FROM ubuntu/postgres:14-22.04_edge
RUN apt update && apt upgrade
RUN apt install sudo
RUN sudo apt install python3
RUN sudo apt install python3-pip
RUN sudo apt install git
RUN git config --global user.email "eedresner@knox.edu"
RUN git config --global user.name "evelyneesther"
RUN pip install -r requirements.txt
