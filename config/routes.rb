# config/routes.rb
Rubypress::Engine.routes.draw do
  resources :pages
  root to: 'pages#index'
end
