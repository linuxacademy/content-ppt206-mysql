# @summary A short summary of the purpose of this class
#  Configures MySQL daemon file
class mysql::config (
  $config_path   = $mysql::params::config_path,
  $config_ensure = $mysql::params::config_ensure,
) inherits mysql::params {
  file { "${config_path}":
    ensure => $config_ensure,
    source => "puppet:///modules/mysql/${osfamily}.cnf",
    mode   => '0644',
    owner  => 'root',
    group  => 'root',
  }
}
