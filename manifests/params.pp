class augeas::params {

  $augeas_version = $::augeas_augeas_version ? {
    '' => 'present',
    default => $::augeas_augeas_version
  }

}
