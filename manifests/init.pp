# @summary 
#   Manages the basic functions of a MySQL server
class mysql (
  $install_name   = $mysql::params::install_name,
  $install_ensure = $mysql::params::install_ensure,
   $config_path   = $mysql::params::config_path,
   $config_ensure = $mysql::params::config_ensure,
   $service_name       = $mysql::params::service_name,
   $service_ensure     = $mysql::params::service_ensure,
   $service_enable     = $mysql::params::service_enable,
   $service_hasrestart = $mysql::params::service_hasrestart,
) inherits mysql::params {
  contain mysql::install
  contain mysql::config
  contain mysql::service

  Class['::mysql::install']
  -> Class['::mysql::config']
  ~> Class['::mysql::service']
}
