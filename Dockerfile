FROM node:latest
RUN apt-get update
RUN apt-get install curl -y
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get install apt-transport-https -y
RUN apt-get update
RUN apt-get install yarn -y
RUN apt-get install xvfb -y
RUN apt-get install -y libgtk-3-0
RUN apt-get install -y libgtk2.0-0
RUN apt-get install -y libnotify-bin
RUN apt-get install -y libgconf-2-4
RUN apt-get install -y libasound2 libxtst6 libxss1 libnss3
RUN npm install electron -g --unsafe-perm=true --allow-root
RUN yarn global add electron --unsafe-perm=true --allow-root
RUN export DISPLAY=':99.0'
RUN Xvfb :99 -screen 0 1366x768x24 > /dev/null 2>&1 &