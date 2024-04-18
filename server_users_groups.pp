group { 'group01':
  ensure => present,
}
group { 'group02':
 ensure => present,
}
user { 'user04':
  ensure => present,
  shell => '/bin/bash',
  password => '$6$xyz$RS.wHeM.mhNC0lxrp5Zds0ubSAKobEjpYvIWroBijzmu0tuqfQ1C6iBejYnxrEonuCOM0jgFUF3Dc038gW2.D.',
  groups => 'group01',
  managehome => true,
}
user { 'user05':
  ensure => present,
  shell => '/bin/bash',
  password => '$6$user05$z0kcnxWsBeI0HryYdPlLbbvvI6lqcPIt3go4plcCqapZEPwVYlzw9.DPk8wrf05.XyzRP6WoKkQMKB/oEK3V/0',
  groups => 'group02',
  managehome => true,
}
user { 'user06':
  ensure => present,
  password => '$6$user06$1xsMvBU1DSaTVlSArh2Of3h2/6xSB27HNNB6LwIlcKy8wchHhiFFpatcDSeKQcI5yopOORGXrqMUOcqZP4uXX1',
  groups => ['group01','group02'],
}
user { 'user07':
  ensure => present,
  shell => '/bin/bash',
  password => '$6$user07$xK5YUSpeit8qop.Xv3X7utT3At6yQnur9gZ3oZ46Wed67ZwjCH/uAYprKhYNgLgSAof05pw0mivps5XGL8MyY1',
  #groups => 'group01',
  managehome => true,
}

