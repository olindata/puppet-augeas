class augeas::debian inherits augeas::base {

  # the version in Debian Lenny is 0.2.2, which is too old and buggy
  if $::lsbdistcodename == 'lenny' {
    include apt::repo::lennybackports
  }

  package { "augeas-lenses":
    ensure => $::augeas_version,
    before => File["/usr/share/augeas/lenses/contrib"],
  }

  package { "libaugeas0":
    ensure => $::augeas_version,
    before => File["/usr/share/augeas/lenses/contrib"],
  }

  package { "augeas-tools":
    ensure => $::augeas_version,
    before => File["/usr/share/augeas/lenses/contrib"],
  }

  package { "libaugeas-ruby1.8":
    ensure => present
  }

}
