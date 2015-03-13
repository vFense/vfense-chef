apt_repository 'redis' do
  uri          'ppa:chris-lea/redis-server'
  components   ['main']
  distribution node['lsb']['codename']
  keyserver    'keyserver.ubuntu.com'
  key          'C7917B12'
  action       :add
  notifies     :run, 'execute[apt-get update]', :immediately
end
