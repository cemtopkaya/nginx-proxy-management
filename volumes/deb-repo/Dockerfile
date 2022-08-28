FROM ubuntu:focal

ENV DEBIAN_FRONTEND noninteractive

# supervisor için http://supervisord.org/running.html
RUN apt-get update

RUN apt-get install -y --force-yes --no-install-recommends dpkg-dev
RUN apt-get install -y --force-yes --no-install-recommends nginx
RUN apt-get install -y --force-yes --no-install-recommends inotify-tools
RUN apt-get install -y --force-yes --no-install-recommends supervisor

RUN apt-get autoclean
RUN apt-get autoremove
RUN rm -rf /var/lib/apt/lists/*

ADD ./configs/supervisord.conf /etc/supervisor/
ADD ./configs/nginx.conf /etc/nginx/sites-enabled/default
ADD ./repo-scripts/ /repo-scripts
ADD ./package-generator/ /package-generator

ENV DISTS xenial,bionic,focal,jammy
# https://wiki.debian.org/DebianUnstable
ENV COMPONENTS unstable,testing,stable
ENV ARCHS amd64,i386
ENV NGINX_PATH /data/dists
ENTRYPOINT ["/repo-scripts/startup.sh"]