FROM rhel:7.4

RUN yum install -y haproxy && \
    rm -rf /var/cache/yum

LABEL io.k8s.description="Generic HAProxy" \
      io.openshift.tags=haproxy

CMD ["haproxy", "-db", "-f", "/etc/haproxy/haproxy.cfg"]
