# Filename: mywebapp
# choosing nginx as the  base image
FROM nginx:2

# OS update 
RUN apt-get update && apt-get upgrade -y

# choosing working directory
WORKDIR /usr/share/nginx/html/

# install all the html files in the home directory
COPY /Users/lenga/webapp01/mydockerapp/bootstrap-shop /usr/share/nginx/html
COPY config/nginx.config /etc/nginx/conf.d/default.conf

# choosing the port to expose our site
EXPOSE 8080

# set the default command to execute
CMD [  "nginx", "start" ]


