# escraping_fdd
Repositorio scraping
![image](https://github.com/AntLecter/escraping_fdd/assets/78458573/d0935101-2a9d-40f9-bcad-48778bc265e2)

https://www.canva.com/design/DAGEgPuFPpw/6_2NCwQX5UnkeGK2RlEW-w/edit?utm_content=DAGEgPuFPpw&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton
# Descargar docker 

Primero debemos clonar el repositorio dentro de nuestra consola de linux
```bash
git clone https://github.com/AntLecter/escraping_fdd.git
```
En la carpeta del repo construir la imagena partir del Dockerfile
```bash
docker build -t escarping .
```
Ejecutamo un contenedor con la imagen 
```bash
docker run -p 8888:8888 escraping
```
Ahora desde nuestro navegador abrimos localhost:8888
