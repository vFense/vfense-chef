git node["vFense"]["server"]["apscheduler"]["tmp_dir"] do
   repository node["vFense"]["server"]["apscheduler"]["repository"]["url"]
   revision node["vFense"]["server"]["apsheduler"]["repository"]["branch"]
   action :sync
end

execute "install apscheduler module" do
  command "python setup.py install"
  cwd node["vFense"]["server"]["apscheduler"]["tmp_dir"]
end
