FROM nginx

# Create app directory
WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y \
      vim \
      curl 

# Bundle app source
COPY static-html-directory /usr/share/nginx/html
COPY mysite.template /etc/nginx/conf.d

EXPOSE 8080
