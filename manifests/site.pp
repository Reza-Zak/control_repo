node 'pag.lab.local' {
        package { 'httpd':
                ensure => installed,
        }
        class {'resolv_conf' :
                nameservers => ['192.168.80.2','8.8.8.8','4.2.2.4'],
                domainname  => 'lab.local',
        }
}
node 'pms.lab.local' {
        package { 'openldap-clients':
                ensure => installed,
        }
}
node 'default' {
        include role::base
}
