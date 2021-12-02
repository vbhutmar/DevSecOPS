# This is hackathon testing with nginx
FROM nginx:latest

# Adding the hackthon index html
ADD index.html /usr/share/nginx/html/

#Adding read permissions to  the custom index.html
RUN chmod +r /usr/share/nginx/html/index.html

# nginx -g daemon off will run as default command when any container is running using dockerfile
CMD ["nginx", "-g", "daemon off;"]
