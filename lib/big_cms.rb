module BigCms
  require 'big_cms/service_config'
  
  # Twitter & Facebook app configs
  mattr_accessor :service_configs
  @@service_configs = {}
  
  def self.setup
    yield self
  end
  
  def self.layouts(opts)
    @@service_configs[:layouts] = BigCms::ServiceConfig.new(opts)
  end

  require 'big_cms/engine' if defined?(Rails) && Rails::VERSION::MAJOR >= 3
end
