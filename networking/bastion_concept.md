# Conceptos de Redes - Semana 4

## 1. Sniffing Básico (tcpdump)
Se logró interceptar tráfico HTTP en el puerto 80 local. Se observó el payload en texto plano (HTML de Nginx) y el cierre de conexiones TCP (Flags FIN y ACK). Esto evidencia la necesidad de cifrado en tránsito.

## 2. Bastion Host (Jump Box)
Un Bastion Host es un servidor en una subred pública diseñado específicamente para resistir ataques. Actúa como un puente o "salto" hacia las instancias en la subred privada que no tienen IP pública.

**Comando de salto transparente en SSH:**
En lugar de entrar al Bastion y luego a la BD, se puede usar el flag `-J` (Jump) para enrutar la conexión directamente:
\`\`\`bash
ssh -J ubuntu@<IP_PUBLICA_BASTION> ubuntu@<IP_PRIVADA_BD>
\`\`\`
