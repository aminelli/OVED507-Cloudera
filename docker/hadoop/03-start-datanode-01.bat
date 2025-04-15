@echo off

docker run -d --name datanode1 --hostname datanode1 --network net-hadoop -p 9864:9864 -v hadoop_datanode1:/hadoop/dfs/data --env-file hadoop.env -e SERVICE_PRECONDITION=namenode:9870 aci-hadoop:3.4.1-datanode
