include_recipe 'rethinkdb'
include_recipe 'vfense::_ubuntu_dependencies'
include_recipe "vfense::_redis"
include_recipe "vfense::_nginx"
include_recipe 'vfense::_python_dependencies'
include_recipe 'vfense::configure'
include_recipe 'vfense::initialize'
