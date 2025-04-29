# HBASE


```shell
docker network create net-test

docker run -d --hostname zookeeper --name zookeeper -p 2181:2181 --network net-test zookeeper:3.8.0

docker run -it --hostname hbase --name hbase -p 16010:16010 --network net-test aci-hbase:2.5.11-standalone

```