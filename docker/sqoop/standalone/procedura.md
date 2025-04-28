# SQOOP


```shell
# Creazione dell'immagine
docker build -t aci-sqoop:1.4.7 .

# Creazione rete ad-hoc
docker network create net-test

# Creazione container flume
docker run -it --hostname sqoop --name sqoop -p 5001:16000 --network net-test aci-sqoop:1.4.7

```