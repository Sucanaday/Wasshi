FROM php:8.1-apache

# Bật mod_rewrite nếu cần
RUN a2enmod rewrite

# Copy toàn bộ code vào server
COPY . /var/www/html/

# Phân quyền nếu cần
RUN chown -R www-data:www-data /var/www/html/
