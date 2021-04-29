# IAW - Práctica HTTPS con Let’s Encrypt y Certbot
>IES Celia Viñas (Almería) - Curso 2020/2021  
>Módulo: IAW - Implantación de Aplicaciones Web  
>Ciclo: CFGS Administración de Sistemas Informáticos en Red  

# Práctica: HTTPS con Let’s Encrypt y Certbot
En esta práctica vamos a habilitar el protocolo [HTTPS](https://es.wikipedia.org/wiki/Protocolo_seguro_de_transferencia_de_hipertexto) en un sitio web [WordPress](https://wordpress.org/) que se estará ejecutando en una instancia EC2 de [Amazon Web Services (AWS)](https://aws.amazon.com/es/ec2/?ec2-whats-new.sort-by=item.additionalFields.postDateTime&ec2-whats-new.sort-order=desc).

### Conceptos
[HTTPS](https://es.wikipedia.org/wiki/Protocolo_seguro_de_transferencia_de_hipertexto) es  Protocolo seguro de transferencia de hipertexto (Hypertext Transfer Protocol Secure).

Para poder habilitar el protocolo HTTPS en un sitio web es necesario obtener un **certificado de seguridad**. Este certificado tiene que ser emitido por una **autoridad de certificación (AC)**. En esta práctica vamos a obtener un certificado para un dominio de la Autoriidad de Certificación [Let’s Encrypt](https://letsencrypt.org/).

[Let´s Encrypt](https://letsencrypt.org/) es una autoridad de certificación que se puso en marcha el 12 de abril de 2016 y que proporciona [certificados X.509](https://es.wikipedia.org/wiki/X.509) **gratuitos** para el cifrado de seguridad de nivel de transporte ([TLS](https://es.wikipedia.org/wiki/Seguridad_de_la_capa_de_transporte)) a través de un proceso automatizado diseñado para eliminar el complejo proceso actual de creación manual, la validación, firma, instalación y renovación de los certificados de sitios web seguros. (Fuente: [Wikipedia](https://es.wikipedia.org/wiki/Wikipedia:Portada))

[Certbot](https://certbot.eff.org/) es una herramienta que gestiona de forma automática certificados **TLS/SSL** y automaticamente configurar el [HTTPS](https://es.wikipedia.org/wiki/Protocolo_seguro_de_transferencia_de_hipertexto) con nuestro servidor web. (Fuente: [Redeszone](https://www.redeszone.net/2016/05/14/certbot-es-el-nuevo-cliente-de-lets-encrypt-que-facilitara-tu-vida-a-la-hora-de-pedir-o-renovar-certificados/))

## Pasos a realizar
Crearemos una **instancia EC2** en [AWS](https://aws.amazon.com/es/).

Está **instancia EC2** deberá tener los puertos abiertos para poder conectarnos por SSH y poder acceder por HTTP/HTTPS.
- SSH (22/TPC)
- HTTP (80/TPC)
- HTTPS (443/TPC)

Realizaremos la **instalación y configuración de un sitio web**.

Continuaremos con registrar un **nombre de dominio** en algún proveedor de nombres de dominio gratuito, por ejemplo, [Freenom](https://www.freenom.com/es/index.html?lang=es).

## REFERENCIAS
- [José Juan Sánchez](https://josejuansanchez.org/iaw/practica-https/index.html)
- [Freenom](https://www.freenom.com/es/index.html?lang=es)
- [Wikipedia](https://es.wikipedia.org/wiki/Wikipedia:Portada)