class role::app_server {
  include profile::web
  inlcude profile::base
  include profile::app
}
