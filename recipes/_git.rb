git node['vfense']['server']['base_directory'] do
  repository node['vfense']['server']['repository']['url']
  revision node['vfense']['server']['repository']['branch']
  action :sync
  notifies :run, "execute[chown_vfense]", :immediately
end

git node['vfense']['ui']['base_directory'] do
  repository node['vfense']['ui']['repository']['url']
  revision node['vfense']['ui']['repository']['branch']
  action :sync
  notifies :run, "execute[chown_vfense]", :immediately
end
