# FLUME


```shell
# Creazione dell'immagine
docker build -t aci-flume:1.11.0 .

# Creazione rete ad-hoc
docker network create net-test

# Creazione container flume
docker run -it --hostname flume --name flume -p 4444:4444 --network net-test aci-flume:1.11.0

```