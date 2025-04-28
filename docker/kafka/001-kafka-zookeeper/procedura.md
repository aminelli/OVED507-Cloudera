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

# Creazione container ui kafka

```


## Docs

| Desc         | Type   | Url                                                                                |
| ------------ | ------ | ---------------------------------------------------------------------------------- |
| Zoonavigator | github | https://github.com/elkozmon/zoonavigator?tab=readme-ov-file                        |
| Zoonavigator | docs   | https://zoonavigator.elkozmon.com/en/latest/docker/configuration.html#zoonavigator |


