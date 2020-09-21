FROM node:10

ENV SSH_PASSWD "root:Docker!"
WORKDIR /react
COPY package*.json ./

RUN apt-get install -y yarn
RUN npm install
RUN npm install serve

COPY . . 

COPY init_container.sh /usr/local/bin/
RUN chmod u+x /usr/local/bin/init_container.sh \
     && chmod 777 /opt  \
     && echo "cd /home" >> /etc/bash.bashrc

EXPOSE 5000

CMD [ "ng", "serve" ]
#CMD [ "serve -s dist" ] 