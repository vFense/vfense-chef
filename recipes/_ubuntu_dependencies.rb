include_recipe 'apt::default'
include_recipe 'vfense::_nginx_ppa'
include_recipe 'vfense::_redis_ppa'

node['vfense']['server']['dependencies']['ubuntu'].each do |pkg|
  package pkg do
    action :install
  end
end

service "redis-server" do
  supports :status => true, :start => true, :stop => true, :restart => true
  action [:enable, :start]
end

include_recipe "vfense::_redis"
include_recipe "vfense::_nginx"
