FROM circleci/node:12.18.1-stretch

# update npm
RUN sudo npm i -g npm@6.14.5

# install aws-sdk
RUN sudo apt-get -y -qq update && sudo apt-get -y -qq install python3
RUN curl https://bootstrap.pypa.io/get-pip.py -o ~/get-pip.py
RUN sudo python3 ~/get-pip.py
RUN sudo pip install awscli==1.16.183 --upgrade
