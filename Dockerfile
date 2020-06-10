FROM nginx:latest

ADD https://github.com/regibayoan/dockerfile-repo/blob/master/index.html /usr/share/nginx/html/

RUN chmod +r /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]