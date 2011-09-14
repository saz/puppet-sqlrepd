class sqlrepd::params {
    case $operatingsystem {
        /(Ubuntu|Debian)/: {
            $package_name = 'sqlrepd'
            $service_name = 'sqlrepd'
            $config_file = '/etc/sqlrepd.cfg'
        }
    }
}
