include_recipe 'apt::default'
include_recipe 'vfense::_nginx_ppa'
include_recipe 'vfense::_redis_ppa'

node['vfense']['server']['dependencies']['ubuntu'].each do |pkg|
  package pkg do
    action :install
  end
end
