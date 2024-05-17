# Airflow

## Descripción

Ejecución de un DAG en airflow con Docker.

## Comandos utilizados

cd C:\Users\alvar\Desktop\DevOps\entorno_airflow

docker build -t imagen-ahora-airflow -f Dockerfile.dockerfile .

docker run -p 8080:8080 imagen-ahora-airflow airflow webserver 

docker ps      # listar los contenedores

docker cp dags/ CONTAINER_ID:/dags


docker run -p 8080:8080 -v C:/Users/alvar/Desktop/DevOps/entorno_airflow/dags:/entorno_airflow/dags imagen-ahora-airflow airflow webserver


docker stop ID     # parar un contenedor

docker logs ID     #ver los logs del airflow

### Para meterse en una terminal de airflow
docker exec -it kind_burnell /bin/bash    #nombre del contenedor (kind_burnell) para eso usamos docker ps
airflow users list  

### crear un usuario en airflow, aunque lo hacemos desde el dockerfile porque si cerramos el server se borra el contenedor
airflow users create \
    --username admin \
    --firstname alvaro \
    --lastname "del burgo" \
    --role Admin \
    --email alvarodelburgoperez@gmail.com \
    --password 1234



