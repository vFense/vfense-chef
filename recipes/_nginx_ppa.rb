apt_repository 'nginx' do
  uri          'ppa:nginx/stable'
  components   ['main']
  distribution node['lsb']['codename']
  keyserver    'keyserver.ubuntu.com'
  key          'C300EE8C'
  action       :add
  notifies     :run, 'execute[apt-get update]', :immediately
end
