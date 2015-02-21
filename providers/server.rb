use_inline_resources

def whyrun_supported?
  true
end


action :initialize do
  if ::Dir.exists?(node.vFense.server.base_dir)
    link "#{site_packages_dir}/vFense" do
      to "#{node.vFense.server.base_directory}/vFense"
    end
    link node.vFense.server.vFensed_symlink_path do
      to "#{node.vFense.server.base_directory}/bin/vFensed"
    end
  end
end

action :join_cluster do
end
