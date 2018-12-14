FROM debian:8-slim

ENV VERSION="3.1.16_debian_8.7"

RUN apt-get update && \
    apt-get install -yq --no-install-recommends \
        curl \
        libpython2.7 \
        net-tools \
        python-minimal \
        python-pkg-resources \
        python-m2crypto \
        python-gtk2 \
        python-appindicator \
        python-apsw \
        python-lxml \
     && \
     rm --force --recursive /var/lib/apt/lists && \
     mkdir -p /opt/acestream && \
     curl --silent "http://dl.acestream.org/linux/acestream_${VERSION}_x86_64.tar.gz" \
        | tar --extract --gzip --strip-components=1 -C /opt/acestream && \
     echo '/opt/acestream/lib' >> /etc/ld.so.conf && \
     /sbin/ldconfig
EXPOSE 6878

CMD ["/opt/acestream/acestreamengine","--client-console"]
