FROM cubecoders/amp

#Install dependencies
RUN apt-get update --allow-unauthenticated


#Add repository


#Install packages

#JAVA
RUN install_packages ca-certificates curl gzip libc6 libgcc1 libstdc++6 locales procps tar wget zlib1g
RUN wget -nc -P /tmp/bitnami/pkg/cache/ https://downloads.bitnami.com/files/stacksmith/java-15.0.1-0-linux-amd64-debian-10.tar.gz && \
    echo "216defffe0ae2d925a885b90cfe45a50dcd6602e896c760d9eae13ded8986e53  /tmp/bitnami/pkg/cache/java-15.0.1-0-linux-amd64-debian-10.tar.gz" | sha256sum -c - && \
    tar -zxf /tmp/bitnami/pkg/cache/java-15.0.1-0-linux-amd64-debian-10.tar.gz -P --transform 's|^[^/]*/files|/opt/bitnami|' --wildcards '*/files' && \
    rm -rf /tmp/bitnami/pkg/cache/java-15.0.1-0-linux-amd64-debian-10.tar.gz
##JAVA    
    
#start!
