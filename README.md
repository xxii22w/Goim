# Goim
即时通信

### 参考 
https://github.com/callmePicacho/GoChat

### 环境安装
```bash
# etcd
docker run -d --name etcd -p 2379:2379  -p 2380:2380  -e ALLOW_NONE_AUTHENTICATION=yes -e ETCD_ADVERTISE_CLIENT_URLS=http://etcd-server:2379 bitnami/etcd:latest
# redis
docker run -d --name rabbitmq -p 5672:5672 -p 15672:15672 rabbitmq:management-alpine
# mysql
docker run -d --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=
# redis
docker run -d --name redis -p 6379:6379 redis
```