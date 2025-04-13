  package { 'apache2':
    ensure => installed,
  }

  package { 'php':
    ensure  => installed,
    require => Package['apache2'],
    notify  => Service['apache2'],
  }

  package { 'libapache2-mod-php':
    ensure  => installed,
    require => Package['apache2'],
    notify  => Service['apache2'],
  }

  package { 'php-cli':
    ensure  => installed,
    require => Package['php'],
  }

  package { 'php-mysql':
    ensure  => installed,
    require => Package['php'],
  }

  package { 'mariadb-server':
    ensure => installed,
  }

  service { 'apache2':
    ensure    => running,
    enable    => true,
    require   => [Package['apache2'], Package['php'], Package['libapache2-mod-php']]
  }

file { '/var/www/html/phpinfo.php':
  source => '/home/bpatel/bp_inet4031_puppet_lab9/phpinfo.php',
  notify  => Service['apache2'],
  require => [Package['apache2']]

}
