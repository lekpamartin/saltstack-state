#Logiciels de base
install_requirements:
  pkg.installed:
    - pkgs:
      - curl
      - net-tools
      - telnet

#Configuration de motd
/etc/motd:
  file.managed:
    - source: salt://systeme/requirements/files/motd.jinja
    - template: jinja

#Creation de /data
/data:
  file.directory:
    - mode: 755
    - makedirs: True

#Configuration de resolv.conf
/etc/resolv.conf:
  file.managed:
    - source: salt://systeme/requirements/files/resolv.conf.jinja
    - template: jinja
