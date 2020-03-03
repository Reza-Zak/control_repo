class profile::base {
  package { ['vim','openldap-clients']:
    ensure => installed,
    }
  class {'resolv_conf':
    nameservers => ['192.168.80.2','4.2.2.4','8.8.8.8'],
    domainname  => 'lab.local',
    }
}
