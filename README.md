# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version  2.6.6 rails version 5.2.5 Mysql-MariaDB

* System dependencies 
Única librería instalada es Roo para obtener la inf de los excel

* Configuration
1-Clonar repositorio de github: https://github.com/maestro362/orve.git
2-Situarse con una terminal en la raiz de la carpeta del proyecto clonado
3-Ejecutar el comando -  bundle install  -
4-Configurar la base de datos en el archivo database.yml ubicado en raiz/config
5-Cargar en mysql la db que se encuentra dentro de la carpeta del proyecto o ejecutar las migraciones con el comando -  rails db:setup  - seguido por -  rails db:migrate  -
6-Ejecutar el proyecto: Situarse en raiz del proyecto con una terminal y ejecutar rails server
7-En el exploradro web ingresar con a url: http://127.0.0.1:3000/home
