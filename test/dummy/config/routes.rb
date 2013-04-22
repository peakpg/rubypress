# test/dummy/config/routes.rb
Rails.application.routes.draw do
  
  mount Rubypress::Engine => "/rubypress"
  
  # To mount an engine under a different path, uncomment the following:
  # mount Rubypress::Engine => "/rubypress", as: "admin"

  root to: "welcome#index"
end
