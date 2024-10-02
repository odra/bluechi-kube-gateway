FROM quay.io/centos-sig-automotive/autosd:latest

ENV KUBECONFIG=/etc/bluechi-kube-gateway/localhost.config.yaml

RUN dnf install -y python3-flask

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl && \
rm -f kubectl

COPY sysroot/ /

COPY bluechi-kube-gateway /usr/local/bin/bluechi-kube-gateway

# RUN podman pull quay.io/lrossett/bluechi-kube-gateway:latest
RUN podman pull quay.io/centos-sig-automotive/eclipse-mosquitto:latest
