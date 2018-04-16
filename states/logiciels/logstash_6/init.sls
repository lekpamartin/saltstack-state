include:
  - systeme.java
  - logiciels.repository.elasticstack_6

logstash:
  pkg:
    - installed
  service.running:
    - enable: true
    - watch:
      - file: /etc/logstash/logstash.yml

/etc/logstash/conf.d/udp.conf:
  file.managed:
    - user: root
    - group: logstash
    - mode: '0640'
    - source: salt://logiciels/logstash_6/files/imput_udp.conf.jinja
    - template: jinja
    - require:
      - pkg: logstash
