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

user { 'user06':
  ensure => present,
  password => 'user06',
  groups => ['group01','group02'],
}

user { 'user05':
  ensure     => present,
  shell      => '/bin/bash',
  password   => '$6$abc$y5JkKuhGvHgEC1yfs9oW9xZjxKZ1z6kOn4ZsTQqGaSfUDFYFn7DN0Di3m2Wq5F6cDZkAC2hrqAOUzQcLQpyq5!',
  groups     => ['group01'],
  managehome => true,
}

user { 'user07':
  ensure     => present,
  shell      => '/bin/bash',
  password   => '$6$ghi$eD3uvOxt7n6IbUjcBh5PqTzKlB6YkdELp7cO0fRBZhe5jU4m9CPIWyK5UC3SrA38mU7NJvBpQuTOU6T3MH6F1g',
  groups     => ['group02'],
  managehome => true,
}
