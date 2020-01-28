class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  
  service {'sshd':
    ensure => running,
    enable => true,
  }
  ssh_authorized_key {'root@pms.lab.local':
    ensure => present,
    user   => 'root' ,
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDSaziwlVlc8F2RpDGufMdLY7+pJDY39Rk9nc7UmilJbaZEjL8Q38dW8kaL+mW8iYUChYYWjX1gaAR5yLRswOM7OLIHgNPNGYz0Hwn4o1jUcjr8Pjn97jabdIEEpTtb9Fla8my406hTSJS+Xed8YtX8ys1wrPUTXx3j12U/jWegVvDRs+h1GKbULywsM1GAa99ICIrYaj2KVULr01y504i8/Zy3EvK8ZEIYFzhfW2MU3cOBB3u4q43w9/v6XFafmO0PgmPdGO/zfcyFqYd4jtvF/NPbUkncmC3R1ffS/eqPjzAvSBmsWSPTrP496wxYu1KwBNGVHo9K5YMqOtdzsdc5',
  }
}
