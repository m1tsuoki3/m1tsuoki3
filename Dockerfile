FROM ubuntu:latest

RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt update && \
  apt -y upgrade && \
  apt install -y build-essential && \
  apt install -y software-properties-common && \
  apt install -y python sudo jq tmux curl git man unzip vim wget bzip2 tmux iproute2 libssl-dev net-tools locales libyaml-dev libffi-dev libreadline-dev libbz2-dev libz-dev libsqlite3-dev libgdbm-dev libncurses-dev && \
  rm -rf /var/lib/apt/lists/*

RUN \
  mkdir -p /home/mitsuaki && \
  mkdir -p /home/mitsuaki/go/src && \
  mkdir -p /home/mitsuaki/go/bin

ADD ./.bashrc /
ADD ./.bash_profile /home/mitsuaki/
ADD ./m1tsuoki3.sh /home/mitsuaki/
ADD ./m1tsuoki3 /sbin/

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ENV HOME=/home/mitsuaki

RUN \
  chmod 755 /sbin/m1tsuoki3 && \
  chmod 755 /home/mitsuaki/m1tsuoki3.sh && \
  /home/mitsuaki/m1tsuoki3.sh && \
  rm /home/mitsuaki/m1tsuoki3.sh

RUN \
  chmod -R 777 /etc && \
  chmod -R 777 /home && \
  chmod -R 777 /opt && \
  chmod -R 777 /tmp && \
  chmod -R 777 /var

expose 3201

CMD ["/sbin/m1tsuoki3"]

