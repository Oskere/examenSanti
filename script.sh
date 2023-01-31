#!/bin/bash

#Crear contenedores
docker run -d -it --name restarting ubuntu
docker run -d -it --name up ubuntu
docker create --name created ubuntu
docker run -d -it --name paused ubuntu
docker run -d -it --name exited ubuntu

#status
docker start up
docker pause paused
docker stop exited
docker restart restarting

# Mostrar todos los contenedores con el estado actual
docker ps -a

#Eliminar todos los contenedores
docker stop up
docker stop restarting
docker stop paused

docker rm up
docker rm restarting
docker rm paused
docker rm created
docker rm exited

docker ps –a
