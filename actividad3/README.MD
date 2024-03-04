# ACTIVIDAD 3

1. Creamos el scripit con la extensión `.sh`. A este archivo le colocamos dos mensajes, uno para la fecha y otro para el saludo

```
    #!/usr/bin/env bash
    echo "Fecha $(date +%d/%m/%y)"
    echo "Hey, hola!"
```

2. Debemos crear un archivo *.service en la carpeta `/etc/systemd/system` el cuál mostrará el contenido al ejecutar el script.

```
    [Unit]
    Description=Fecha actual y presentacion

    [Service]
    Type=simple
    ExecStart=usr/bin/bach /home/n21/test.sh

    [Install]
    WantedBy=multi-user.target
```

En este caso, `ExectStart` debe tener la ruta completa donde se encuentra el script. Para fines prácticos se ha dejado en la carpeta del usuario local.

Para continuar con la actividad, se deben ejecutar los siguientes comandos en la terminal:

### Habilita el servicio
```
    systemctl enable activity3.service
    
```

### Inicia el servicio
```
    systemctl start activity3.service
```

### Visualiza el estado de la ejecución del servicio
```
    systemctl status activity3.service
```

