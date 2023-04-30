FROM haproxy:latest
LABEL HAPROXY-LOADBALANCER-RELAY
EXPOSE 80
USER root
COPY haproxy.conf /etc/haproxy/haproxy.conf
iCOPY start.sh ./
RUN chmod a+x ./start.sh
ENTRYPOINT [ "./start.sh" ]
