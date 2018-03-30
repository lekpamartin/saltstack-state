snmpd:
  pkg:
    - installed
    {% if grains['os_family'] == 'RedHat' %}
    - name: net-snmp
    {% endif %}
  service.running:
    - enable: true
    - watch:
      - file: /etc/snmp/snmpd.conf

/etc/snmp:
  file.directory: []

/etc/snmp/snmpd.conf:
  file.managed:
    - user: root
    - group: root
    - mode: '0640'
    - source: salt://systeme/snmp/files/snmpd.conf.jinja
    - template: jinja
    - require:
      - pkg: snmpd
