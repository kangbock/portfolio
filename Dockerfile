FROM  node

RUN	mkdir /var/task
WORKDIR /var/task
RUN	npm install -y mysql express http
RUN	npm install --save express
RUN	npm install -y ejs express-session session-file-store

COPY	portfolio/app.js /var/task/
ADD     portfolio/public /var/task/
ADD     portfolio/bootstrap /var/task/

CMD [ "node", "app.js" ]

EXPOSE	3000