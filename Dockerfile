FROM         node:lts-alpine
RUN          npm install -g npm@7.21.1
RUN          mkdir  -p /app/frontend
WORKDIR      /app/frontend
COPY         .  /app/frontend
RUN          npm install
RUN          npm run build
COPY         . /app/frontend
RUN          ls
CMD          ["npm" , "start"]
