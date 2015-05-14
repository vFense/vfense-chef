actions :initialize, :join_cluster, :start, :stop, :restart

state_attrs :password,
            :ignore_vulnerabilities,
            :rqworkers,
            :scheduler,
            :cve_data

attribute :password, :kind_of => String
attribute :ignore_vulnerabilities, :kind_of => [TrueClass, FalseClass], :default => false
attribute :rqworkers, :kind_of => [TrueClass, FalseClass], :default => false
attribute :scheduler, :kind_of => [TrueClass, FalseClass], :default => false
attribute :cve_data, :kind_of => [TrueClass, FalseClass], :default => false

attr_accessor :exists
