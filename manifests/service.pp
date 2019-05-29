# @summary A short summary of the purpose of this class
#   Ensures service is started and enabled and allow for restarts
class mysql::service (
  $service_name       = $mysql::params::service_name,
  $service_ensure     = $mysql::params::service_ensure,
  $service_enable     = $mysql::params::service_enable,
  $service_hasrestart = $mysql::params::service_hasrestart,
) inherits mysql::params {
  service { "${service_name}":
    ensure     => $service_ensure,
    enable     => $service_enable,
    hasrestart => $service_hasrestart,
  }
}
