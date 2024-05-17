# Airflow

## Descripción

Ejecución de un DAG en airflow con Docker.

## Comandos utilizados

### Comandos principales para meterse en el directorio, crear la imagen, etc.

cd C:\Users\alvar\Desktop\DevOps\entorno_airflow

docker build -t imagen-ahora-airflow -f Dockerfile.dockerfile .

docker run -p 8080:8080 imagen-ahora-airflow airflow webserver 


### Listar los contenedores

docker ps      

docker cp dags/ CONTAINER_ID:/dags


docker run -p 8080:8080 -v C:/Users/alvar/Desktop/DevOps/entorno_airflow/dags:/entorno_airflow/dags imagen-ahora-airflow airflow webserver

### Parar un contenedor

docker stop ID 

docker logs ID     #ver los logs del airflow


### Para meterse en una terminal de airflow

docker exec -it kind_burnell /bin/bash    #nombre del contenedor (kind_burnell) para eso usamos docker ps

### Para listar los usuarios

airflow users list  

### Crear un usuario en airflow, aunque lo hacemos desde el dockerfile porque si cerramos el server se borra el contenedor.

airflow users create \
    --username admin \
    --firstname alvaro \
    --lastname "del burgo" \
    --role Admin \
    --email user@example.com \
    --password 1234



