# lib/rubypress/route_extensions.rb
module Rubypress
  module RouteExtensions
    def use_rubypress
      mount Rubypress::Engine => "/rubypress"
      get "help" => "rubypress/help#index" # path -> /help
    end
  end  
end