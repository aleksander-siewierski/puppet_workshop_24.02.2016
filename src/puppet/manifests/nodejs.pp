class { 'nodejs': }

package { 'grunt-cli':
  ensure   => 'present',
  provider => 'npm',
  require  => Class['nodejs'],
}

package { 'mongodb':
  ensure   => 'present',
  provider => 'npm',
 # target   => '~/node_modules',
  require  => Class['nodejs'],
}