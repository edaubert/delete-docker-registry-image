FROM python:alpine3.6
MAINTAINER erwan.daubert@gmail.com

ENV REGISTRY_DATA_DIR=/usr/registry/docker/registry/v2

ADD clean_old_versions.py /usr/src/app/
ADD delete_docker_registry_image.py /usr/src/app/

RUN pip install requests

VOLUME /usr/registry/docker/registry/v2
