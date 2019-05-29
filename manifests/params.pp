# @summary 
#   Stores class parameters
class mysql::params {
  $install_ensure     = 'present'
  $config_ensure      = 'file'
  $service_ensure     = 'running'
  $service_enable     = true
  $service_hasrestart = true
  case $::osfamily {
    'RedHat': {
      $install_name = 'mariadb-server'
      $config_path  = '/etc/my.cnf.d/server.cnf'
      $service_name  = 'mariadb'
    }
    'Debian': {
      $install_name = 'mysql-server-5.7'
      $config_path  = '/etc/mysql/mysql.conf.d/mysqld.cnf'
      $service_name  = 'mysql'
    }
 }
}
