#This executes a command to kill a process named killmenow

exec { 'killmenow':
  command => '/usr/bin/pkill killmenow',
  path    => ['/usr/bin', '/usr/sbin'],
}
