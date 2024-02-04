#!/usr/bin/env bash

# Pidiendo data
echo "Hello! insert you user of github please!"
read -r GITHUB_USER

# Realizando consulta
response=$(curl -s "https://api.github.com/users/$GITHUB_USER")

# Verificar si el usuario existe en GitHub
if [[ $(echo "$response" | jq -r '.message') == "Not Found" ]]; then
    echo "User not found on GitHub."
    exit 1
fi

# Obteniendo el id y la fecha de creación para utilizarla en el folder
id=$(echo "$response" | jq -r '.id')
created_at=$(echo "$response" | jq -r '.created_at')

message=$(echo "Hola $GITHUB_USER. User ID: $id. Cuenta creada el: $created_at")
echo $message

# Obteniendo fecha de ejecución
current_date=$(date +"%Y%m%d")

# Crear el folder /tmp/<fecha> si no existe
log_directory="/tmp/$current_date"
mkdir -p "$log_directory"

# Crear el archivo de registro /tmp/<fecha>/saludos.log si no existe
log_file="$log_directory/saludos.log"
touch "$log_file"

# escribir la información en el archivo saludos.log
echo "$message" >> "$log_file"

# Para crear el cronjob que ejecute cada 5 min el script, se debe colocar la siguiente línea de código desde la terminal:
# crontab -e
# */5 * * * * /ruta_script/script_usergit.sh