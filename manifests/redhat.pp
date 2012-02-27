class augeas::redhat inherits augeas::base {

  include augeas::params

  package { "augeas":
      ensure => $::augeas::params::augeas_version,
      before => File["/usr/share/augeas/lenses/contrib"],
  }

  package { "augeas-libs":
      ensure => $::augeas::params::augeas_version,
      before => File["/usr/share/augeas/lenses/contrib"],
  }
  package { "ruby-augeas":
      ensure => present
  }

}
