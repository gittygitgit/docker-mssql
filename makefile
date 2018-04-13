all:
	sudo docker run -e 'ACCEPT_EULA=Y' -e 'MSSQL_SA_PASSWORD=GrUdKoWsKi13' \
   -p 1401:1433 --name sql1 \
   -d microsoft/mssql-server-linux:2017-latest

dockerbuild:
	docker build -t mymssqlimage .

dockerrun:
	docker run -e 'ACCEPT_EULA=Y' -e 'MSSQL_SA_PASSWORD=GrUdKoWsKi13' \
   -p 1401:1433 --name sql1 \
   -d microsoft/mssql-server-linux:2017-latest

dockerrun2:
	docker run -e 'ACCEPT_EULA=Y' -e 'MSSQL_SA_PASSWORD=GrUdKoWsKi13' \
   -p 1401:1433 --name sql1 \
   -d mymssqlimage:latest


hello:
	echo "hello"

