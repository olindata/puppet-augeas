class augeas::debian inherits augeas::base {

  include augeas::params

  # the version in Debian Lenny is 0.2.2, which is too old and buggy
  if $::lsbdistcodename == 'lenny' {
    include apt::repo::lennybackports
  }

  package { "augeas-lenses":
    ensure => $::augeas::params::augeas_version,
    before => File["/usr/share/augeas/lenses/contrib"],
  }

  package { "libaugeas0":
    ensure => $::augeas::params::augeas_version,
    before => File["/usr/share/augeas/lenses/contrib"],
  }

  package { "augeas-tools":
    ensure => $::augeas::params::augeas_version,
    before => File["/usr/share/augeas/lenses/contrib"],
  }

  package { "libaugeas-ruby1.8":
    ensure => present
  }

}
