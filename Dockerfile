# Usamos la imagen oficial de Python
FROM python:3.11-slim

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos el archivo de dependencias e instalamos
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos el resto del proyecto
COPY . .

# Exponemos el puerto de la app
EXPOSE 5000

# Comando para ejecutar la app
CMD ["python", "app.py"]
