FROM debian
MAINTAINER Juan Carlos G. Pelaez juancarlosgpelaez@gmail.com

RUN \
  apt-get update && \
  apt-get install -y sudo curl git && \
  curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash && \
  sudo apt-get install git-lfs=3.0.2 && \
  mkdir -p /src 

WORKDIR /src

CMD [ "/usr/bin/git" ]
