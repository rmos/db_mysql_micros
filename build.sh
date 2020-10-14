docker stop $(docker ps -a |grep curso-micros-db|awk '{print $1;}')
docker rm $(docker ps -a |grep curso-micros-db|awk '{print $1;}')


docker build --tag curso-micros-db:v1 .
docker run -d --name micros-db -dit --restart always -p 3306:3306 curso-micros-db:v1 


