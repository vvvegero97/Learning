FROM ubuntu:16.04

RUN apt-get update && apt-get install --no-install-recommends -y mysql-client \
	&& rm -rf /var/lib/apt/lists/*
WORKDIR /dump
COPY dump.sh employees.sql ./

EXPOSE 80
ENTRYPOINT [ "/bin/bash", "./dump.sh" ]


