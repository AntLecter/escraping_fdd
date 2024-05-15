# Usa la imagen base de Python
FROM python:3.9

# Instala las dependencias necesarias para Chrome
RUN apt-get update && apt-get install -y wget gnupg
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list
RUN apt-get update && apt-get install -y google-chrome-stable

# Descarga e instala el controlador de Chrome
RUN CHROME_DRIVER_VERSION=`curl -sS https://chromedriver.storage.googleapis.com/LATEST_RELEASE` && \
    wget -O /tmp/chromedriver.zip https://chromedriver.storage.googleapis.com/$CHROME_DRIVER_VERSION/chromedriver_linux64.zip && \
    unzip /tmp/chromedriver.zip -d /usr/bin && \
    rm /tmp/chromedriver.zip

# Copia el archivo .ipynb al directorio de trabajo del contenedor
COPY proyecto.ipynb /home/user/

# Instala las dependencias necesarias de Python
RUN pip install undetected-chromedriver selenium beautifulsoup4 requests

# Instala Jupyter Notebook
RUN pip install jupyter

# Establece el directorio de trabajo
WORKDIR /home/user

# Comando predeterminado al iniciar el contenedor (ejecuta Jupyter Notebook)
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
