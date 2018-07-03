FROM node:latest
RUN apt-get update
RUN apt-get install xvfb -y
RUN apt-get install -y libgtk-3-0
RUN apt-get install -y libgtk2.0-0
RUN apt-get install -y libnotify-bin
RUN apt-get install -y libgconf-2-4
RUN apt-get install -y libasound2 libxtst6 libxss1 libnss3
RUN export DISPLAY=':99.0'
RUN Xvfb :99 -screen 0 1366x768x24 > /dev/null 2>&1 &