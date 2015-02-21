include_recipe "apt::default"

node["vFense"]["server"]["dependencies"]["ubuntu"].each do |pkg|
  package pkg do
    action :install
  end
end
