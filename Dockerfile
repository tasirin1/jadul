FROM php:8.2-apache

# Install PDO PostgreSQL
RUN docker-php-ext-install pdo pdo_pgsql

# Copy app files to the container
COPY . /var/www/html/

# Enable Apache rewrite module
RUN a2enmod rewrite
