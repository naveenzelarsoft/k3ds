FROM    nginx
WORKDIR /var/www/html/index.html
RUN     rm index.html
COPY    index.html .
CMD     ["nginx", "-g", "daemon off;"]