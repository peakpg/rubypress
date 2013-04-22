# test/dummy/config/routes.rb
Rails.application.routes.draw do
  
  mount Rubypress::Engine => "/rubypress"
  
  # Engines can provide their own DSL for mounting an engine. Uncomment the following
  # use_rubypress

  # To mount an engine under a different path, uncomment the following:
  # mount Rubypress::Engine => "/rubypress", as: "admin"

  root to: "welcome#index"
end
