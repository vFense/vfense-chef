user node['vfense']['server']['system']['user']

run_user = node['vfense']['server']['system']['user']
run_group = node['vfense']['server']['system']['group']
base_dir = node['vfense']['server']['base_directory']

execute 'chown_vfense' do
  command "chown -R #{run_user}.#{run_group} #{base_dir}"
  action :nothing
end


include_recipe 'vfense::_git'
