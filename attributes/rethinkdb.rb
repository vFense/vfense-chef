normal['rethinkdb']['bind'] = '127.0.0.1'
#normal['rethinkdb']['driver-port'] = 28015
#normal['rethinkdb']['cluster-port'] = '

default["rethinkdb"]["config_file"] = "#{default["rethinkdb"]["config_dir"]}/vFense.conf"
