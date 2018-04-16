base:

  '*':
    - all.header
    - all.dns

{% import_yaml "/etc/salt/master.d/import_tags/*.yml" as tags %}

#################
# Linux
#################

#Toutes les distributions : 
#  'G@kernel:Linux':
#    - systeme.sudoers

#Les distributions systemd
#  'G@init:systemd':
#    - systeme.chronyd

#Les distributions system V
  'G@init:upstart':
    - systeme.ntpd


#################
# Windows
#################

  'G@os:Windows':
    - systeme.test
