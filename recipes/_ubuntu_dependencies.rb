
node['vfense']['server']['dependencies']['ubuntu'].each do |pkg|
  package pkg do
    action :install
  end
end

include_recipe 'apt'
include_recipe 'vfense::_nginx_ppa'
include_recipe 'vfense::_redis_ppa'


include_recipe "vfense::_redis"
include_recipe "vfense::_nginx"
