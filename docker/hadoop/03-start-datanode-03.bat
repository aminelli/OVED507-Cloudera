@echo off

docker run -d --name datanode3 --hostname datanode3 --network net-hadoop -p 9866:9864 -v hadoop_datanode3:/hadoop/dfs/data --env-file hadoop.env -e SERVICE_PRECONDITION=namenode:9870 aci-hadoop:3.4.1-datanode

