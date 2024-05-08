# download base image ubuntu 20.04
FROM ubuntu:20.04

#LABEL about the custom image
LABEL maintainer="Yifei Wang, Mingda Jin"
LABEL description="This is custom Docker Image for bcl-convert, an Illumina demultiplexing tool."

# get the package
COPY bcl-convert-4.2.7-2.el7.x86_64.rpm bcl-convert.rpm

# repress tzdata prompt
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
 && apt-get install -y alien \
 && rm -rf /var/lib/apt/lists/* \
 && alien -i bcl-convert.rpm \
 && rm bcl-convert.rpm

# make an executable the default
ENTRYPOINT ["bcl-convert"]

CMD ["--version"]
