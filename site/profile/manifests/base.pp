class profile::base {
  package { 'vim':
    ensure => installed,
    }
  package { 'openldap-clients':
    ensure => installed,
    }
  class {'resovle_conf':
    nameservers => ['192.168.80.2','4.2.2.4','8.8.8.8'],
    domainname  => 'lab.local',
    }
}
