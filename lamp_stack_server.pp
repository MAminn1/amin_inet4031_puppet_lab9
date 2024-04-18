package { 'apache2':
  ensure => installed,
}
package { 'php':
  ensure => installed,
  notify  => Service['apache2'],
  require => [Package['apache2']],
}
service { 'apache2':
  ensure => running,
  enable => true,
  require => [Package['apache2'], Package['php']]
}
package { 'mysql-server':
  ensure => installed,
}

service { 'mysql':
  ensure => running,
}

package { 'php5':
  ensure => installed,
}


file { '/var/www/html/phpinfo.php':
  source => '/home/amin/amin_inet4031_puppet_lab9/phpinfo.php',
  notify  => Service['apache2'],
  require => [Package['apache2']]
}
