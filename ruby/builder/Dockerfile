#!/usr/local/bin/docker
FROM centos
RUN yum groupinstall -y --setopt=group_package_types=mandatory,default,optional 'Development Tools'
RUN yum install -y ruby ruby-devel libffi-devel
RUN gem install bundler

RUN yum install -y zlib-devel sqlite-devel libxml2-devel libxslt-devel
RUN gem install --verbose rails
