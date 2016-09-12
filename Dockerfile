FROM finboxio/rancher-conf-aws:dev

RUN apk add --no-cache curl

ADD config.toml /etc/rancher-conf/
ADD get-templates.sh.tmpl /etc/rancher-conf/
ADD run.sh /opt/rancher/bin/
