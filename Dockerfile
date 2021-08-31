FROM         node:14.14.0-alpine
RUN          mkdir  -p /app/frontend
WORKDIR      /app/frontend
COPY         .  /app/frontend
RUN          npm install
RUN          npm run build
COPY         . /app/frontend
EXPOSE       3000
CMD          ["npm" , "start"]
