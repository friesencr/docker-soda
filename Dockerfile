FROM ubuntu:20.04
WORKDIR /soda
RUN apt-get update && apt-get install -y wget
RUN wget https://github.com/gobuffalo/pop/releases/download/v5.2.3/pop_5.2.3_linux_amd64.tar.gz
RUN tar -xf pop_5.2.3_linux_amd64.tar.gz
WORKDIR /app
ENTRYPOINT ["/soda/soda"]

