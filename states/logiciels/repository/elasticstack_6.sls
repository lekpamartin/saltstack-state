repo_elasticstack-6.x:
  pkgrepo.managed:
    - name: elasticstack-6.x
    - humanname: Elasticstack repository for 6.x packages
    - baseurl: https://artifacts.elastic.co/packages/6.x/yum
    - gpgkey: https://artifacts.elastic.co/GPG-KEY-elasticsearch
    - gpgcheck: 1
    - enabled: 1
