# this creates a file in tmp/ directory
file { '/tmp/school'
  path  => '/tmp/school/',
  mode  => '0744',
  group => 'www-data',
  owner => 'www-data',
  content => 'I love puppet',
}
