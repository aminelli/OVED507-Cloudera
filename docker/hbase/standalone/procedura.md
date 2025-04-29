# HBASE


```shell
docker network create net-test

docker run -it --hostname hbase --name hbase -p 16010:16010 --network net-test aci-hbase:2.5.11-standalone

```