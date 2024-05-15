# Usa la imagen base de Python
FROM python:3.9-slim

# Configura el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo requirements.txt al contenedor
COPY requirements.txt .
COPY proyecto.ipynb .
# COPY 'Tarea Scrapping .ipynb ' .




# Instala las dependencias del proyecto
RUN pip install --no-cache-dir -r requirements.txt

# Instala Chromium y el controlador de Chromium
RUN apt-get update && apt-get install -y \
    chromium \
    chromium-driver \
    && rm -rf /var/lib/apt/lists/*

# Instala JupyterLab
RUN pip install jupyterlab

# Copia el resto del código al contenedor
COPY . .

# Expone el puerto 8888 para JupyterLab
EXPOSE 8888

# Comando predeterminado a ejecutar cuando se inicia el contenedor
#CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
