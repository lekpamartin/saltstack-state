/etc/yum.repos.d/elastic_6.repo:
  file.managed:
    - source: salt://logiciels/elasticsearch_6/files/elastic_6.repo.jinja
    - template: jinja

elasticsearch:
  pkg:
    - installed
  service.running:
    - enable: true
    - watch:
      - file: /etc/elasticsearch/elasticsearch.yml

/etc/elasticsearch/elasticsearch.yml:
  file.managed:
    - user: elasticsearch
    - group: elasticsearch
    - mode: '0640'
    - source: salt://logiciels/elasticsearch_6/files/elasticsearch.yml.jinja
    - template: jinja
    - require:
      - pkg: elasticsearch
