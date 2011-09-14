class sqlrepd::service {
    service { $sqlrepd::params::service_name:
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => false,
        require    => Class['sqlrepd::config'],
    }
}
