# Actividad 5 - 201700381

a. ¿Cuántos procesos únicos son creados?
R// Dado que el método `fork()` es llamado tres veces, y el número de procesos se obtiene con 2^n, podemos deducir que 2^3=8, así que el número de procesos creados es de 8.


b. ¿Cuántos hilos únicos son creados?
R// El único hilo que se crea es en `thread_create`, y este se crea con cada ejecución de `fork()`. por lo que se crea 8 veces el mismo hilo único. 