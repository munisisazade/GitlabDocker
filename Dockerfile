FROM ubuntu:16.04

RUN apt-get update

RUN apt install -y curl openssh-server ca-certificates postfix

RUN curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash

RUN apt install gitlab-ce

RUN gitlab-ctl reconfigure

EXPOSE 80
