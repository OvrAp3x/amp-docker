FROM cubecoders/amp

#Add repositories
COPY sources.list /etc/apt/

#Install dependencies
RUN apt-get update --allow-unauthenticated


#Install packages

#JAVA
RUN apt install -y ca-certificates curl gzip libc6 libgcc1 libstdc++6 locales procps tar wget zlib1g
RUN wget -nc -P /tmp/bitnami/pkg/cache/ https://downloads.bitnami.com/files/stacksmith/java-15.0.1-0-linux-amd64-debian-10.tar.gz && \
    echo "216defffe0ae2d925a885b90cfe45a50dcd6602e896c760d9eae13ded8986e53  /tmp/bitnami/pkg/cache/java-15.0.1-0-linux-amd64-debian-10.tar.gz" | sha256sum -c - && \
    tar -zxf /tmp/bitnami/pkg/cache/java-15.0.1-0-linux-amd64-debian-10.tar.gz -P --transform 's|^[^/]*/files|/opt/bitnami|' --wildcards '*/files' && \
    rm -rf /tmp/bitnami/pkg/cache/java-15.0.1-0-linux-amd64-debian-10.tar.gz
ENV PATH="/opt/bitnami/java/bin:${PATH}"
ENV JAVA_HOME="/opt/bitnami/java"
##JAVA    
    
#start!
