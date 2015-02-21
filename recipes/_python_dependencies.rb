include_recipe 'python::default'

node["vFense"]["server"]["dependencies"]["python"].each do |pkg|
  python_pip pkg["name"] do
    action :upgrade
    version pkg["version"]
  end
end
