# Usa la imagen base de Python
FROM python:3.9-slim
# Configura el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo requirements.txt al contenedor
COPY requirements.txt .

# Instala las dependencias del proyecto
RUN pip install --no-cache-dir -r requirements.txt

# Instala Chromium y el controlador de Chromium
RUN apt-get update && apt-get install -y \
    chromium \
    chromium-driver \
    && rm -rf /var/lib/apt/lists/*

# Copia el resto del código al contenedor
COPY . .

# Comando predeterminado a ejecutar cuando se inicia el contenedor
CMD ["python", "tu_script.py"]
