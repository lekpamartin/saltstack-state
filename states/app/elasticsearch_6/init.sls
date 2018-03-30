elasticsearch:
  pkg:
    - installed
  service.running:
    - enable: true
    - watch:
      - file: /etc/elasticsearch/elasticsearch.conf

/etc/elasticsearch/elasticsearch.conf:
  file.managed:
    - user: elasticsearch
    - group: elasticsearch
    - mode: '0640'
    - source: salt://app/elasticsearch_6/files/elasticsearch.conf.jinja
    - template: jinja
    - require:
      - pkg: elasticsearch
