

#============ normal ubuntu
FROM ubuntu:22.04

#------------ set time zone
RUN apt-get update && apt-get install -y tzdata
ENV TZ=Asia/Tokyo

# ----------- set work dir
WORKDIR /root

#------------ install git
RUN apt-get install git -y

#------------ install apache2
RUN apt-get install apache2 -y

COPY ./bash/setup.sh /root/

RUN bash ~/setup.sh
