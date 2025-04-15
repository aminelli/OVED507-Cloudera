@echo off

docker run -d --name datanode --hostname datanode --network net-hadoop -p 9864:9864 -v hadoop_datanode:/hadoop/dfs/data --env-file hadoop.env -e SERVICE_PRECONDITION=namenode:9870 aci-hadoop:3.4.1-datanode

rem docker run -d 
rem --name datanode
rem --hostname datanode
rem --network net-hadoop   
rem -p 9864:9864
rem -v hadoop_datanode:/hadoop/dfs/data
rem --env-file hadoop.env
rem -e SERVICE_PRECONDITION=namenode:9870
rem aci-hadoop:3.4.1-datanode