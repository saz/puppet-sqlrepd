class sqlrepd::install {
    package { $sqlrepd::params::package_name:
        ensure => present,
    }
}
