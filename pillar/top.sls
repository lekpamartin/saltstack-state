base:

  '*':
    - all.header
    - all.dns


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
