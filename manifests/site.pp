node default {
  file {'/root/readme':
    ensure => file,
    content => 'This is a readme',
  }
}
