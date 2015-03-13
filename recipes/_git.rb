git node['vfense']['server']['install_directory'] do
  repository node['vfense']['server']['repository']['url']
  revision node['vfense']['server']['repository']['branch']
  action :sync
  user node['vfense']['server']['system']['user']
  group node['vfense']['server']['system']['group']
end

git node['vfense']['ui']['install_directory'] do
  repository node['vfense']['ui']['repository']['url']
  revision node['vfense']['ui']['repository']['branch']
  action :sync
  user node['vfense']['server']['system']['user']
  group node['vfense']['server']['system']['group']
end
