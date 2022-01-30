#!/bin/bash

cd  /home/luk/Documents/INFO5/CC/JHipster_Project/mastering-microservices/gateway
./gradlew bootJar -Pprod jibDockerBuild
docker images | grep gateway

cd  /home/luk/Documents/INFO5/CC/JHipster_Project/mastering-microservices/product
./gradlew bootJar -Pprod jibDockerBuild
docker images | grep productorder

cd  /home/luk/Documents/INFO5/CC/JHipster_Project/mastering-microservices/invoice
./gradlew bootJar -Pprod jibDockerBuild
docker images | grep invoice

cd  /home/luk/Documents/INFO5/CC/JHipster_Project/mastering-microservices/notification
./gradlew bootJar -Pprod jibDockerBuild
docker images | grep notification
