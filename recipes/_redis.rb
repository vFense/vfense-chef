service "redis-server" do
  supports :status => true, :start => true, :stop => true, :restart => true
  action [:enable, :start]
end
