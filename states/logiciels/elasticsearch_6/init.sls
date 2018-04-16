include:
  - systeme.java
  - logiciels.repository.elasticstack_6

elasticsearch:
  pkg:
    - installed
  service.running:
    - enable: true
    - watch:
      - file: /etc/elasticsearch/elasticsearch.yml

/etc/elasticsearch/elasticsearch.yml:
  file.managed:
    - user: root
    - group: elasticsearch
    - mode: '0640'
    - source: salt://logiciels/elasticsearch_6/files/elasticsearch.yml.jinja
    - template: jinja
    - require:
      - pkg: elasticsearch
