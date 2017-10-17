FROM registry.access.redhat.com/openshift3/logging-fluentd

RUN yum install -y --setopt=tsflags=nodocs rubygem-fluent-plugin-record-modifier

COPY filter-pre-force-utf8.conf /etc/fluent/configs.d/openshift/
