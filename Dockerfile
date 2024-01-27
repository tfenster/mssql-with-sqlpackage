FROM mcr.microsoft.com/mssql/server:2022-latest
USER root
RUN apt update && apt install -y unzip && \
    wget -O /tmp/sqlp.zip https://aka.ms/sqlpackage-linux && \
    unzip /tmp/sqlp.zip -d /usr/local/bin && \
    chmod a+x /usr/local/bin/sqlpackage && \
    rm /tmp/sqlp.zip
