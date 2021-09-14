FROM ubuntu:21.10
RUN apt update -y && \
    DEBIAN_FRONTEND=noninteractive apt install -y podman
ADD containers.conf /usr/share/containers/containers.conf
ADD storage.conf /etc/containers/storage.conf
ADD registries.conf /etc/containers/registries.conf
VOLUME ["/var/tmp", "/var/lib/containers/storage"]
RUN ln -s /usr/bin/podman /usr/bin/docker
