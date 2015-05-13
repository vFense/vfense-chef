actions :initialize, :join_cluster

state_attrs :username,
            :password,
            :ignore_vulnerabilities

attribute :username, :kind_of => String, :required => true 
attribute :password, :kind_of => String, :required => true
attribute :ignore_vulnerabilities, :kind_of => [TrueClass, FalseClass], :default => false

attr_accessor :exists
