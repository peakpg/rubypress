require 'rack/cache'
require 'rubypress/route_extensions'

# lib/rubypress/engine.rb
module Rubypress
  class Engine < ::Rails::Engine
    isolate_namespace Rubypress

    # To specify a different engine path, uncomment the following:
    # engine_name "admin"

    config.rubypress = ActiveSupport::OrderedOptions.new  
    config.before_configuration do |app|
      app.config.rubypress.site_name = "A Rubypress Site"
    end
    
    # Engines can specify middleware that will be invoked for 
    # any request that it would handle.
    middleware.use Rack::Cache,
           :verbose => true,
           :metastore   => 'file:tmp/cache/meta',
           :entitystore => 'file:tmp/cache/entity'

    initializer 'rubypress.new_routes', 
        :after => 'action_dispatch.prepare_dispatcher' do |app|
     ActionDispatch::Routing::Mapper.send :include, Rubypress::RouteExtensions
    end
    
    # For starting religous arguments with co-workers
    config.app_generators.test_framework :rspec
    config.app_generators.template_engine :haml
  
  end
end
