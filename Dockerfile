## Estágio de Compilação
##uma imagem do linux para compilar o projeto
FROM ubuntu:latest AS build

## instalar o JAVA
RUN apt-get update
RUN apt-get install -y openjdk-21-jdk

## instalar o maven
RUN apt-get install -y maven

## COPY do projeto para o container
COPY . .

## compilar o projeto com o maven

RUN mvn clean install

## Execução do Projeto
FROM openjdk:21-jdk-slim

## Expor a porta 8080
EXPOSE 8080

## Copiar o arquivo jar da compilação para o container de execução
COPY --from=build /target/gamestore-0.0.1-SNAPSHOT.jar app.jar

## Definir o comando de inicialização do container
ENTRYPOINT ["java", "-jar", "app.jar"]