#!/bin/bash

# --------------------------------------
#     Instalar y configurar Certbot
# --------------------------------------

set -x

# Actualizamos lista de repositorios
apt update 

# Realizamos la instalación y actualización de sanpd
snap install core; sudo snap refresh core

# Eliminamos si existiese alguna instalación previa de certbot con apt.
apt-get remove certbot

# Instalamos el cliente de Certbot con snapd.
snap install --classic certbot

# Creamos una alias para el comando certbot.
ln -s /snap/bin/certbot /usr/bin/certbot

# Obtenemos el certificado y configuramos el servidor web Apache.
sudo certbot --apache -m demo@demo.es --agree-tos --no-eff-email -d http://azmaniaw.sytes.net/
# Donde
# Dirección de correo: -m demo@demo.es
# Aceptamos los términos de uso: --agree-tos
# No queremos compartir nuestro email con la Electronic Frontier Foundation: --no-eff-email
# Dominio: -d http://azmaniaw.sytes.net/


