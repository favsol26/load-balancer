# docker rm $(docker ps -aq) -f

num=9091+$n

for (( i=9091; i<num; i++ ))
do
docker rm acme-api$i -f
done

docker rm nginx -f 