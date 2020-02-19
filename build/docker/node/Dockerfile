FROM node:12.16

# set our node environment, either development or production
# defaults to production, compose overrides this to development on build and run
ARG NODE_ENV=production
ENV NODE_ENV $NODE_ENV

# default to port 3000 for node, and 9229 and 9230 (tests) for debug
ARG PORT=3000
ENV PORT $PORT
EXPOSE $PORT

# you'll likely want the latest npm, regardless of node version, for speed and fixes
# but pin this version for the best stability
RUN npm i npm@latest -g

WORKDIR /var/app


COPY . .

RUN chmod 777 /var/app/build/docker/docker-entrypoint.sh && npm install --no-optional && npm cache clean --force
ENV PATH /var/app/node_modules/.bin:$PATH


ENTRYPOINT ["/var/app/build/docker/docker-entrypoint.sh"]

CMD [ "npx", "factor", "start" ]
