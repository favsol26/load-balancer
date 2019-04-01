docker build -t load-balance-nginx  .
docker run -p 9090:80 -d --name nginx load-balance-nginx

num=9091+$n

for (( i=9091; i<num; i++ ))
do
docker run -dt -e mongoDBHostname=172.17.0.2 -p $i:8080 --cpus="0.25" --memory="128m" --memory-swap="128m" --name acme-api$i favsol26/do1819-02
done

docker logs nginx --follow
