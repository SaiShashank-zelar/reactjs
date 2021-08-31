FROM         node:lts-alpine
RUN          mkdir  -p /app/frontend
WORKDIR      /app/frontend
COPY         .  /app/frontend
RUN          npm install
RUN          npm run build
COPY         . /app/frontend
RUN          ls
ENV          DEBUG=*
CMD          ["npm" , "run" , "start"]
