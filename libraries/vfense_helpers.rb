module Vfense
  module Helpers
    include Chef::Mixin::ShellOut

    def site_packages_dir
        output = shell_out!('python -c "import sys;print \',\'.join([f for f in sys.path if f.endswith(\"packages\")])"')
        python_site_directories = output.stdout.chomp.split(",")
        return python_site_directories[-1]
    end


