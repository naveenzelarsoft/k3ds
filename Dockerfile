FROM    nginx
WORKDIR /usr/share/nginx/html
RUN     rm index.html
COPY    index.html .
CMD     ["nginx", "-g", "daemon off;"]