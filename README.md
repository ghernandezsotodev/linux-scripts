# linux-scripts
Linux &amp; Bash automation scripts — DevOps training repository

## Semana 2: Service Healthcheck
**Script:** `automation/service_healthcheck.sh`
**Descripción:** Este script monitorea el estado del servicio web (Nginx) local en el puerto 80 utilizando `curl` en modo silencioso. Si la verificación HTTP falla, el script registra el incidente como un evento CRITICAL en el archivo de log correspondiente y procede a inyectar un reinicio forzado del servicio, documentando posteriormente la recuperación (RECOVERY).
