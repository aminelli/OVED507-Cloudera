@echo off

docker run -d --name nodemanager --hostname nodemanager --network net-hadoop --env-file hadoop.env -e SERVICE_PRECONDITION="namenode:9000 namenode:9870 datanode:9864 resourcemanager:8088" aci-hadoop:3.4.1-nodemanager
 
rem docker run -d 
rem --name nodemanager
rem --hostname nodemanager
rem --network net-hadoop
rem --env-file hadoop.env
rem -e SERVICE_PRECONDITION="namenode:9000 namenode:9870 datanode:9864 resourcemanager:8088"
rem aci-hadoop:3.4.1-nodemanager