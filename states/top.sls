base:

#  '*':
#    - systeme.snmp


#################
# Linux
#################

#Toutes les distributions : 
#  'G@kernel:Linux':
#    - systeme.hosts

#Les distributions systemd
#  'G@init:systemd':
#    - systeme.chronyd

#Les distributions system V
  'G@init:upstart':
    - systeme.ntpd

# Elasticsearch
  'G@logiciels:elasticsearch_6':
    - logiciels.elasticsearch_6



#################
# Windows
#################

  'G@os:Windows':
    - systeme.test
