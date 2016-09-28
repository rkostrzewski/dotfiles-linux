FROM debian:sid
MAINTAINER rkostrzewski
RUN apt-get update && apt-get install -y gnupg2 && \
  sh -c 'echo "deb https://sdkrepo.atlassian.com/debian/ stable contrib" >>/etc/apt/sources.list' && \
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B07804338C015B73 && \
  apt-get install -y apt-transport-https && \
  apt-get update && \
  apt-get install -y openjdk-8-jdk && \
  apt-get install -y atlassian-plugin-sdk && \
  apt-get install -y nodejs && \
  mkdir /root/workdir && \
  javac -version && \
  atlas-version
ENTRYPOINT ["atlas-help"]
WORKDIR /root/workdir
