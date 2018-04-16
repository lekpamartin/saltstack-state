#Logiciels de base
install_requirements:
  pkg.installed:
    - pkgs:
      - curl
      - net-tools
      - telnet

#Configuration de motd
/etc/motd:
  file.append:
    - text:
      - WARNING : This server is managed by Salt
      - DEVOPS Team

#Creation de /data
/data:
  file.directory:
    - mode: 755
    - makedirs: True
