use_inline_resources

def whyrun_supported?
  true
end

def initialize_server
  Chef::Log.info new_resource
  script = "#{node.vfense.server.base_directory}/scripts/initialize_vFense_app.py"
  cmd = "python #{script} --password #{new_resource.password}"
  if new_resource.cve_data
    cmd << " --cve-data"
  else
    cmd << " --no-cve-data"
  end

  execute cmd do
    command cmd
  end
end

def start_server
  cmd = "#{node.vfense.server.vfensed_symlink_path} --start"
  if new_resource.rqworkers
    cmd << " --rq-workers"
  end
  if new_resource.scheduler
    cmd << " --admin-scheduler"
  end
  execute cmd do
    command cmd
  end
end

def stop_server
  cmd = "#{node.vfense.server.vfensed_symlink_path} --stop"
  execute cmd do
    command cmd
  end
end


action :initialize do
  if ::Dir.exists?(node.vfense.server.base_directory)
    link "#{site_packages_dir}/vFense" do
      to "#{node.vfense.server.base_directory}/vFense"
    end
    link node.vfense.server.vfensed_symlink_path do
      to "#{node.vfense.server.base_directory}/bin/vFensed"
    end
    link node.rethinkdb.config_file do
      to "#{node.vfense.server.base_directory}/conf/rethinkdb_vFense.conf"
    end
    initialize_server
    start_server
  end
end

action :join_cluster do
end
