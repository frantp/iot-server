ARG GRAFANA_VERSION="7.5.7"

FROM grafana/grafana:${GRAFANA_VERSION}

COPY img/* public/img/
COPY inject.sh inject.html ./
USER root
RUN ./inject.sh inject.html && \
    rm inject.sh inject.html

USER grafana

ARG GF_INSTALL_PLUGINS=""

RUN if [ ! -z "${GF_INSTALL_PLUGINS}" ]; then \
    OLDIFS=$IFS; \
    IFS=','; \
    for plugin in ${GF_INSTALL_PLUGINS}; do \
    IFS=$OLDIFS; \
    grafana-cli --pluginsDir "$GF_PATHS_PLUGINS" plugins install ${plugin}; \
    done; \
    fi
