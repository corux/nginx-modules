FROM centos:7
ENV container docker

RUN yum -y install rpm-build openssl-devel pcre-devel gcc redhat-lsb-core createrepo; \
    yum clean all; \
    rm -rf /var/cache/yum;

ADD build.sh /build.sh

ENTRYPOINT ["/build.sh"]
