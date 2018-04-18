FROM nginx

# Create app directory
WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y \
      vim \
      curl \
      jq 

EXPOSE 8080
