# lib/rubypress/engines.rb
module Rubypress
  class Engine < ::Rails::Engine
    isolate_namespace Rubypress

    # To specify a different engine path, uncomment the following:
    # engine_name "admin"
  end
end
