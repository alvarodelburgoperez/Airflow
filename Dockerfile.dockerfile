# Dockerfile for Apache Airflow

# Usa la imagen oficial de Apache Airflow como base
FROM apache/airflow:latest

# Copia los archivos DAGs a la ubicación correspondiente en el contenedor
COPY dags /opt/airflow/dags

# Exponer el puerto 8080 para el servicio web de Airflow
EXPOSE 8080

# Comando para inicializar la base de datos de Airflow
RUN airflow db init

# Comando para crear un usuario
RUN airflow users create \
    --username admin \
    --firstname alvaro \
    --lastname "del burgo" \
    --role Admin \
    --email alvarodelburgoperez@gmail.com \
    --password 1234

# Comando por defecto para iniciar el scheduler de Airflow
CMD ["airflow", "webserver", "--port", "8080"]
