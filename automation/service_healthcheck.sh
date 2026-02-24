#!/usr/bin/env bash

# Ruta absoluta al archivo de log
LOG_FILE="/home/$(whoami)/linux-scripts/logs/healthcheck.log"

# Verificamos si curl recibe una respuesta del localhost. 
# El -s silencia el output y -I solo pide las cabeceras.
if curl -I -s http://localhost > /dev/null; then
    echo "$(date '+%Y-%m-%d %H:%M:%S') - OK: Nginx está respondiendo en el puerto 80." >> "$LOG_FILE"
else
    echo "$(date '+%Y-%m-%d %H:%M:%S') - CRITICAL: Nginx no responde. Intentando reiniciar..." >> "$LOG_FILE"
    
    # Reiniciar el servicio (requiere permisos de superusuario)
    sudo service nginx restart
    
    echo "$(date '+%Y-%m-%d %H:%M:%S') - RECOVERY: Servicio Nginx reiniciado." >> "$LOG_FILE"
fi
