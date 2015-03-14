service "nginx" do
  supports :status => true, :start => true, :stop => true, :restart => true
  action [:enable, :start]
end
