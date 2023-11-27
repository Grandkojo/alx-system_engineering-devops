# this creates a file in tmp/ directory
file { '/tmp/school':
  ensure  => 'file',
  mode    => '0744',
  group   => 'www-data',
  owner   => 'www-data',
  content => 'I love puppet',
}
