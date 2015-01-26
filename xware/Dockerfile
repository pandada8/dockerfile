FROM ubuntu:14.04
MAINTAINER pandada8 <pandada8@gmail.com>
RUN sed -i 's/archive.ubuntu.com/cn.archive.ubuntu.com/g' /etc/apt/sources.list
RUN apt-get update -y && apt-get install libc6-i386 lib32z1 git -y
RUN git clone -b x86_32_glibc --single-branch https://github.com/pandada8/XwareBin.git /opt/xware
ADD run.sh /root/run.sh
CMD ["bash","/root/run.sh"]
