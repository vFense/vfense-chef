git node["vFense"]["server"]["install_directory"] do
   repository node["vFense"]["server"]["repository"]["url"]
   revision node["vFense"]"server"]["repository"]["branch"]
   action :sync
   user node["vFense"]["server"]["system"]["user"]
   group node["vFense"]["server"]["system"]["group"]
end

git node["vFense"]["ui"]["install_directory"] do
   repository node["vFense"]["ui"]["repository"]["url"]
   revision node["vFense"]"ui"]["repository"]["branch"]
   action :sync
   user node["vFense"]["server"]["system"]["user"]
   group node["vFense"]["server"]["system"]["group"]
end
