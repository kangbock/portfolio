FROM  node

RUN	mkdir /var/task
WORKDIR /var/task
RUN	npm install -y mysql express http
RUN	npm install --save express
RUN	npm install -y ejs express-session session-file-store

ADD     . /var/task/

CMD [ "node", "app.js" ]

EXPOSE	3000