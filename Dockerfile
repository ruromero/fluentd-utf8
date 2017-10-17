FROM registry.access.redhat.com/openshift3/logging-fluentd

#RUN yum install -y --setopt=tsflags=nodocs rubygem-fluent-plugin-record-modifier
RUN gem install -N --conservative --minimal-deps --no-ri 'fluent-plugin-record-modifier:<1.0.0'

COPY filter-pre-force-utf8.conf /etc/fluent/configs.d/openshift/
