default['vfense']['server']['username'] = 'global_admin'
default['vfense']['server']['password'] = 'vfense#123'
default['vfense']['server']['vulnerabilities'] = false
default['vfense']['server']['install_directory'] = '/opt'
default['vfense']['server']['base_directory'] = '/opt/vFense'
default['vfense']['server']['directories_to_create'] = '/opt/vFense'

default['vfense']['server']['repository']['url'] = 'https://github.com/vFense/vFense.git'
default['vfense']['server']['repository']['branch'] = 'pre-0.8.1-dev'
default['vfense']['server']['system']['user'] = 'vfense'
default['vfense']['server']['system']['group'] = 'vfense'
default['vfense']['server']['vfensed_symlink_path'] = '/usr/local/bin/vfensed'
