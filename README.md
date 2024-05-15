# escraping_fdd
Repositorio scraping
![image](https://github.com/AntLecter/escraping_fdd/assets/78458573/d0935101-2a9d-40f9-bcad-48778bc265e2)

# Descargar docker 
Primero debemos clonar el repositorio dentro de nuestra consola de linux
```bash
git clone https://github.com/AntLecter/escraping_fdd.git
```
Ahora dentro de nuestra carpeta del repo,  creamos la imagen del docker  
```bash
docker build -t escraping . 
```
Ejecuitemo el contenedor 
```bash
docker run -d antlecter/scarping_net
docker run -d -p 8080:80 antlecter/scarping_net

```
Ahora abrimos el archivo proyecto.ipynb en vscode 
