include_recipe 'vfense::_nginx_ppa'
include_recipe 'vfense::_redis_ppa'
include_recipe 'apt'

node['vfense']['server']['dependencies']['ubuntu'].each do |pkg|
  package pkg do
    action :install
  end
end
