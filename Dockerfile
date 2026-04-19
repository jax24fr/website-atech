FROM nginx:alpine
COPY index.html projets.html mentions-legales.html /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/
