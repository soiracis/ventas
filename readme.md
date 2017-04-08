#Inicio

~~~
git clone https://github.com/soiracis/ventas.git
~~~
o
~~~
git git checkout autenticacion
~~~
## Base de datos

Elimina la tabla users, y limpa la tabla migrations
Despues
~~~
php artisan migrate:refresh --seed
~~~
