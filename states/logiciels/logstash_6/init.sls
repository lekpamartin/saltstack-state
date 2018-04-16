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

/etc/logstash/logstash.yml:
  file.managed:
    - user: root
    - group: logstash
    - mode: '0640'
    - source: salt://logiciels/logstash_6/files/logstash.yml.jinja
    - template: jinja
    - require:
      - pkg: logstash

/etc/logstash/conf.d/imput.conf:
  file.managed:
    - user: logstash
    - group: logstash
    - mode: '0640'
    - source: salt://logiciels/logstash_6/files/imput.conf.jinja
    - template: jinja
    - require:
      - pkg: logstash
   - watch_in:
      - service: logstash_service

/etc/logstash/conf.d/filter.conf:
  file.managed:
    - user: logstash
    - group: logstash
    - mode: '0640'
    - source: salt://logiciels/logstash_6/files/filter.conf.jinja
    - template: jinja
    - require:
      - pkg: logstash
   - watch_in:
      - service: logstash_service

/etc/logstash/conf.d/output.conf:
  file.managed:
    - user: logstash
    - group: logstash
    - mode: '0640'
    - source: salt://logiciels/logstash_6/files/output.conf.jinja
    - template: jinja
    - require:
      - pkg: logstash
   - watch_in:
      - service: logstash_service

logstash_service:
  service.running:
    - name: logstash
    - enable: True
    - require: 
      - pkg: logstash_pkg
