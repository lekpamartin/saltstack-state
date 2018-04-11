/etc/yum.repos.d/elasticstack_6.repo:
  file.managed:
    - source: salt://logiciels/repository/files/elasticstack_6.jinja
    - template: jinja

include:
  - systeme.java

logstash:
  pkg:
    - installed
  service.running:
    - enable: true
    - watch:
      - file: /etc/logstash/elasticsearch.yml

/etc/logstash/conf.d/udp.conf:
  file.managed:
    - user: root
    - group: elasticsearch
    - mode: '0640'
    - source: salt://logiciels/elasticsearch_6/files/elasticsearch.yml.jinja
    - template: jinja
    - require:
      - pkg: elasticsearch
