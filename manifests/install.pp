# @summary 
#   Installs MySQL
class mysql::install (
  $install_name   = $mysql::params::install_name,
  $install_ensure = $mysql::params::install_ensure,
) inherits mysql::params {
  package { "${install_name}":
    ensure => $install_ensure,
  }
}

