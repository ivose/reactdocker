
# https://medium.com/@suraj.kc/adding-docker-containers-for-react-applications-803914b2077b
FROM node:16-alpine
USER node
RUN mkdir /home/node/code
WORKDIR /home/node/code
COPY --chown=node:node package.json package-lock.json ./
RUN npm ci
COPY --chown=node:node . .
EXPOSE 3000
CMD ["npm", "start"]


# docker build -f dev.Dockerfile -t express-server .
# docker run -p 3000:3000 express-server
# https://www.docker.com/blog/speed-up-your-development-flow-with-these-dockerfile-best-practices/

# https://medium.com/geekculture/getting-started-with-docker-in-your-react-js-application-the-basics-6e5300cf749d
#FROM node:latest
#WORKDIR /app
#COPY package.json ./
#RUN npm install
#COPY . .
#CMD ["npm", "start"]