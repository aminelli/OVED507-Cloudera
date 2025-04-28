# SQOOP


```shell
# Creazione dell'immagine
docker build -t aci-sqoop:1.4.7 .


# Creazione rete ad-hoc
docker network create net-test

# Creazione container Mysql per test collegamento
docker run -d --hostname mysql --name mysql -v vol-mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root --network net-test -p 3306:3306 -d mysql

# Creazione container flume
docker run -it --hostname sqoop --name sqoop -p 5001:16000 --network net-test aci-sqoop:1.4.7



sqoop list-databases --connect jdbc:msql://mysql:3306/ --username root --password root

```