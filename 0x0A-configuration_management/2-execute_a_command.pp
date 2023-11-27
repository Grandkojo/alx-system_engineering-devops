#This executes a command to kill a process named killmenow

exec { 'killmenow':
  command => 'usr/bin pkill',
  path    => ['usr/bin/', 'usr/sbin/'],
}
