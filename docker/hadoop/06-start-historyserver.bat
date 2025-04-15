@echo off

docker run -d --name historyserver --hostname historyserver --network net-hadoop --env-file hadoop.env -v hadoop_historyserver:/hadoop/yarn/timeline -e SERVICE_PRECONDITION="namenode:9000 namenode:9870 datanode:9864 resourcemanager:8088" aci-hadoop:3.4.1-historyserver
 
rem docker run -d 
rem --name historyserver
rem --hostname historyserver
rem --network net-hadoop
rem --env-file hadoop.env
rem -v hadoop_historyserver:/hadoop/yarn/timeline
rem -e SERVICE_PRECONDITION="namenode:9000 namenode:9870 datanode:9864 resourcemanager:8088"
rem aci-hadoop:3.4.1-historyserver