@echo off

docker run -d --name resourcemanager --hostname resourcemanager --network net-hadoop --env-file hadoop.env -e SERVICE_PRECONDITION="namenode:9000 namenode:9870 datanode:9864" aci-hadoop:3.4.1-resourcemanager
 
rem docker run -d 
rem --name resourcemanager
rem --hostname resourcemanager
rem --network net-hadoop   
rem --env-file hadoop.env
rem -e SERVICE_PRECONDITION="namenode:9000 namenode:9870 datanode:9864"
rem aci-hadoop:3.4.1-resourcemanager