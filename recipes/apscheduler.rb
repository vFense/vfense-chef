git node['vfense']['server']['apscheduler']['tmp_dir'] do
   repository node['vfense']['server']['apscheduler']['repository']['url']
   revision node['vfense']['server']['apscheduler']['repository']['branch']
   action :sync
end

execute 'install apscheduler module' do
  command 'python setup.py install'
  cwd node['vfense']['server']['apscheduler']['tmp_dir']
end
