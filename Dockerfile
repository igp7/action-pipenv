# Imagen del contenedor que ejecuta tu código
FROM python:3.8

# Instalar pipenv
RUN pip install --upgrade pip \
 && pip install pipenv \
 && python --version ; pip --version ; pipenv --version

# Copias tu archivo de código de tu repositorio de acción a la ruta `/`del contenedor
COPY entrypoint.sh /

# Comvertir en ejecutable
RUN chmod +x /entrypoint.sh

# Archivo del código a ejecutar cuando comienza el contedor del docker (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
