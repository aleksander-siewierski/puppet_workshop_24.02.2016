
notify { 'output':
    message => 'hello world',
}

include javascript

package { 'ruby-dev':
  ensure => 'installed',
}

file { "/etc/puppet/Puppetfile":
  ensure => present,
  source => "/vagrant/Puppetfile",
}
~>
exec { "gem install librarian-puppet":
  path    => $::path,
  require => Package["ruby-dev"],
}
->
exec { "librarian-puppet update --verbose":
  path      => $::path,
  cwd       => '/etc/puppet/',
  #subscribe => File['/etc/puppet/Puppetfile'],
}
