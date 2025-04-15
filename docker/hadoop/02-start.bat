@echo off

docker run -d --name hdp-namenode --hostname hdp-namenode --network net-hadoop -p 9870:9870 -p 9000:9000 -v hadoop_namenode:/hadoop/dfs/name --env-file hadoop.env -e CLUSTER_NAME=test aci-hadoop:3.4.1

rem docker run -d 
rem --name hdp-namenode
rem --hostname hdp-namenode
rem --network net-hadoop   
rem -p 9870:9870 -p 9000:9000
rem -v hadoop_namenode:/hadoop/dfs/name
rem --env-file hadoop.env
rem -e CLUSTER_NAME=test
rem aci-hadoop:3.4.1