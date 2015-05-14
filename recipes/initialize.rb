vfense_server "initialize" do
  password node["vfense"]["server"]["password"]
  rqworkers true
  scheduler true
  cve_data true
  action :initialize
end
