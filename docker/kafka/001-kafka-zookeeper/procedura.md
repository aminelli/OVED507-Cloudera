# Avvio di un cluster kafka con 3 nodi e di una istanza zookeeper

## Comandi shell

```shell

# Creazione rete docker virtuale di tipo bridge
docker network create net-kafka

# Creazione container zookeepeer
docker run -d --hostname zookeeper --name zookeeper -p 2181:2181 -p 8085:8080 --network net-kafka --env-file .env.zookeeper confluentinc/cp-zookeeper:7.8.0

# Creazione container zoonavigator: Web UI zookeeper
docker run -d --hostname zoonavigator --name zoonavigator -p 9000:9000 --network net-kafka --env-file .env.zoonavigator elkozmon/zoonavigator:latest

# Creazione Nodi Cluster Kafka
docker run -d --hostname broker01 --name broker01 -p 9092:9092 -p 9101:9101 --network net-kafka --env-file .env.kafka01 confluentinc/cp-server:7.8.0
docker run -d --hostname broker02 --name broker02 -p 9093:9093 -p 9102:9101 --network net-kafka --env-file .env.kafka02 confluentinc/cp-server:7.8.0
docker run -d --hostname broker03 --name broker03 -p 9094:9094 -p 9103:9101 --network net-kafka --env-file .env.kafka03 confluentinc/cp-server:7.8.0

# Creazione container ui kafka
docker run -d --hostname kafka-ui --name kafka-ui -p 9088:8080 -e DYNAMIC_CONFIG_ENABLED=true --network net-kafka provectuslabs/kafka-ui


```


## Docs

| Desc         | Type   | Url                                                                                |
| ------------ | ------ | ---------------------------------------------------------------------------------- |
| Zoonavigator | github | https://github.com/elkozmon/zoonavigator?tab=readme-ov-file                        |
| Zoonavigator | docs   | https://zoonavigator.elkozmon.com/en/latest/docker/configuration.html#zoonavigator |


