FROM microsoft/mssql-server-linux:2017-latest

ENV SA_PASSWORD=Passw0rd
ENV ACCEPT_EULA=Y

WORKDIR /usr/local/bin

COPY entrypoint.sh entrypoint.sh
COPY setup.sh setup.sh
COPY init.sql init.sql
COPY data/ data/
COPY table/ table/

RUN chmod +755 entrypoint.sh
RUN chmod +755 setup.sh

#EXPOSE 1433

# 040718 There's something wrong w/ entrypoint...figure it out
ENTRYPOINT ./entrypoint.sh


