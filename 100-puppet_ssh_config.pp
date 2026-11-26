#! usr/bin/env bash
#Applying puppet to make sure chnages stay consistent in .ssh/config

file { '/home/chumba_brian369-/.ssh/config':
  ensure  => file,
  content => "Host school\n  HostName 144.217.6.26\n  User briank\n  IdentityFile ~/.ssh/school\n  PasswordAuthentication no\n",
  owner   => 'chumba_brian369-',
  mode    => '0600',
}
