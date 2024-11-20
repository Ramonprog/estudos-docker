FROM php:8-apache

WORKDIR /var/www/html

COPY . .

EXPOSE 80

# da permissão para todos os arquivos
RUN chown -R www-data:www-data /var/www