1. Creamos dos archivos para almacenar el chat
```
    mkfifo chat1
    mkfifo chat2
```

2. Preparamos el siguiente scrip
```
    #!/bin/bash

    while true
    do
        read msg
        echo "[Chat 1:] $msg" > chat1
    done
```

Y lo ejecutamos en una terminal

3. Preparamos un segundo script para el segundo chat
```
    #!/bin/bash

    while true
    do
        read msg
        echo "[Chat 2:] $msg" > chat2
    done
```

Y lo ejecutamos en otra terminal.

4. Para poder ver el chat completo, ejecutamos el siguiente script
```
    #!/bin/bash

    while true
    do
        if read msg < chat1; then
            echo "$msg"
        fi

        if read msg < chat2; then
            echo "$msg"
        fi
    done
```

