class sqlrepd::config {
    file { $sqlrepd::params::config_file:
        ensure  => present,
        owner   => root,
        group   => root,
        require => Class['sqlrepd::install'],
        notify  => Class['sqlrepd::service'],
        source  => [ 
            "puppet:///files/${fqdn}${sqlrepd::params::config_file}",
            "puppet:///files/${hostgroup}${sqlrepd::params::config_file}",
            "puppet:///files/${domain}${sqlrepd::params::config_file}",
            "puppet:///files/global${sqlrepd::params::config_file}",
        ],
    }
}
