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
    - text: |
        WARNING : This server i managed by Salt
        - DEVOPS Team
