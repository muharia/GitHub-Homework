# Használjuk a hivatalos Nginx base image-et
FROM nginx:latest

# Másoljuk fel az index.html-t a Nginx default web mappájába
COPY index.html /usr/share/nginx/html/
