FROM grafana/grafana

COPY img/* public/img/
COPY inject.sh inject.html ./
USER root
RUN ./inject.sh inject.html && \
   rm inject.sh inject.html
USER grafana
